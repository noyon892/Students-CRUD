package students

import grails.converters.JSON

class StudentController {

    def index() {
        [students:Student.list(params)]
    }
    def create(Student student)
    {
        if(params.create=='true')
        {
            student.save()
            redirect(action:"index")
        }
        else
        {
            respond(view:"create")
        }
    }
    def show(Student student)
    {
        [student:student]
    }
    def edit(Student student)
    {
        [student:student]
    }
    def update(Student student)
    {
        student.save(insert:false,update:true)
        redirect(action:"index")
    }
    def delete(Student student)
    {
        student.delete flash: true
        redirect(action: 'index')
    }

    def search() {
        render Student.findAllByNameLike(params.searchText + "%") as JSON
    }
}
