class CreateWelcomeEmails < ActiveRecord::Migration
  def change
    create_table :welcome_emails do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
