# This migration produces errors with PG 9.1 - already run

class AddResetPasswordSentAtToUsers < ActiveRecord::Migration
  def change
    # add_column :users, :reset_password_sent_at, :datetime

  end
end
