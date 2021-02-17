class ChangePhoneNumberName < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :phone_numbe, :phone_number
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
