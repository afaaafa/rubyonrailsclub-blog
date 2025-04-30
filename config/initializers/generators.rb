# frozen_string_literal: true

# Configura para usar primary key do tipo uuid para todos os models criados
Rails.application.config.generators do |generator|
  generator.orm :active_record, primary_key_type: :uuid
end
