# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_918_120_452) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'articles', force: :cascade do |t|
    t.string 'title'
    t.text 'content'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_articles_on_user_id'
  end

  create_table 'budgetisations', force: :cascade do |t|
    t.bigint 'project_id'
    t.bigint 'budget_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['budget_id'], name: 'index_budgetisations_on_budget_id'
    t.index ['project_id'], name: 'index_budgetisations_on_project_id'
  end

  create_table 'budgets', force: :cascade do |t|
    t.string 'amount'
    t.bigint 'project_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['project_id'], name: 'index_budgets_on_project_id'
  end

  create_table 'comments', force: :cascade do |t|
    t.text 'text'
    t.bigint 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_comments_on_user_id'
  end

  create_table 'conversations', force: :cascade do |t|
    t.integer 'recipient_id'
    t.integer 'sender_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[recipient_id sender_id], name: 'index_conversations_on_recipient_id_and_sender_id', unique: true
    t.index ['recipient_id'], name: 'index_conversations_on_recipient_id'
    t.index ['sender_id'], name: 'index_conversations_on_sender_id'
  end

  create_table 'invitations', force: :cascade do |t|
    t.bigint 'user_id'
    t.integer 'friend_id'
    t.boolean 'confirmed', default: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_invitations_on_user_id'
  end

  create_table 'messages', force: :cascade do |t|
    t.text 'body'
    t.bigint 'user_id'
    t.bigint 'conversation_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['conversation_id'], name: 'index_messages_on_conversation_id'
    t.index ['user_id'], name: 'index_messages_on_user_id'
  end

  create_table 'orders', force: :cascade do |t|
    t.bigint 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_orders_on_user_id'
  end

  create_table 'profiles', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.string 'skills'
    t.string 'linkedin_url'
    t.integer 'age'
    t.string 'city'
    t.integer 'user_id'
    t.integer 'sector_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_profiles_on_user_id'
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'description'
    t.string 'files'
    t.text 'title'
    t.string 'sector'
    t.integer 'budget'
    t.string 'city'
    t.string 'profile_needed'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_projects_on_user_id'
  end

  create_table 'sectors', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'name'
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.boolean 'admin', default: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'active_storage_attachments', 'active_storage_blobs', column: 'blob_id'
  add_foreign_key 'articles', 'users'
  add_foreign_key 'budgetisations', 'budgets'
  add_foreign_key 'budgetisations', 'projects'
  add_foreign_key 'budgets', 'projects'
  add_foreign_key 'comments', 'users'
  add_foreign_key 'invitations', 'users'
  add_foreign_key 'messages', 'conversations'
  add_foreign_key 'messages', 'users'
  add_foreign_key 'orders', 'users'
  add_foreign_key 'profiles', 'users'
  add_foreign_key 'projects', 'users'
end
