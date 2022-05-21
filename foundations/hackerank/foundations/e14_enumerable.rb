def rot13(secret_messages)
    # your code here
      secret_messages.map do |string|
          string.tr("A-Za-z", "N-ZA-Mn-za-m")
      end
  end