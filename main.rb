require (
  'gmail_sender'
)
 
require (
 'rbconfig'
 )
###CORE
Amarelo="\033[1;33m";Vermelho="\033[1;31m";Azul="\033[1;34m";Verde="\033[1;32m";Branco="\033[1;37m"

def email(titulo,texto)
  system "clear"
  system "cat banner2| lolcat\n\n"
  print "#{Vermelho}Recomendo que use um email secundário!"
  print "\n#{Branco}Digite seu email: "
  email=gets.chomp
  print "Digite sua senha: "
  senha=gets.chomp
  print "Digite o número do alvo Ex: +55(11)999999): "
  numero=gets.chomp
  quantidade=""
  while quantidade.class != Integer do
    system "clear"
    system "cat banner2 | lolcat"
    print "#{Verde}\n\n----------------\nE-mail:"+email+"\nSenha:"+senha+"\nAlvo:"+numero+"\n----------------\n\n#{Amarelo}Recomendo que não envie mais de 50 e-mails de uma vez!\n#{Vermelho}Digite a quantidade de emails para a serem enviados:"
    quantidade = gets.chomp.to_i
    system "clear"
    system "cat banner4 | lolcat"
  end
  begin
    for _ in 1..quantidade do
print "\n\n#{Vermelho}[ * ] Enviando email...."
      GmailSender.new(
        email,
        senha
      ).send(
        :to=>"support@support.whatsapp.com",
        :subject=>titulo,
        :content=>texto+numero
      )
      puts "\n#{Verde}Enviado!!!"
    end
puts "\n#{Verde}E-mails Enviados ao suporte do WhatsApp!!"
  rescue Exception
    puts "#{Vermelho}Permissão de Apps menos seguros não ativado e/ou Email/Senha inválido(s)!"
  end
end

Sair=false
while Sair==false do
  system "clear"
  system "cat banner | lolcat"
  print "\n"
system "cat options.txt | lolcat"
  print "╰┈ >> "
  option = gets.chomp
  case option
when "1"
    email("Desative este número.","Olá,perdi todos os meus documentos e o meu chip foi roubado. Peço que desativem minha conta imediatamente, no chip há dados sobre mim por isso peço que desativem, meu número imediatamente:")
when "2"
    email("Desative este número.","Solicito a desativação da minha conta do WhatsApp, meu número é ")
  when "3"
    email("Desative este número.","Pedófila e abuso sexual , peço banimento desse número ao suporte Whatsapp, ele está envolvido com grupos de pedófilia da deep web , peço que ajudem nisso pois meu filho foi vítima. Número: ")
  when "4"
    email("Desative este número.","偷⾛了我的⼿机和我所有的宝⻉，请⽴即禁⽌我的帐⼾")
    when "5"
    email("Desative este número.","Olá , eu gostaria de desativar meu número do WhatsApp porque eu estou migrando para o telegram, Meu número:")
when "6"
    email("Meu número foi banido injustamente.","Nossa! Eu estava trabalhando e de repente minha conta do WhatsApp foi banida, preciso que reativem ela, pois é minha conta de trabalho. Meu número: ")
  when "7"
    email("Meu número foi banido injustamente.","Meu numero foi banido, utilizo ele para falar com meus amigos e familia. Além de falar com meus clientes, e estou sendo prejudicado perdendo vendas")
  when "8"
    email("Meu número foi banido injustamente.","Olá, eu comprei um número número para meu filho fazer os trabalhos da escola em qual ele estuda , porém quando fui tentar entrar , estava dizendo que o número foi banido e eu nem sequer entrei no número, não fiz nada eu ja comprei o número e ele ja estava assim, ele precisa urgentemente desse número para fazer os trabalhos da escola.Verifiquem o maís rápido possível! NÚMERO:")
    when "9"
    email("Meu número foi banido injustamente.","Meu número , foi banido do whatsapp injustamente e tenho provas pra mostrar que o banimento foi um erro do sistema. Número:")
when "C"
system "clear"
system "cat banner3 | lolcat"
print "\n#{Branco}Codado por: Fresh\nGitHub: FreshPhp\nWebSite: https://fresh-apis.herokuapp.com\nWhatsApp: (15) 98817-1796 "
  null=gets.chomp
when "A"
system "clear"
system "bash update.sh"
when "S"
    Sair=true
  end
end

system "clear"
puts "{Azul}Bye...\nVisite: fresh-apis.herokuapp.com"
