class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  ## Confirmable
  # field :confirmation_token,   type: String
  # field :confirmed_at,         type: Time
  # field :confirmation_sent_at, type: Time
  # field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time
  include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps

    field   :first_name,                   		type: String
    field   :middle_name,                  		type: String
    field   :last_name,                    		type: String
    field   :contact_number,					type: Integer
    field   :date_of_birth,						type: Date
    field   :email_verified,     				type: Boolean                      
    field   :contact_number_verified,           type: Boolean       
    field   :otp,								type: Integer
    field   :registered_on,						type: DateTime
    field   :last_signed_on,					type: DateTime
    field   :active,							type: Boolean                                   
    field   :role,								type: Integer                                                     
    field   :gender,							type: Integer
    field   :created_at,    					type: DateTime                                           
    field   :updated_at,                        type: DateTime                       
    field   :confirmation_token,				type: String
    field   :confirmed_at,						type: DateTime
    field   :confirmation_sent_at,				type: DateTime
    field   :invitation_token,					type: String
    field   :invitation_created_at,				type: DateTime
    field   :invitation_sent_at,				type: DateTime
    field   :invitation_accepted_at,			type: DateTime
    field   :invitation_limit,					type: Integer
    field   :invited_by_id,						type: Integer
    field   :invited_by_type,					type: String
    field   :invitations_count,                 type: Integer       
    field   :provider,							type: String
    field   :otp_verified_mobile,               type: String       
    field   :system_user_id,					type: Integer
    field   :user_type,							type: Integer
    field   :registration_source,				type: String
    field   :auth_token,						type: String
    field   :fb_uid,							type: String
    field   :fb_access_token,					type: String
    field   :unique_session_id,            		type: String
    field   :mfa_secret,						type: String	
    field   :enable_2_factor,                   type: Boolean       
    field   :remember_two_factor,				type: DateTime	
    field   :theme,                             type: Integer  
    field   :is_active,                         type: Boolean       
    field   :registered_by_id,					type: Integer
    field   :engaged_by_id,						type: Integer
end
