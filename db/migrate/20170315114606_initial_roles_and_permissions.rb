class InitialRolesAndPermissions < ActiveRecord::Migration[5.0]
  def change
    u = User.create(email: 'ashishagrawal979@gmail.com', password: '12345678')
    r = Role.create(name: 'admin', uuid: :super_admin, description: 'Super admin')
    u.roles << r
    Permission.create(action: :index, subject_class: 'Home', description: 'View home')
  end
end
