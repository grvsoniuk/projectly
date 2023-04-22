module JobsHelper
    def background_color_for_status(status)
        Job::COLOR_CODE[status]
    end

    def get_show_width(action)
        if action == "show"
            ""
        else
            "col-3"
        end
    end

    def get_audits_by_job(job)
        query = "SELECT * FROM audits WHERE (auditable_type='Job' AND auditable_id=#{job.id}) OR (auditable_type='Comment' AND auditable_id IN (SELECT id FROM comments WHERE job_id=#{job.id})) ORDER BY created_at ASC"
        Audited::Audit.find_by_sql(query)
    end
end
