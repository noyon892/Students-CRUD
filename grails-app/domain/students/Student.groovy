package students

class Student {
    String studentId
    String name
    static constraints = {
    }
    static mapping = {
        table 'student'
        studentId column: 'studentid'
        name column: 'name'
        version false
    }
}
