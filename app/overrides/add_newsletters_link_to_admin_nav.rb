Deface::Override.new(
                    :virtual_path => "admin/modules/_main_menu",
                    :name => "add_newsletters_link_to_admin_nav",
                    :insert_after => "[data-naturesoft-hook='main_nav']",
                    :partial => "overrides/admin_newsletters_link",
                    :namespaced => true,
                    :original => 'f5fe48b6dc6986328e0b873b3ffa1b228dd52a7c')