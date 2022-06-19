package assignment_curd

class Department {

     String name
     String courses
     static  hasMany = [students: Student]

     static constraints = {
        name size: 1..40
        courses size: 1..30
    }

    String toString() {
        name
    }
}
