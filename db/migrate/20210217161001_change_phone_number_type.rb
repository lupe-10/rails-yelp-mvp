class ChangePhoneNumberType < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :phone_numbe, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
