class AddNewsletterEnabledToNaturesoftUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :naturesoft_users, :newsletter_enabled, :boolean, default: true
  end
end
