#created by markvortman
#bundle exec ruby main.rb - star
require 'telegram/bot'
require './options.rb'




Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|
		case message.text
		when '/start', '/start start'
			bot.api.send_message(
				chat_id: message.chat.id,
				text: "Здравствуй, #{message.from.first_name}"
				)
		else
		    bot.api.send_message(
		    	chat_id: message.chat.id,
		    	text: ANSWERS.sample)
		end
	end
end
