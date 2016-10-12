module PartyGoer
  def initialize
    @consumed = 0
  end

  def drink
    @consumed += 1
    if @consumed >= 4
      return false
    end
    return true
  end

  def sing
        "Bow bow bow...

        (Um, do that again)

        Bow bow bow...

        Have you ever heard of a wish sandwich? A wish sandwich is the kind of a
        sandwich where you have two slices of bread and you, hee hee hee, wish you
        had some meat...

        Bow bow bow...

        Ummm... the other day I had a ricochet biscuit. A ricochet biscuit is the
        kind of a biscuit that's supposed to bounce back off the wall into your
        mouth. If it don't bounce back, hee hee hee,... you go hungry!

        Bow bow bow...

        Umm, umm, umm... the other day I had a cool water sandwich and a Sunday-go-
        to-meetin' bun...

        Bow bow bow...

        Hee hee hee hee... What da ya want for nothing? ... a rrrrrrrrubber biscuit?

        Bow bow oooh ooh oooh oooooooo-waaaaaaaah..."
  end

  def cause_havoc
    raise PersonalizedHavocError
  end

  def invited?
    true
  end

  def self.included(base)
    base.extend(PartyGoer)
  end
end

class PersonalizedHavocError < StandardError
  def message
    "I've been Geoffrey'd! I need to stroke the furry wall!"
  end
end
