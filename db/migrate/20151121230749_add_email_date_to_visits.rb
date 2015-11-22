class AddEmailDateToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :email_date, :datetime
  end
end
