# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131118155127) do

  create_table "accounts_billingaddress", force: true do |t|
    t.integer "profile_id",                 null: false
    t.text    "billing_address",            null: false
    t.string  "city",            limit: 50, null: false
    t.string  "country",         limit: 50, null: false
    t.string  "postal_code",     limit: 50, null: false
  end

  add_index "accounts_billingaddress", ["profile_id"], name: "accounts_billingaddress_profile_id", using: :btree

  create_table "accounts_carddetails", force: true do |t|
    t.integer "profile_id",                  null: false
    t.string  "firstname",        limit: 50, null: false
    t.string  "lastname",         limit: 50, null: false
    t.string  "card_number",      limit: 25, null: false
    t.string  "expiration_month", limit: 4,  null: false
    t.string  "expiration_year",  limit: 4,  null: false
    t.string  "card_cvn",         limit: 4,  null: false
  end

  add_index "accounts_carddetails", ["profile_id"], name: "accounts_carddetails_profile_id", using: :btree

  create_table "accounts_myprofile", force: true do |t|
    t.string  "mugshot",    limit: 100, null: false
    t.string  "privacy",    limit: 15,  null: false
    t.integer "user_id",                null: false
    t.integer "gender",     limit: 2,   null: false
    t.string  "website",    limit: 200, null: false
    t.string  "location",               null: false
    t.date    "birth_date"
    t.text    "bio",                    null: false
  end

  add_index "accounts_myprofile", ["user_id"], name: "accounts_myprofile_user_id_key", unique: true, using: :btree

  create_table "ajax_upload_uploadedfile", force: true do |t|
    t.datetime "creation_date", null: false
    t.string   "file",          null: false
  end

  create_table "attendees", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "github"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "interests"
    t.string   "specialty"
    t.text     "expectation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  add_index "attendees", ["email"], name: "index_attendees_on_email", unique: true, using: :btree

  create_table "auth_group", force: true do |t|
    t.string "name", limit: 80, null: false
  end

  add_index "auth_group", ["name"], name: "auth_group_name_key", unique: true, using: :btree
  add_index "auth_group", ["name"], name: "auth_group_name_like", using: :btree

  create_table "auth_group_permissions", force: true do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_group_permissions", ["group_id", "permission_id"], name: "auth_group_permissions_group_id_permission_id_key", unique: true, using: :btree
  add_index "auth_group_permissions", ["group_id"], name: "auth_group_permissions_group_id", using: :btree
  add_index "auth_group_permissions", ["permission_id"], name: "auth_group_permissions_permission_id", using: :btree

  create_table "auth_permission", force: true do |t|
    t.string  "name",            limit: 50,  null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
  end

  add_index "auth_permission", ["content_type_id", "codename"], name: "auth_permission_content_type_id_codename_key", unique: true, using: :btree
  add_index "auth_permission", ["content_type_id"], name: "auth_permission_content_type_id", using: :btree

  create_table "auth_user", force: true do |t|
    t.string   "password",     limit: 128, null: false
    t.datetime "last_login",               null: false
    t.boolean  "is_superuser",             null: false
    t.string   "username",     limit: 30,  null: false
    t.string   "first_name",   limit: 30,  null: false
    t.string   "last_name",    limit: 30,  null: false
    t.string   "email",        limit: 75,  null: false
    t.boolean  "is_staff",                 null: false
    t.boolean  "is_active",                null: false
    t.datetime "date_joined",              null: false
  end

  add_index "auth_user", ["username"], name: "auth_user_username_key", unique: true, using: :btree
  add_index "auth_user", ["username"], name: "auth_user_username_like", using: :btree

  create_table "auth_user_groups", force: true do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
  end

  add_index "auth_user_groups", ["group_id"], name: "auth_user_groups_group_id", using: :btree
  add_index "auth_user_groups", ["user_id", "group_id"], name: "auth_user_groups_user_id_group_id_key", unique: true, using: :btree
  add_index "auth_user_groups", ["user_id"], name: "auth_user_groups_user_id", using: :btree

  create_table "auth_user_user_permissions", force: true do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_user_user_permissions", ["permission_id"], name: "auth_user_user_permissions_permission_id", using: :btree
  add_index "auth_user_user_permissions", ["user_id", "permission_id"], name: "auth_user_user_permissions_user_id_permission_id_key", unique: true, using: :btree
  add_index "auth_user_user_permissions", ["user_id"], name: "auth_user_user_permissions_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.string   "commenter_name"
    t.string   "commenter_website"
    t.string   "comment_body"
    t.integer  "title_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["title_id"], name: "index_comments_on_title_id", using: :btree

  create_table "django_admin_log", force: true do |t|
    t.datetime "action_time",                 null: false
    t.integer  "user_id",                     null: false
    t.integer  "content_type_id"
    t.text     "object_id"
    t.string   "object_repr",     limit: 200, null: false
    t.integer  "action_flag",     limit: 2,   null: false
    t.text     "change_message",              null: false
  end

  add_index "django_admin_log", ["content_type_id"], name: "django_admin_log_content_type_id", using: :btree
  add_index "django_admin_log", ["user_id"], name: "django_admin_log_user_id", using: :btree

  create_table "django_comment_flags", force: true do |t|
    t.integer  "user_id",               null: false
    t.integer  "comment_id",            null: false
    t.string   "flag",       limit: 30, null: false
    t.datetime "flag_date",             null: false
  end

  add_index "django_comment_flags", ["comment_id"], name: "django_comment_flags_comment_id", using: :btree
  add_index "django_comment_flags", ["flag"], name: "django_comment_flags_flag", using: :btree
  add_index "django_comment_flags", ["flag"], name: "django_comment_flags_flag_like", using: :btree
  add_index "django_comment_flags", ["user_id", "comment_id", "flag"], name: "django_comment_flags_user_id_comment_id_flag_key", unique: true, using: :btree
  add_index "django_comment_flags", ["user_id"], name: "django_comment_flags_user_id", using: :btree

  create_table "django_comments", force: true do |t|
    t.integer  "content_type_id",             null: false
    t.text     "object_pk",                   null: false
    t.integer  "site_id",                     null: false
    t.integer  "user_id"
    t.string   "user_name",       limit: 50,  null: false
    t.string   "user_email",      limit: 75,  null: false
    t.string   "user_url",        limit: 200, null: false
    t.text     "comment",                     null: false
    t.datetime "submit_date",                 null: false
    t.inet     "ip_address"
    t.boolean  "is_public",                   null: false
    t.boolean  "is_removed",                  null: false
  end

  add_index "django_comments", ["content_type_id"], name: "django_comments_content_type_id", using: :btree
  add_index "django_comments", ["site_id"], name: "django_comments_site_id", using: :btree
  add_index "django_comments", ["user_id"], name: "django_comments_user_id", using: :btree

  create_table "django_content_type", force: true do |t|
    t.string "name",      limit: 100, null: false
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
  end

  add_index "django_content_type", ["app_label", "model"], name: "django_content_type_app_label_model_key", unique: true, using: :btree

  create_table "django_session", id: false, force: true do |t|
    t.string   "session_key",  limit: 40, null: false
    t.text     "session_data",            null: false
    t.datetime "expire_date",             null: false
  end

  add_index "django_session", ["expire_date"], name: "django_session_expire_date", using: :btree
  add_index "django_session", ["session_key"], name: "django_session_session_key_like", using: :btree

  create_table "django_site", force: true do |t|
    t.string "domain", limit: 100, null: false
    t.string "name",   limit: 50,  null: false
  end

  create_table "easy_thumbnails_source", force: true do |t|
    t.string   "name",                    null: false
    t.datetime "modified",                null: false
    t.string   "storage_hash", limit: 40, null: false
  end

  add_index "easy_thumbnails_source", ["name", "storage_hash"], name: "easy_thumbnails_source_name_7549c98cc6dd6969_uniq", unique: true, using: :btree
  add_index "easy_thumbnails_source", ["name"], name: "easy_thumbnails_source_name", using: :btree
  add_index "easy_thumbnails_source", ["storage_hash"], name: "easy_thumbnails_source_storage_hash", using: :btree

  create_table "easy_thumbnails_thumbnail", force: true do |t|
    t.string   "name",                    null: false
    t.datetime "modified",                null: false
    t.integer  "source_id",               null: false
    t.string   "storage_hash", limit: 40, null: false
  end

  add_index "easy_thumbnails_thumbnail", ["name"], name: "easy_thumbnails_thumbnail_name", using: :btree
  add_index "easy_thumbnails_thumbnail", ["source_id", "name", "storage_hash"], name: "easy_thumbnails_thumbnail_source_id_1f50d53db8191480_uniq", unique: true, using: :btree
  add_index "easy_thumbnails_thumbnail", ["source_id"], name: "easy_thumbnails_thumbnail_source_id", using: :btree
  add_index "easy_thumbnails_thumbnail", ["storage_hash"], name: "easy_thumbnails_thumbnail_storage_hash", using: :btree

  create_table "guardian_groupobjectpermission", force: true do |t|
    t.integer "permission_id",   null: false
    t.integer "content_type_id", null: false
    t.integer "group_id",        null: false
    t.string  "object_pk",       null: false
  end

  add_index "guardian_groupobjectpermission", ["content_type_id"], name: "guardian_groupobjectpermission_content_type_id", using: :btree
  add_index "guardian_groupobjectpermission", ["group_id"], name: "guardian_groupobjectpermission_group_id", using: :btree
  add_index "guardian_groupobjectpermission", ["object_pk", "group_id", "content_type_id", "permission_id"], name: "guardian_groupobjectpermission_object_pk_1496f467edd78b17_uniq", unique: true, using: :btree
  add_index "guardian_groupobjectpermission", ["permission_id"], name: "guardian_groupobjectpermission_permission_id", using: :btree

  create_table "guardian_userobjectpermission", force: true do |t|
    t.integer "permission_id",   null: false
    t.integer "content_type_id", null: false
    t.integer "user_id",         null: false
    t.string  "object_pk",       null: false
  end

  add_index "guardian_userobjectpermission", ["content_type_id"], name: "guardian_userobjectpermission_content_type_id", using: :btree
  add_index "guardian_userobjectpermission", ["object_pk", "user_id", "content_type_id", "permission_id"], name: "guardian_userobjectpermission_object_pk_4a3e38372084f8ff_uniq", unique: true, using: :btree
  add_index "guardian_userobjectpermission", ["permission_id"], name: "guardian_userobjectpermission_permission_id", using: :btree
  add_index "guardian_userobjectpermission", ["user_id"], name: "guardian_userobjectpermission_user_id", using: :btree

  create_table "hackers", force: true do |t|
    t.string   "name"
    t.string   "github"
    t.string   "twitter"
    t.string   "email"
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hackers", ["email"], name: "index_hackers_on_email", unique: true, using: :btree

  create_table "social_auth_association", force: true do |t|
    t.string  "server_url",            null: false
    t.string  "handle",                null: false
    t.string  "secret",                null: false
    t.integer "issued",                null: false
    t.integer "lifetime",              null: false
    t.string  "assoc_type", limit: 64, null: false
  end

  add_index "social_auth_association", ["handle", "server_url"], name: "social_auth_association_handle_693a924207fa6ae_uniq", unique: true, using: :btree
  add_index "social_auth_association", ["issued"], name: "social_auth_association_issued", using: :btree

  create_table "social_auth_nonce", force: true do |t|
    t.string  "server_url",            null: false
    t.integer "timestamp",             null: false
    t.string  "salt",       limit: 40, null: false
  end

  add_index "social_auth_nonce", ["timestamp", "salt", "server_url"], name: "social_auth_nonce_timestamp_3833ba21ef52524a_uniq", unique: true, using: :btree
  add_index "social_auth_nonce", ["timestamp"], name: "social_auth_nonce_timestamp", using: :btree

  create_table "social_auth_usersocialauth", force: true do |t|
    t.integer "user_id",               null: false
    t.string  "provider",   limit: 32, null: false
    t.string  "uid",                   null: false
    t.text    "extra_data",            null: false
  end

  add_index "social_auth_usersocialauth", ["provider", "uid"], name: "social_auth_usersocialauth_provider_2f763109e2c4a1fb_uniq", unique: true, using: :btree
  add_index "social_auth_usersocialauth", ["user_id"], name: "social_auth_usersocialauth_user_id", using: :btree

  create_table "south_migrationhistory", force: true do |t|
    t.string   "app_name",  null: false
    t.string   "migration", null: false
    t.datetime "applied",   null: false
  end

  create_table "startups", force: true do |t|
    t.string   "name"
    t.string   "ceo"
    t.string   "location"
    t.integer  "founding_year"
    t.string   "website"
    t.string   "twitter"
    t.string   "email"
    t.string   "github"
    t.string   "product"
    t.string   "product_tagline"
    t.text     "product_description"
    t.text     "technologies"
    t.string   "logo"
    t.text     "ceo_bio"
    t.string   "facebook"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
    t.string   "salt"
  end

  create_table "thank_you_lists", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "titles", force: true do |t|
    t.string   "title"
    t.string   "submitter_name"
    t.string   "submitter_email"
    t.text     "relevance"
    t.integer  "difficulty_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trucfund_backer", force: true do |t|
    t.integer  "project_id",    null: false
    t.integer  "profile_id",    null: false
    t.integer  "pledge_amount", null: false
    t.datetime "pledge_date",   null: false
    t.integer  "reward_id"
  end

  add_index "trucfund_backer", ["profile_id"], name: "trucfund_backer_profile_id", using: :btree
  add_index "trucfund_backer", ["project_id"], name: "trucfund_backer_project_id", using: :btree
  add_index "trucfund_backer", ["reward_id"], name: "trucfund_backer_reward_id", using: :btree

  create_table "trucfund_bankaccount", force: true do |t|
    t.integer "project_id",                      null: false
    t.integer "profile_id",                      null: false
    t.string  "account_holder_name", limit: 150, null: false
    t.string  "account_number",      limit: 25,  null: false
    t.string  "bank_name",           limit: 150, null: false
    t.string  "location",            limit: 50,  null: false
  end

  add_index "trucfund_bankaccount", ["profile_id"], name: "trucfund_bankaccount_profile_id", using: :btree
  add_index "trucfund_bankaccount", ["project_id"], name: "trucfund_bankaccount_project_id", using: :btree

  create_table "trucfund_comment", force: true do |t|
    t.integer  "project_id",   null: false
    t.integer  "profile_id",   null: false
    t.text     "content",      null: false
    t.datetime "date_created", null: false
  end

  add_index "trucfund_comment", ["profile_id"], name: "trucfund_comment_profile_id", using: :btree
  add_index "trucfund_comment", ["project_id"], name: "trucfund_comment_project_id", using: :btree

  create_table "trucfund_feedback", force: true do |t|
    t.string   "feedback_email", limit: 75, null: false
    t.string   "feedback_title", limit: 25, null: false
    t.string   "feedback_type",  limit: 25, null: false
    t.text     "feedback_text",             null: false
    t.datetime "post_date",                 null: false
  end

  create_table "trucfund_file", force: true do |t|
    t.string   "upload",       limit: 100, null: false
    t.datetime "date_created",             null: false
    t.boolean  "is_image",                 null: false
  end

  create_table "trucfund_milestone", force: true do |t|
    t.integer "project_id",              null: false
    t.text    "description",             null: false
    t.string  "status",      limit: 20,  null: false
    t.string  "title",       limit: 100
  end

  add_index "trucfund_milestone", ["project_id"], name: "trucfund_milestone_project_id", using: :btree

  create_table "trucfund_payment", force: true do |t|
    t.integer "project_id",                null: false
    t.integer "profile_id",                null: false
    t.string  "name",           limit: 50, null: false
    t.string  "account_number", limit: 12, null: false
  end

  add_index "trucfund_payment", ["profile_id"], name: "trucfund_payment_profile_id", using: :btree
  add_index "trucfund_payment", ["project_id"], name: "trucfund_payment_project_id", using: :btree

  create_table "trucfund_project", force: true do |t|
    t.integer "profile_id",              null: false
    t.string  "name",        limit: 100, null: false
    t.integer "goal",                    null: false
    t.string  "currency",    limit: 10,  null: false
    t.integer "duration",                null: false
    t.date    "start_date",              null: false
    t.date    "end_date",                null: false
    t.text    "blockers",                null: false
    t.string  "category",    limit: 20,  null: false
    t.text    "description",             null: false
    t.string  "tag_line",    limit: 140, null: false
    t.string  "image",                   null: false
    t.string  "slug",                    null: false
    t.string  "city",        limit: 50,  null: false
    t.string  "country",     limit: 50,  null: false
    t.boolean "approved",                null: false
    t.string  "video",       limit: 100
  end

  add_index "trucfund_project", ["profile_id"], name: "trucfund_project_profile_id", using: :btree

  create_table "trucfund_reward", force: true do |t|
    t.integer "project_id",    null: false
    t.integer "amount",        null: false
    t.text    "description",   null: false
    t.integer "total",         null: false
    t.date    "delivery_date", null: false
  end

  add_index "trucfund_reward", ["project_id"], name: "trucfund_reward_project_id", using: :btree

  create_table "trucfund_updates", force: true do |t|
    t.integer  "project_id",   null: false
    t.integer  "profile_id",   null: false
    t.text     "content",      null: false
    t.datetime "date_created", null: false
  end

  add_index "trucfund_updates", ["profile_id"], name: "trucfund_updates_profile_id", using: :btree
  add_index "trucfund_updates", ["project_id"], name: "trucfund_updates_project_id", using: :btree

  create_table "userena_userenasignup", force: true do |t|
    t.integer  "user_id",                                   null: false
    t.datetime "last_active"
    t.string   "activation_key",                 limit: 40, null: false
    t.boolean  "activation_notification_send",              null: false
    t.string   "email_unconfirmed",              limit: 75, null: false
    t.string   "email_confirmation_key",         limit: 40, null: false
    t.datetime "email_confirmation_key_created"
  end

  add_index "userena_userenasignup", ["user_id"], name: "userena_userenasignup_user_id_key", unique: true, using: :btree

  create_table "volunteers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "github"
    t.string   "twitter"
    t.string   "website"
    t.string   "feedback"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "volunteers", ["email_address"], name: "index_volunteers_on_email_address", unique: true, using: :btree

end
