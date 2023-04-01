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
end
