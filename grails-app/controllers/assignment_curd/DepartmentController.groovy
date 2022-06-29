package assignment_curd

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import grails.web.servlet.mvc.GrailsParameterMap

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_USER'])
class DepartmentController {

        DepartmentService departmentService

        static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        def response = list(params)
        [departmentList: response.list, total:response.count]
    }

        def show(Long id) {
            respond departmentService.get(id)
        }

    def create() {
            respond new Department(params)
        }

        def save(Department department) {
            if (department == null) {
                notFound()
                return
            }

            try {
                departmentService.save(department)
            } catch (ValidationException e) {
                respond department.errors, view: 'create'
                return
            }

            request.withFormat {
                form multipartForm {
                    flash.message = message(code: 'default.created.message', args: [message(code: 'department.label', default: 'Department'), department.id])
                    redirect department
                }
                '*' { respond department, [status: CREATED] }
            }
        }

    def getById(Serializable id) {
        return Department.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Department> departmentList = Department.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: departmentList, count: Department.count()]
    }

        def edit(Long id) {
            respond departmentService.get(id)
        }

        def update(Department department) {
            if (department == null) {
                notFound()
                return
            }

            try {
                departmentService.save(department)
            } catch (ValidationException e) {
                respond department.errors, view: 'edit'
                return
            }

            request.withFormat {
                form multipartForm {
                    flash.message = message(code: 'default.updated.message', args: [message(code: 'department.label', default: 'Department'), department.id])
                    redirect department
                }
                '*' { respond department, [status: OK] }
            }
        }

        def delete(Long id) {
            if (id == null) {
                notFound()
                return
            }

            departmentService.delete(id)

            request.withFormat {
                form multipartForm {
                    flash.message = message(code: 'default.deleted.message', args: [message(code: 'department.label', default: 'Department'), id])
                    redirect action: "index", method: "GET"
                }
                '*' { render status: NO_CONTENT }
            }
        }

        protected void notFound() {
            request.withFormat {
                form multipartForm {
                    flash.message = message(code: 'default.not.found.message', args: [message(code: 'department.label', default: 'Department'), params.id])
                    redirect action: "index", method: "GET"
                }
                '*' { render status: NOT_FOUND }
            }
        }
    }
