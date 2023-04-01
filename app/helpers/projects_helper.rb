module ProjectsHelper
    def background_color_for_status(status)
        Project::COLOR_CODE[status]
    end

    def get_show_width(action)
        if action == "show"
            ""
        else
            "col-3"
        end
    end

    def get_audits_by_project(project)
        query = "SELECT * FROM audits WHERE (auditable_type='Project' AND auditable_id=#{project.id}) OR (auditable_type='Comment' AND auditable_id IN (SELECT id FROM comments WHERE project_id=#{project.id})) ORDER BY created_at ASC"
        Audited::Audit.find_by_sql(query)
    end
end
