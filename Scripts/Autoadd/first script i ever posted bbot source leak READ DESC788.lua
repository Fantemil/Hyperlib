local COLOR = 1
local COLOR1 = 2
local COLOR2 = 3
local COMBOBOX = 4
local TOGGLE = 5
local KEYBIND = 6
local DROPBOX = 7
local COLORPICKER = 8
local DOUBLE_COLORPICKERS = 9
local SLIDER = 10
local BUTTON = 11
local LIST = 12
local IMAGE = 13
local TEXTBOX = 14

if not BBOT then
	BBOT = { username = "dev" }
end
local menu

local MenuName = isfile("bitchbot/menuname.txt") and readfile("bitchbot/menuname.txt") or nil
local loadstart = tick()

local customChatSpam = {}
local customKillSay = {}
local placeholderImage = "iVBORw0KGgoAAAANSUhEUgAAAJYAAACWCAYAAAA8AXHiAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAJOgAACToAYJjBRwAADAPSURBVHhe7Z0HeFRV+sZDCyEJCQRICJA6k4plddddXf/KLrgurg1EXcXdZV0bVlCqDRQVAQstNKVJ0QVcAelIDz0UaSGBQChJII10Orz/9ztzJ5kk00lC2vs833NTZs69c85vvvOdc8/5rgvqVa9KUD1Y9aoU1YNVr0pRPVj1qhTVg1WvSlE9WPWqFNWDZUaFubk4sf8g9q5egw2zv8eKid/g5y9GY9HIr7FkzASsmjwVWxcsxMFNsUhPPqG9q16mqrNgpRxJwtKxEzFhQD+8fV8nPOzqiXtdXPBMx2gM/HMnjHm6B/7bsxfWvPk24t4fggOEKjFmMo5OnoKjM2ZiPy1u5iys/m425nw5FuMHD8Lc0ePx/Vdj8MOnIzC93yDsWb5KO1vdU50Ba93MOfj6tVfRw8sP0QToWdpnLk0wr4k3dvkG4Pzv7wVuuwvwaosrnn4436w1Cpq1Qp57a+TymOvmg5ymLXHOlcb35DRqjtwGHshzcaM1Rl7zNii6615cffFVXKV3w4qVSN2zGz9O+w7zYyZh8aRv8MPQYSjKy9euqHar1oKVknAEE/v2RTf3VriTEA12aYiFbq2Q7BcMhEYDQZG4FBCOwvZ65LXTI9svBFn+ocji72LZ9liHsBJjGVm+wchq2R5ZhDPL1RvZLk2Rw/MW/t+fceWjT4E9e7Bl7TosmDgF80d9ja3z/6ddbe1TrQIrKzUVY3u/hD8QpB60mU1a4GRbghQSjStB4cgPDMO5gDBkdtAjM0AsDFkClTloKsI06LJ8g5Dl3RaZDT0JmwsK/tgJ1whXXkoK5o2biAXsPncvX6l9itqhWgHWopgYPNTAHX9lo81hV5VPcBASicLA8BKQpIEFpDJmgEtnHozKMCNonr7I4vXmEvDrY8cjMy0NcyQ+o2e7dvWq9slqrmosWNevX8eInj0Rxcb5xMWVXVwQEByBAvFEbMAMwmQOJHNW5XAZTTxaW3bBjOky+TkK7+sCbNyIJf9biFlDPsHp+MPap615qnFgFZ7LwcAuD+IO8U5uLRkrRTBWki6HMLXXKaDEQ8nPcjQHkjkTuLL9bwJcRhNP1oaerJEXchp6ADETsWfHTswcNhzxGzZpn77mqMaAdfXSZfTv1Bl3Eajl7EakqytgzJROD5XBhjF0d6WtxsFlNHpP6SolHrv23hAc3r8fUwa8h1P7D2q1Uf1VI8D6rNuTuI2VvFgDSuKS9A46BZUCS0Big5QFS8wpuG5Gt2jWeE3e/ioWwyfDsW1jLL7+9wu4cvGiVjPVV9UarFXTp6kYanITbwVUXmAJUBkmVhlw3ZSYy5JJN9m8LT1YQ2DpUsybMRsz3x6g1VL1VLUE60J+Ph7z9MHzhKooKBzntS6vLFCmVrs9V4llNvZCQbsQXE5Oxif/7IWk7XFarVUvVTuwZg8dio4EKtanA71URAk0dlhdgSvbP1SNIvHG21i/ZRNGP/Mvrfaqj6oVWE/4+OFlqTDp9gQUdnvmALJmFQ6XTAlUR7ike/Rui9wmzXHt1Em81+0JZJ86rdXkzVe1ACtx53YVSy1r0RYIjUC6xFIaIObgsWWVBpfRyjbyzbR2/DzyZRw+AtPHjMfqWbO0Wr25uulgxbz4sroFk0WYCmhnBSrjUQPEHDy2zCZcclTQ8NguFBltg5DpF4hs30DktglAXusOKPBph0K/IBS2D0Eh4ZL7ioX+wSjk//Nb+COvZTvk+HDU5tMeWa06GGbU24ZUPXzivZr64PKdf8C+LZsx7C+PaLV783RTwXpJF6kCdEMspcOZDqE4y6PyWJUEl3grgUgBRHAuEaprt98DdHoYebQDd3TC6oi78EPI7YgJvxXjwm/HpPDfYcpt92Lq7f+Habf8EdPCf4u5tNW3/R8O3PNXFHR9Cuj6JC7d8wAKI+9APsE759UWma0InF9wlYEmYOe4NMaF48fRt+tDWi3fHN00sLq4NsOXjbwIVTjOBBiAEjMLl5N8Qlc6YQnizCJF7oSFAHc1xUJBGhmSDTe89dj2B/+jBGv9MaEIUOwbuFiHD9+DJe067SmQlpCYiKWz/sRcz/6DIsHD8XCp3phwe33Ialzd+DRZ3H+zvuQR7iyvH2R1YYesQogU4H9gX3o0/kBnM/LM1xsFavKwbpYUKhuxyz28sfVYEKlgWRqFQGXCvw5LM9r3R6IvgM5dz+AWcFReM27HQY+0g2zR41CekaGdlUVr8TkZPz01VisfHMQfv79A8h7/J+49Cd6RX6OrOaEjF2sOSgqxNg1qrhrzDi898TfcfrAIe2qqk5VClZ+RqZaZLeTLrswKByprIA0QnDWxGNZg8ueLjG9fSiH40G4yuP5uztjakAEerq2wEcv/geJe/dpV1L12hobi9UffoLl9/0NF3o8j6I/dMY5bz8Vm1WKF5O4y8UD6P0Gvnh7IBI2btaupGpUZWDlpp1FJKE6JF4kUEeo9IQqDKm0NAWT855LdXcEKadtgPJOcZF3oZdLE7zZ9a/YF1u1FWqPNv+yBuv7DEJ8lydxhfFZjnSVHAhUBmBZbj7Ak89iwmcjcHDdOu0KKl9VAlZ+RpaC6gg/aA7hSCVEacpK4DqjYHLcc0mXl9s2EOh4J5YFd0QXnmd037e1M1dvZV+7grWfjMKuLj1w9bHncE4A44CiogHLcm8DPNYDEz75HAmbquaLVulgXSwoUt3fIX96lEB2f5qHMoDlPFziubLp/RB2K1YFdcQfeY7pn36qnbVm6TJtw9cx2P/Xp3H5b08jq0VbQ6BvBhJnTcH1VE+MeLMfTh+s/Jir0sGSQH0HY6q8YqiMdgNw8f/XaIlRd6ITy//ixZe0s9VsFdE2fjQcpx/5B4rueQCZHq0q1HupbvHVNzHob91xIb/AcNJKUqWC1dnVTY3+Cjj6MwTqZa08XCk0w/SDebhyO4TgetRv8KZLMzyrj1ArSWubzuTmIPZfr+LS31/GOZkqac0A3wwozlhWAwb0Y8fjtc5dtLNVjioNrJd0UWqe6jKhSgkkMDTH4BKYSuASqEBvtSkgUq3N2rZsqXam2qtdi5ci+fF/c3TbBRmyEcMMKA6bcSri0EG83rmzdqaKV6WAFfPSy/g3L/56SBROM7hOITCpDsJl6BYNYGUIVAS1j0tTPBPAuKoOKTU7E5u/mojzX3ylFv2ZhcVR0+DKPxSPoZ0e1M5UsapwsI7s3I67edFXQjriZIdwnCIgKU7CJZ4rl79nBUeqJcmzPvxQO0vdkKwUHf0GR7izZiHTpZF5SG7Acl1csWvrZvzyw/faGStOFQ6WrFJIC4wgFAJVOE6qY3m40szCJVAZABP4LrCcbX4hqsyUGrxjxRkJVF+/3geYPZtQNVBexhwcN2Jyb/Ha7+/Fl+8MRt6Zs9qZK0YVClYPH18s8m6HLAJhAKoErtOEyl64Utn1XQsOw1wPX7Xy4eole+7c1R4pT/V6X3oqgcqlUqAymqyKwKiv8NajFbsiosLAmj1kqFqkdyU4il1gWDFUjsKVwt8REoYxDPy7enprpdcdXb5wAWPefEeDqnI8VSlj+bJZI3//fox67EntKm5cFQKWrFG/hRdXFBpt8FQqtipvtuBK6aAHGE+NbOiFHm38tNLrjgSqsW/102KqKoDKaO30KGjWEgsWL8Kpvfu1q7kxVQhYj3u2xLrWATgTFI4TgQTIAlhiluCSe4fXCNWYxt54oo5CNa5P/6qHSjNJZIK3B6LvI49qV3RjumGwVk6fpqYWLoZE4wS9zkmCZQuuEzRTuASs8yHhmMOYqqunl1Zy3ZFANb7vAA2qyo2pLJrWJWbu3ImpAwdrV+a8bhgs6QIzgiMIk14BI2DZA5fRc8k8Vw7B2tgmUAXqdU2Xzp9HzDsDge9ujqcyNUnjdEnXEcN7v6VdnfO6oZYc3u1JjHdtgcygCCTTWyU7CJe8VmbYJdiXKYW6NvoTqCb0G1SxUMm9xRtIzSS5IxC7Ee8+eGNLm50GS3Ip/IYwnNdFI4mxVTIBEq9lDi5LwbzYeXahUk5KfIJWct3QpaLzmNj/XQ2qiun+strqkK+PVGvtzf3fXstzaYIfZs5E5nHn86s6DdaAP3XBvOZ+SGU3eJxgHXMQLvFS1wjVc6zUOUOGaqXWDV0qKsKkge9VMFShuKKLwjx3d1zrPRhZ7j5mX2ePZbFdMXos3u3WQ7tix+UUWJJKSOKhi/poHGN8JGCVhyvMIlwSX2UHRmC2py96BYdppdYNXSRUkwd9QKi+Q7pLQ2SyXm50aYxAdTk0Ej81aYwzPMeUzg8Df+luWPZs5vU2jaDnsn1/otc6te+A4cIdlFNgDeryIH4k1adNoCoPl07FXSrOKgPXaYKVGhChttLXJSmoBn9YDFUW66PUhlhzjWzDjFAtJFRJ53LVec5dvYLlv+uMQtazs8lN5IY3Rn6B97o/pcp0VA63rKx/+i2BKNJH4WiQHkkc2TkGl6ELfJhlxK1crpVa+3WxsBBT3hsCzCwNVbnd1mYa2ZIZoVpkApVRP8+chdwnnkeWLBY08157LNelEeZMmODUfUSHwRrZ81lMd2uF08HhBCtM2bEO9sOVzhHkfO+2eCnyVq3E2i/Z8vbtBx9pUDUoB1UJXGxQO+Eqhsq1CY5ll4bKqNH3Pgh0edTpZc5ZHr7AnO/xIUf/jsphsG6lp8nRRSKJnieJUIk5AldRSFSd6gIVVB9+TKhmmvVUZU3BZSOroBGqxVagEqXl5mDNXZ2RK6NEZ7pEvqeQg4CR/R3PxeVQCy+OicEQl6ZI0xm8VSm4+LMluE4QrmTCdS44Ep+4eGBi79e0Emu3LhQUYOqQYcAM+6AymjXPZS9URo3u9SLQvZdhe5mZ8mxaE28UzP8Rk/oP1Eq0Tw6B9UiDZtjbLgRJHMkl0AQmI1iW4BKw5CgjwTTGZLKsuC5IQTX0UwXVWX7mDDMAWTKVUdAMXAaoIvCznVAZNS3styhkec4E8tKN4tEe+OCZ57TS7JPdrZyVkoaurKD8sCgkEpAjjsDFv2XzW/aeiyvmjRiplVh7daEgH9M+/oxQzVBQGbPaSEIScyCZs7JwGT3Vz00dg0o0acBgXO/+L+e8lpp6aIBFY8Ygec9erUTbshusca+8jG+btsSJkHAkEigByxpcSSZwJdPSGLTfXge8lSwhmjZsuAZVg5JUSZo5A1expxKoyoz+7NWEkNtRRFCc8lrNJYj/L4Y4EMTb3dLyZCyBJpHQCFimcMnPpnAVx18aXOnBERjZwBPTBg7SSqudupCXjxmffF7OU5U1h+Bqp8clDpaWNnUtN6XgiL5+mXHto885NWkqOb8uRd6Oob1f10qzLbvASkk8giekovSRiA/WI8FBuAr10bV+JKig+nSEguoMP2s6P7+lpG9i9sAlUF1knS9lTJV07sbSEclDVKbrbke+jxP3Edkd5nHQtmz0GBzetMVQoA3Z1dqT+/bFRNcWOM5uMJ4AiR22E65TtPkebTC0W3ettNqn84Rq5vBRbDkDVBmsA2OyEmfhUp6KUC1TUDnvqUw14qlngD8/4lQKJdUdzpyNYc+yDDtkF1g93H2wq12wAuewZvbAdTRQj3y6cXkS19EdO7XSapcksdmsz7/QoGpQDFVx0hIn4DJ6qoqESrR17Trs/v1fkOPd1iw81kxGh9cf7oYPuz2tlWZddoH1e4KRHR6NeI4GjWDZgku6wWPiuVixEp/VRp3PzcXskV8SqumlPFVZcwQuI1TLZUqhAqEyaljYbbgUEq0W9ZkDyKKxOyxwaYwxQ4bCnqQGNlt8/cw56Mdv4qnQcBwgKAomE7MGVwoD98nsQie8XvsmRIsI1ZxRX9uEymj2wGWEakUlQSX67PkXgAefcOo2T25THxwaOx4Lh9ND25BNsMa+/iq+a+aDI4yvDhGWg7RycBG4snDJXFcOK0mC/tO1bBGfgurL0cA0+6AymjW4MuhBLjBsWFnB3V9ZHdq7F6uj70a+E3Naklce4ybig7/bjrNsgvV3Lz9s9w9S3aCAZQ2uBLpyU7hSg8Pxu1rWDRbl5KoHihugKh9T2TLJ61UWrgx/HS6ERmClmlKo/GS0HwRG4CLP6+iclpqFf+QJvP+Q7YGYzVaXSc2MsCjsD9bhoANwJYeE4X9evhjWw/lViNVNhYTqh9HjcN3O7s+SmXquYqjcbmyeyhEN7c4A/L6HDKnCy8Bjy867NMPQ99/VSrIsq2ClHknCM6zAFH049hOq/UF2wEVLIGApjMk+dHHFknExWmk1W0XncvDDmPG4PnUa0lgnZ/kZnc0/L6ZyqWpQrXJrWmVQib4bNQrJv++CnDYBZuGxaBLAN/bCj/3fxZEd1h8OZRWsZWPZnxKO46Fh9Fh6HKDZBRf/f47xwkNsgMK8fK20mitZij1v3ARcmzpVQSWTnypdpUDiJFzp7IbO6yOwmlAdq4Luz1SZWVmYwZFhoROTpTnubZA4YhTmvm89849VsCYN6Idv3FqoLu4Au0IBy1640kIiVJrImq7Cc+cwf/xEBVUqP88ZAUozZ+ESqIp0EfhFQVV1nspU/RgvXeZ1OBxnebXF9bEx+PiVl7WSzMtqy/e//09Y3ao9QQrDrwTJXrgkcN/YpgNeruGrRAWqBTGTCdW3CioByZhd0Fm4jFCtaVb1nspUA267G7jjXnUf0BxAliyTo0kMfA/97/2zVpJ5WQWru0crNW3wK4PUvTRTuFTXaAYuASuJgfssdx/E9HlTK6nmqYBQ/ThxSjmojGDJ0VG4iqFSMdXNg0o09LXeuPbHvzh8e0dyauGBv2HAX6zneLAK1n3i+jki3MuK+5Vey164ToaE4zMXd/z4+QitpJqlguxs/DjpG1xloH7apQHBKUmwawqXI57L1FPdbKhE0z4ahvhb7kGugyND6TovE8Z+ct/RiqyC9TjBSmZl7JGuUEFlHi7TbvEgX3Oa73mN7927eq1WUs1RQRahmjwVV7/9llA1RFpgOCR15dmAELNwydEWXNUNKtHWZSuwJCAKBfRA5gCyaBwZnqfT+Ki/9Yc0WATr/IWLKpFaEofDewiMNbhMYy7xWGf0UWrGPTtNtk/WHAlUP30zjVB9Q6gk5WVJot1UJ+EyQrW2GkElSjt9GhP8g1Hk6K0dglXUyAuj+/VFfmaWVlp5WQTr9NFjeJeVG894aa+ARdtrAtceHmVuyxxcGQRLEvvXJEn399O303BFeaoGhMqYbLcELoPnKkkRbgsuI1TrbnKgbknvt/LHZYKVZQ4gS8YvTKGrD777z0s4ttfyUmWLrX9o6w58zgo+EKLHbkJjDi7xXKZwGbvFrLDoGrUMWXmqqTPoqaaW6v7S6KGchqu9DoUClTuhyq5+UIle8vDBVXaFDoFFK2jmg4WvvI49K1ZrJZWXxdbfvmQ5xjVyxT7CtJvgWILL4LlMvBZfm8oKrSn3CAuysrBo6kx6KlOoDKkrDUCVThFuD1wCVYE+Auurqacy6p8uzQAntuHnN2uFVa+/jQ1zftBKKi+Lrb9hwU/4poEb9mkea5cDcB0LDcP9NQCsAsYIi2Z8h8vs/k4SqlTZ9MEYogQsJ+BqF6Kg2lDNoRL1dGkOhEQ5DpZbK2wY8C5WMR61JIutv2bWD5jRxAO7Q8KLoZLjHitwydSDgJXIuOyBag6WBJ6S3+DyN9/iBLt8WYmhcqEKNBbhkq7RFC6BqQQuBZUuHBuk+6vmUImeaegF6G91GKw8grXpvSFYNmaCVlJ5WQHre8xo7IE9IRHYSYiM3aFNuBj0Ho8yPDewukqgWvrdbFwkVMfpqVIYE0nKyuJEuwKNnXAZn/ljhGpjDYFK9KSLJxB2G8FybDWpeKyNAz/A8rFOgLVh/k+Y3tgduwlMHL/NdsMllf6bO6vtcmQF1ey5CqpjhOpUYAQkKW8K4XAWrjQ2TH4Ng0rUzcUVCI12IsZqjV/6DMDqb6ZrJZWXxdbfyuD9mwZNCRGhYiXaC9de6RLuuEutk69ukmdSL5vzPS5O+YZQNVJQFWcYJCCOwWWIuVLbsWvQRSLW3Y1Q3Zwbys7qEWmj4EiHwSrwaIOfe72ITd/P00oqL4utf2DrdsQ0bIRdDGh3EJod7C5swiVg8bUnWemdGzTRSqoeEqhWzP0vLpmBqjRcutJwlQNLTHveT7tg5IVGYJN7sxoHlehRAYtfDjXd4ABchR6tMbvHs9i3xvKdFYtgnTyShFE88W4G4jsIzY4gPXYSmhK4Qi16rhOMN3q0aKmVdPOloOK367yCytD9lYXKAJYc7YMrld1fXmg4Yj1qJlSif3DQgg56w1Z+gcYeuPj6IrfWGNfzaZzcf1ArqbwsglV44QKGCFi6MGwnOObhKu+5dtOOtg3C64GByDh5Sivt5imPUK3873xcIFRJhOpkkPYAqQ6loTIHV+knZ5hCxe6Pnkq6v+M1FKqM1DT0dWmMqxpY9sIlr7nMGGvI44+i0MpntwiW6C2CtZfxw9ZQvRW4TD0XPRYt3rcDht9xO3YvXamVdHOUl5GBVfN+pKeagqPs/hRUgZIITgPIFlz0WmWf+SNQ5YYypqKnqqlQiXat/AXDmzRXmyoUVHbCJf+/5t4aL3ax/nRWq2C9QLAO6gWscItwxSm4TD1XGPb7B+L7e/+MuUM/1kqqeuWlZ2D1gv8VQ3UiRI9kgUagchKu06xUgWpzDe7+jPr+s88xu7kfCgiWcbNsMVz88liCSza6QheN7u15tCKrYL3q5Y+ksHBsYZy1jXBtM4FruxW4fmVQu+WxJ/Bl71e0kqpWAtWaH39C0eQpSGT3d1weyUJvY0hZ6Rhc6pk/EnOxImWf5BaPmjf6M6ev33oDG1oFIk+CdxOwiuFqT7AEsLJgtQkCejyDh92sP/PIKlhv3Hs/UsIYS7BBthIu8VymcMlI0Rxccf4ByHj5FfRs20ErqeqkoPrfQhTRUxmhUlkFBSRWmDNwneS395x4bdX91Zx5Kmv6d3i0+nznynisUnCZ8VrnfINw9sGH8frd92glmZdVsL7o9w72dQhELLuRrfRQ4rUMcIUqj7XdAly7AkNxLPoWPMtGrUoJVGt/WozCyZORoEFlTP6mEu2awqWBZQuuE+1Ywez+ttXwmKqsVMpO/S1qb6M5sMQUXGUS7eb7hWDjb+7GmLf7aCWZl1WwFnw1Hiu8WxGmMGymx9piAtd2wiXzWwLXdg2unYRrl4JLj/2eLTHs6SdxjqOPqlDe2XSsXfQzCghVPIfRxwiL6VMzzMJFcErBVQYsgSqbo7/aBlVBbi66C1iBEQZ4rJj835jFWQL3C77BGN8+GEvIhjVZBet4QiImNWiEbQIV4ZJYqzRcOnosA1w72Fcb4YojWHtb+WHpv1/AfAaJlS0F1eKlKJg0GYcJVRKvwZgi3CxcAg0rzBpcBk9FqDxrF1SiJWNj8LmLGy7x89oCS0zBxW5RwALteUKZknBUK828rIIl6s9CtgtU4rXMwlXiueTWjxGunb7tkfHxMPS5/z6tpMqRQLXuZ0JFT3VQg8o08ZstuCRNeNln/pxozwpl97ddoMqpHTGVqT56sgdWe/oycC8PkSVTABIuBNmXp9/mK95q2R5HwsOxISTUClz0XGXh4vHYb36LV+7ppJVU8colVOuXLCNUkxRUkhHniEBFkGzBpR6FJ3CxGzd9WlkyocrURWBHLQrUy0oe43dBYJHUSVZirLJ2jnbCNxA9vGw/WtkmWB/3fgXHORLcwKB8E4/m4ZLpiNJwxYVEIK6JF74bPAiJsVu10ipOuenp2ECo8gjVASNUPLfKdOMIXOz6jHAdN4WqFnoqkaSUelI8Dgc2GQRLzF648ll/C9188PXrr2qlWZZNsJZOm4XlzVtiU1AENnJ0aA2uUp6LDbWjVTucmTgFQ56quMfui8RTbVy2ArmTJmE/R38JhErSggtYjsJl7BaPd2Al68Kxo3kzJNdSTyWKeeM1zGjSEgX88stOIpXxxg645CFSV1hXg/klXjdzrlaaZdnuLKnPSPgmwrOJ8cvGEPs91/Z2wUju1AVv//VvWkk3rtyzZ7Fp+UpCNRH7+CEPEyqVPknMSbiSWGkZukjEMaaqzVCJ7mZbysI+yR8vMBnNFlzyP4RE40474iuRXa96x9sfCeERWE+INrEhNjJgtwoX4RO4drDRt7m4Yum4sdi1cKlWmvMSqGJXrkaOCVTGJCQOwcVvqylUZ/Xstpu713qoEnfEGbpB9j5GkEzNGlwqvvILRjd3H60067ILrOFvvIljDN4FrA3iuRyAa2ubdiiMmYhBXR/WSnNOAtXmlb8oqPYSqoMmUNmCS2AqC5ck3ZUc9ALVrlre/Rk1pFt3LPZorW7jWExZSbjKQiUjwkIObGY2boFJfftqpVmXXWAdjU/EnEaNsF66QoKzgY1qhCvWFC424pZgk5iLMCrP5e6N8UM+Bq5d00p0TALVllVrkD1pgoLqEM8vO65lS38psORIgOyBK5GVeJbdX12BShQl3iok0rBT2wJYYmXhkr/J+2R3e0qi9fkro+wCSzSQQfIuvQEqgWujCVybrcHFmGurZyucW7wEwx97XCvNfuWcOYutv6xD9sSJ2MUPtp8DiEMEw5iAxGG4aEdYUWn6SOypQ1DJ42a+buCB86wbtUvbAbiyafn8mzwH3F7Z/cqPX3gBp3R6rGYXp7yWDbjkpnVxtxgUjAMRt2Dky7aHqabKOXMG29YKVBMUVAdYpspwE6hTQFmFi5VhDi7xVGns/hRUtXRKwZxuYf0VcKSeKUBpZi9c0g3ObeqDsTaSrZnKbrBOnTyNOQ0b4Bc2zhp6obJwbSgDl9y0NoUr1s0duRs2Yuw/e2klWpdAtWPdBmRNmIjt9Jb7WVbJbmv74Cr7zJ/DrMgUQrVXRn91CKr/jhih8sHKdEG6TKuUgctW/nnZ1PpXgpnlwH1f+30b1b+ZDw6FR2ING3ltObgksLcM17agUPzasSPG9x2slWZZ0v3tWL8RmRMmYAeh+pWxncoTEWy6ld8xuOJZgakCFUd/J+oQVCLxVnL7xtRb2QuXrHE/7heErg3dtdLsk0NgTRs9FvHt22M1G2odwXEUro1unriyZxdGPP6EVmJ55aadxc4NmxRU2wjVXpZr3LMocJXKbkM7aAdch1g5p8Mi8Ktn3YNqQu/X8LmLBy6x/lSm5jJQGc0cXDKBeolAfkJvtyjG8uZUc3IILNFw0r9RT6gIiyW4JObaYg4u/n+LpxfWrlqFM2ZGF9L9xW3ajPQJMYSqgYLKuPPHEbhUjKXZQVbYKXqqfTJPVcegEqmRoNy+MYHIkpmDS+a8VBkOyuF3DHnyGaSFh2EVwbENFwP5MnBtbtUWGV9/hS97Pq+VaJBAtSt2C9JjYrCFH2QXX1t2z6KA5QhcpaGq+WnBHdWLkbdikaxrZ9CuAnU7zAiXeKtCequ5bi0x8rmeWon2y2Gw8i9fwVQ2/C8cHa7RESxH4eL/1/L92SdPYOFno1SZCqrNhIrdX6xLI7WXsWRzhv1wmcZc+1lBJ/WRCqoTdRCquJXLDTudZd6qTMBuyxSEErQHR6qVEHY97quMHPdx1LudH8SZyAisptdao9MruNYSnHX8vRguBtyb2MBm4SIAu2+5DbGr1uDotu34dUcczrD728SYSlZFWN0QawdcAtUJeqr9dRQqkXRfchvGUsBuzQSsXHq55Z6+GNjlQa1Ex+QUWKkZmfiBF76KDbmWXqsELh4Jj024+LdNzX2QOmY0fj0QT6gmYAOhknuLxvXzlvYsytEYb5mDa29AqILqQB2Gqhfr5QfPNijisWyiXXtMPBxCo3AX27gwJ0cr1TE5BZbo3U5dcDY6EqtCbMAVRLj493JwEaJ1Lo1xYuRIrG/QSEFVdltZ+d3W1uH6NUCH4/pwQuVR50Z/Rs0ZMhT/kO4rNMKQt4uexxG4xFvl8T2LCWb/P3XRSnVcToN1rugCvuMH+IUgCVil4dLZCRePvu2xTRfB2Mu+PYuW4NrNyhOoDnq542QdhSo1PkHlfr3GL6kxF6rKhyrQ2AlXOmGUCVHZxXP10mWtZMflNFiiD/7WHRmR4Vipea0SuBig2wMXf99KYAQw4xLn4j2L/JD2wrWLlZZEOA961V1PdfXiJUQShjR2Y5mEQ/KhOgqXeKsLrM9JTbzxWfcbW5x5Q2CJRvDDbAsLx5pynqs8XHLrxyxc9FCGWz+GzRnGPYvG9fPm4BKwxOL4GoHqUB32VCLJR7a5dQDyOXgxZBl0Dq5CguXMvFVZ3XAJMyZNQXJbXyxlYxvBKgvXeofhoudiRQhc1jzXLlbe0TCBygMnc+suVF09vTHXozUus56KMzc7CJcK2IMj1NauVdMtJ621VzeOJtW3jR9OdYxW0w/m4JKb1hvKwSXzXqXhKlkoWNpzme5Z3EWoBK4drLRExlTxdRyqJ1j3Yxq1wDVCURYqe+EyBuyxPgF4zLNi8ppVCFipWTn4nqSv09FDmYBlGy6Z9zLAJcF86VWoBriKN2eYwGWE6rC3J07V4e6vO6Ea2VBSakciRVIssY7MpQgvC5e5Z/7IZGg02/BCfoFW+o2pQsASfTVgMC++PZYGle4SbcFl2JyhswKXyc4fVsBWVsphfSQSvD3qNFRdPb0wprEXgQhXqZaMSeEk5ZIjcKkuMCQCrxAqmaqoKFUYWKI+7Tvg7C3RpUaJxXCxmzTGXObhMlkoaAYu6Ra3CFT0igJVXQ3UZfQngfpcD1/V/aUQFkOi3RK4JOmu2YcbaF2lKVwSrC/39kd3H9ubUB1RhYKVfx0Yxw+9KyKy1PyWAkuOGlzmPZfsWbTkucIQGxKCQ/RUiXXYU6UeOqymFGJbB+IC68yQvtI0i7MBLsn2bM/TyjJpWQRLyqxoVXiJ6zZvxg7PpsUz8pbgEs8lYNnjuTazG4yPjMZRf1/UrAfVVZykm5JJy9OEJjeQUBV7JyNckntewCqBy+C5LMMFXaTyfkd27tDOUnGqeFSpT557HplBHbAkKNQGXIab1gou/m5tQ6zAlX9bNPbffz+cu3tVc9WLn/05AnAlNJLdl8RRhEZ5K1OzH640ggXWt0wtxLxk/zp2R1QpYIn6RnREflQEg3lbcJl4LoFLPFdomT2LrFjZ+bOOrvtYGCvLqxnily7TzlR7JUtfJLPLHE8/XGeAbd/DDQQuw8MNSsNl8FLira6zPr9q5IUXdVHamSpelQaWqH/Lljh7azSWl5k8dRYuuf0TSw8mt4AK/dtgd6f7kXn5ina22qWXIm/Fw4QqLSAC2fJYFkJ0mmA4+uQMU7gEqgv0/j97+aGzazPtTJWjSgXrPE3yPhzr2NH8SLEYLjmah8vcnkUZKa4L1CEpnBXn7orNb7+DC4ZT1nhN7P2q8lLzm7ell4omTOGGNJbqKN2gvXCV91x5fP3ONoGGxXuVrEo/w6lzuZjED5LQMcohuAyrUM3DpdbP8zWbxYMFhyJLp8N+j2ZY9VnNfGq+aN6IESo4/9TFA+eDo5BBL3WSwJimrlSZBgmI/XAZPJeMEHMY8B/yD1WToBcLCrWzVp4qH10q4XQqZvIDHYy2MMel498IjcBVfs+ijW1l/D2WcZzMc+XrQ7DR1RX/7TcIRdq5q7tkh7IA9Z6LK84GRSAnOFIlgLOUxdlg9sOVSrBy6N2PtNeraQV5/EtVqErAEh08fgqz+cHioy15LoHL4LnWOQGXJCGJZUXv5N8LwvRYzXNNe+ppbIrdpl1B9VHi9p34qFt31eWNdGmOdHphAeoUgRKPpFJWCkAW4FIpwvk6W3DJPJd0f4f8gxVUsrWuqlRlYInEc8lGjKRbOloI6AmXAou/OwHXdsK1na/bzAqXG9fpYXT/3t4Y1cwdn7/SG4cPJmhXUvU6FZ+ACa+/pp7j2IM2z7MNCnXRSOdoTxLqSi7UZA0qo1mDS8zao/BSO+hRyFBih2+wAjg/I0u7kqpRlYIlOpmdg6/4QdNuibYwFWEdLsNNa0tw6QmX3nBvkbaNFb6NlR3P9+bSiy1s2gRv89wDuvfA/NHjkJdXeWviC/PysGRcDIb16KEevC6ZWia7tsBxaXAO808Hl2QUlOMJSVkZVDqLs7Nwyf3Cq/SAi738cQfPWxUxVVlVOVgiuX/+kY8P8qMj8LMFuAxdojW4GMjbgEtMUlbuZMNtZ4XvlliDr8/Q67DCq5V6ulk3Wq+IWzC6z1uYx+B/7+q1yDpj//x+dtoZ7F21BguGj0BMnzfxcsStqjEfokm+hIXNfZHG8+fqIg0w8TokL5cx8ZsRLslL7wxchhGjwGToFgUs2QjxZSMvdHF1066y6nVTwDLq/ahbURASgBUEwXQFanm4TLaV2QGXWj9fDFfJQkHZnLGLDRdH20OT/Yen9ZHqAU6rfPwwpYkXBhMImeWWh6ULILJTpZP2uzznWp7OLx5I1pbL3yUR/2u04S7umOXmg1jfDkgPZRDOctN4Lcd5TZKX6ygBlzRKxXm6zMClHstiBi57HssicMmM+/WQSDWj/iJBvpm6qWCJRvV8AYe93LE1LKJcUG+Ey6E9i6ZwBWvr58vAVWr9PP8nto9/P8jXHOFrkkPpXdgwGWFRSNGz0VlmAl97hA1+gtCk6aOQRcukSe7SVF0E4QxHEl8nqSklCUkCy0xU5Rl+L5dRsALhkmmJrEBeF01yWFXWbRpHdNPBEq3btAmLWCGnOkaV6xpLw1WyIkLBxb87D5f5PYuylWwvvYuYPJXfNMONMnanahs/yztAO0STFJXGfBHqyPeZpk8ywnXUDFzmsjgb4AqzCZfBU4XjSkgUFnu3U3NUR3Zu12r15qpagCXKuHoNXwYEoiA0AKsIhuky5xK4eDSFi43gCFyObiszJiOxlj7pAM00CYktuMp7LvMpwm3BJV7qLH+WydSXCFSPCl5PdaOqNmAZNeWdd7GzkQsSoyKxhJWqZuatwCWz80a4BCoFF383biszBPQl28qcgcvSVn5bcCUw7rEHrqMcxVmFS01FmIBFu0Qvtc4n0HCTemjFrfysKFU7sERJGdmY7B+A/KD2WEegJLi3BddG/n2Tqefi77LcRuCSe4s3ApcCzAxc1tInGeGy23Mx3rIIFwE1zHOFIzsoAllBkfg3gXrcs2WFrVGvaFVLsIyaP34CfmEFZkSFYxnhKp2EpPyeRYGrVLcoUBEiQ5dYsvNHxVxqGsIIl2Hnj224BCpTuHQq1rIKF99nzCpoBEtMcqOWhcvSkzMErjPipThQGO/aUnmpldOna7VUPVWtwRLJqoUZTz6D+MYNkRQepvYvrhKoOAoTuBzfs+jYhlibnovdtV1wifHnUnDxb9Y8lxxl7uuSPhoLPP3UqoTh3Sr28TGVpWoPllEn84vwY9eHkOzWBIkEbBkbVxLtSrdobVuZEa7SmzMs7Vm0F64ynssGXOpnvs8cXDIlYc5zpfJzXNR3xE/N/dQUQv9OnW8ol0JVq8aAZVRCWjqWPPIYjjZuhORwPVaxcZYHGZ6aYQkuFdSXg0u2lZX2XKYbYq3BJV7rV763IuBSXST/JhOox3lMpyfOCY3EdLdW+C2BGtTlQadTCd1M1TiwjDp98TJW9PoPdjZsgGxdMAHSYQUbVu4zigczxFyO7Vk0B1ecKVz8vyW41EjRDFxGsMzBlcjXHuXxBK8rXx+Ffe1CMMTFVWU5Htmzp1OZ9KqLaixYRl2i/TJ6HNaEhCKjpReS9YSJjSxJ4daz8TfIcppQk4WCpeCS6YjScEm8ZRUumrNwqYlU/k+6vxM8R7bcTuJ7prr5qDzqDzd0x+KYGMMHq+Gq8WCZ6sDxE9j4Rh+sb9kC59r44LgulCNABvts7LU8ytP4N9MELpnnMgsXuySbcPG11uAydosClRzFU8ltoRSeLyc8GnHtgjHRtYVa8fBH2rhXXkZWStU8lL2qVKvAMtXu/YcQO2AgNnXsiMMcUZ4L7oAjISHYRc+2gY2/ng2+MVBnCOwFNA0umYowhUugMlqpmEvg0qwYLgGKr0ugyc3nNF0EssOisdM/GLPcfdDPpYG6qd3DvRUm9+2LlMQj2tXWPtVasEwlz6Bf991cbOvTFxtvvRWb2biZfq2RGRzI+CYY8ewuxTPt4FFyQ8hW/q0cmclSm60B9GQB9HyBNB7jCOMe/l9m5PfTDvH/R4IiVNx0kh5pZ9sAzGjmg/cZK/2d55Flx3/38sOY117F+plzDBdUB1QnwDKnOHq0NTGTsaH/QKx59HGsiorCksauWEcQ4tya4XALbxxv3Qopbf1wpn07pHVoh1Pt/ZHg54u4lj5Y08wD3zdogi/5+rdoMhPe07MN+tzXCZP6v4NlYycg9UiSdra6pzoLljWlFRRif3wiYjdswYqflmDR3AX437TZ+GnaHCz9YQHWLFqKuNhtSDpyFPnnL2rvqpep6sGqV6WoHqx6VYrqwapXpagerHpViurBqlelqB6selWCgP8H0vxXZO18UWEAAAAASUVORK5CYII="

local PingStat = game:service("Stats").PerformanceStats.Ping
local function GetLatency()
	return PingStat:GetValue() / 1000
end
placeholderImage = syn.crypt.base64.decode(placeholderImage)

getupvalue(getconnections(game.ReplicatedStorage.RemoteEvent.OnClientEvent)[1].Function, 1).correctposition = function() end

local function map(N, OldMin, OldMax, Min, Max)
	return (N - OldMin) / (OldMax - OldMin) * (Max - Min) + Min
end

local function reverse_table(tbl)
    local new_tbl = {}
    for i = 1, #tbl do
        new_tbl[#tbl + 1 - i] = tbl[i]
    end
    return new_tbl
end

local NotifLogs = {}
local CreateNotification
do
	local notes = {}
	local function DrawingObject(t, col)
		local d = Drawing.new(t)

		d.Visible = true
		d.Transparency = 1
		d.Color = col

		return d
	end

	local function Rectangle(sizex, sizey, fill, col)
		local s = DrawingObject("Square", col)

		s.Filled = fill
		s.Thickness = 1
		s.Position = Vector2.new()
		s.Size = Vector2.new(sizex, sizey)

		return s
	end

	local function Text(text)
		local s = DrawingObject("Text", Color3.new(1, 1, 1))

		s.Text = text
		s.Size = 13
		s.Center = false
		s.Outline = true
		s.Position = Vector2.new()
		s.Font = 2

		return s
	end

	CreateNotification = function(t, customcolor)
		table.insert(NotifLogs, string.format("[%s]: %s", os.date("%X"), t))
		local gap = 25
		local width = 18

		local alpha = 255
		local time = 0
		local estep = 0
		local eestep = 0.02

		local insety = 0

		local Note = {

			enabled = true,

			targetPos = Vector2.new(50, 33),

			size = Vector2.new(200, width),

			drawings = {
				outline = Rectangle(202, width + 2, false, Color3.new(0, 0, 0)),
				fade = Rectangle(202, width + 2, false, Color3.new(0, 0, 0)),
			},

			Remove = function(self, d)
				if d.Position.x < d.Size.x then
					for k, drawing in pairs(self.drawings) do
						drawing:Remove()
						drawing = false
					end
					self.enabled = false
				end
			end,

			Update = function(self, num, listLength, dt)
				local pos = self.targetPos

				local indexOffset = (listLength - num) * gap
				if insety < indexOffset then
					insety -= (insety - indexOffset) * 0.2
				else
					insety = indexOffset
				end
				local size = self.size

				local tpos = Vector2.new(pos.x - size.x / time - map(alpha, 0, 255, size.x, 0), pos.y + insety)
				self.pos = tpos

				local locRect = {
					x = math.ceil(tpos.x),
					y = math.ceil(tpos.y),
					w = math.floor(size.x - map(255 - alpha, 0, 255, 0, 70)),
					h = size.y,
				}

				local fade = math.min(time * 12, alpha)
				fade = fade > 255 and 255 or fade < 0 and 0 or fade

				if self.enabled then
					local linenum = 1
					for i, drawing in pairs(self.drawings) do
						drawing.Transparency = fade / 255

						if type(i) == "number" then
							drawing.Position = Vector2.new(locRect.x + 1, locRect.y + i)
							drawing.Size = Vector2.new(locRect.w - 2, 1)
						elseif i == "text" then
							drawing.Position = tpos + Vector2.new(6, 2)
						elseif i == "outline" then
							drawing.Position = Vector2.new(locRect.x, locRect.y)
							drawing.Size = Vector2.new(locRect.w, locRect.h)
						elseif i == "fade" then
							drawing.Position = Vector2.new(locRect.x - 1, locRect.y - 1)
							drawing.Size = Vector2.new(locRect.w + 2, locRect.h + 2)
							local t = (200 - fade) / 255 / 3
							drawing.Transparency = t < 0.4 and 0.4 or t
						elseif i:find("line") then
							drawing.Position = Vector2.new(locRect.x + linenum, locRect.y + 1)
							if menu then
								local mencol = customcolor or (menu:GetVal("Settings", "Cheat Settings", "Menu Accent") and Color3.fromRGB(unpack(menu:GetVal("Settings", "Cheat Settings", "Menu Accent", COLOR))) or Color3.fromRGB(100, 100, 225))
								local color = linenum == 1 and mencol or Color3.fromRGB(mencol.R * 255 - 40, mencol.G * 255 - 40, mencol.B * 255 - 40)
								if drawing.Color ~= color then
									drawing.Color = color
								end
							end
							linenum += 1
						end
					end

					time += estep * dt * 128 -- TODO need to do the duration
					estep += eestep * dt * 64
				end
			end,

			Fade = function(self, num, len, dt)
				if self.pos.x > self.targetPos.x - 0.2 * len or self.fading then
					if not self.fading then
						estep = 0
					end
					self.fading = true
					alpha -= estep / 4 * len * dt * 50
					eestep += 0.01 * dt * 100
				end
				if alpha <= 0 then
					self:Remove(self.drawings[1])
				end
			end,
		}

		for i = 1, Note.size.y - 2 do
			local c = 0.28 - i / 80
			Note.drawings[i] = Rectangle(200, 1, true, Color3.new(c, c, c))
		end
		local color = (menu and menu.GetVal) and customcolor or menu:GetVal("Settings", "Cheat Settings", "Menu Accent") and Color3.fromRGB(unpack(menu:GetVal("Settings", "Cheat Settings", "Menu Accent", COLOR))) or Color3.fromRGB(100, 100, 225)

		Note.drawings.text = Text(t)
		if Note.drawings.text.TextBounds.x + 7 > Note.size.x then -- expand the note size to fit if it's less than the default size
			Note.size = Vector2.new(Note.drawings.text.TextBounds.x + 7, Note.size.y)
		end
		Note.drawings.line = Rectangle(1, Note.size.y - 2, true, color)
		Note.drawings.line1 = Rectangle(1, Note.size.y - 2, true, color)

		notes[#notes + 1] = Note
	end

	renderStepped = game.RunService.RenderStepped:Connect(function(dt)
		Camera = workspace.CurrentCamera
		local smallest = math.huge
		for k = 1, #notes do
			local v = notes[k]
			if v and v.enabled then
				smallest = k < smallest and k or smallest
			else
				table.remove(notes, k)
			end
		end
		local length = #notes
		for k = 1, #notes do
			local note = notes[k]
			note:Update(k, length, dt)
			if k <= math.ceil(length / 10) or note.fading then
				note:Fade(k, length, dt)
			end
		end
	end)
	--ANCHOR how to create notification
	--CreateNotification("Loading...")
end

local menuWidth, menuHeight = 500, 600
menu = { -- this is for menu stuffs n shi
	w = menuWidth,
	h = menuHeight,
	x = 0,
	y = 0,
	columns = {
		width = math.floor((menuWidth - 40) / 2),
		left = 17,
		right = math.floor((menuWidth - 20) / 2) + 13,
	},
	activetab = 1,
	open = true,
	fadestart = 0,
	fading = false,
	mousedown = false,
	postable = {},
	options = {},
	clrs = {
		norm = {},
		dark = {},
		togz = {},
	},
	mc = { 155, 155, 255 },
	watermark = {},
	connections = {},
	list = {},
	unloaded = false,
	copied_clr = nil,
	game = "none",
	tabnames = {}, -- its used to change the tab num to the string (did it like this so its dynamic if u add or remove tabs or whatever :D)
	friends = {},
	priority = {},
	muted = {},
	spectating = false,
	stat_menu = false,
	load_time = 0,
	log_multi = nil,
	mgrouptabz = {},
	backspaceheld = false,
	backspacetime = -1,
	backspaceflags = 0,
	selectall = false,
	modkeys = {
		alt = {
			direction = nil,
		},
		shift = {
			direction = nil,
		},
	},
	modkeydown = function(self, key, direction)
		local keydata = self.modkeys[key]
		return keydata.direction and keydata.direction == direction or false
	end,
	keybinds = {},
	values = {}
}

local function round(num, numDecimalPlaces)
	local mult = 10 ^ (numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

local function average(t)
	local sum = 0
	for _, v in pairs(t) do -- Get the sum of all numbers in t
		sum = sum + v
	end
	return sum / #t
end

local function clamp(a, lowerNum, higher) -- DONT REMOVE this clamp is better then roblox's because it doesnt error when its not lower or heigher
	if a > higher then
		return higher
	elseif a < lowerNum then
		return lowerNum
	else
		return a
	end
end

local function CreateThread(func, ...) -- improved... yay.
	local thread = coroutine.create(func)
	coroutine.resume(thread, ...)
	return thread
end

local function MultiThreadList(obj, ...)
	local n = #obj
	if n > 0 then
		for i = 1, n do
			local t = obj[i]
			if type(t) == "table" then
				local d = #t
				assert(d ~= 0, "table inserted was not an array or was empty")
				assert(d < 3, ("invalid number of arguments (%d)"):format(d))
				local thetype = type(t[1])
				assert(
					thetype == "function",
					("invalid argument #1: expected 'function', got '%s'"):format(tostring(thetype))
				)

				CreateThread(t[1], unpack(t[2]))
			else
				CreateThread(t, ...)
			end
		end
	else
		for i, v in pairs(obj) do
			CreateThread(v, ...)
		end
	end
end

local DeepRestoreTableFunctions, DeepCleanupTable

DeepRestoreTableFunctions = function(tbl)
	for k, v in next, tbl do
		if type(v) == "function" and is_synapse_function(v) then
			for k1, v1 in next, getupvalues(v) do
				if type(v1) == "function" and islclosure(v1) and not is_synapse_function(v1) then
					tbl[k] = v1
				end
			end
		end

		if type(v) == "table" then
			DeepRestoreTableFunctions(v)
		end
	end
end

DeepCleanupTable = function(tbl)
	local numTable = #tbl
	local isTableArray = numTable > 0
	if isTableArray then
		for i = 1, numTable do
			local entry = tbl[i]
			local entryType = type(entry)

			if entryType == "table" then
				DeepCleanupTable(tbl)
			end

			tbl[i] = nil
			entry = nil
			entryType = nil
		end
	else
		for k, v in next, tbl do
			if type(v) == "table" then
				DeepCleanupTable(tbl)
			end
		end

		tbl[k] = nil
	end

	numTable = nil
	isTableArray = nil
end

local event = {}

local allevent = {}

function event.new(eventname, eventtable, requirename) -- fyi you can put in a table of choice to make the table you want an "event" pretty cool its like doing & in c lol!
	if eventname then
		assert(
			allevent[eventname] == nil,
			("the event '%s' already exists in the event table"):format(eventname)
		)
	end
	local newevent = eventtable or {}
	local funcs = {}
	local disconnectlist = {}
	function newevent:fire(...)
		allevent[eventname].fire(...)
	end
	function newevent:connect(func)
		funcs[#funcs + 1] = func
		local disconnected = false
		local function disconnect()
			if not disconnected then
				disconnected = true
				disconnectlist[func] = true
			end
		end
		return disconnect
	end

	local function fire(...)
		local n = #funcs
		local j = 0
		for i = 1, n do
			local func = funcs[i]
			if disconnectlist[func] then
				disconnectlist[func] = nil
			else
				j = j + 1
				funcs[j] = func
			end
		end
		for i = j + 1, n do
			funcs[i] = nil
		end
		for i = 1, j do
			CreateThread(function(...)
				pcall(funcs[i], ...)
			end, ...)
		end
	end

	if eventname then
		allevent[eventname] = {
			event = newevent,
			fire = fire,
		}
	end

	return newevent, fire
end

local function FireEvent(eventname, ...)
	if allevent[eventname] then
		return allevent[eventname].fire(...)
	else
		--warn(("Event %s does not exist!"):format(eventname))
	end
end

local function GetEvent(eventname)
	return allevent[eventname]
end

local BBOT_IMAGES = {}
MultiThreadList({
	function()
		BBOT_IMAGES[1] = game:HttpGet("https://i.imgur.com/9NMuFcQ.png")
	end,
	function()
		BBOT_IMAGES[2] = game:HttpGet("https://i.imgur.com/jG3NjxN.png")
	end,
	function()
		BBOT_IMAGES[3] = game:HttpGet("https://i.imgur.com/2Ty4u2O.png")
	end,
	function()
		BBOT_IMAGES[4] = game:HttpGet("https://i.imgur.com/kNGuTlj.png")
	end,
	function()
		BBOT_IMAGES[5] = game:HttpGet("https://i.imgur.com/OZUR3EY.png")
	end,
	function()
		BBOT_IMAGES[6] = game:HttpGet("https://i.imgur.com/3HGuyVa.png")
	end,
})

local loaded = {}
do
	local function Loopy_Image_Checky()
		for i = 1, 6 do
			local v = BBOT_IMAGES[i]
			if v == nil then
				return true
			elseif not loaded[i] then
				loaded[i] = true
			end
		end
		return false
	end
	while Loopy_Image_Checky() do
		wait(0)
	end
end

if game.PlaceId == 292439477 or game.PlaceId == 299659045 or game.PlaceId == 5281922586 or game.PlaceId == 3568020459 then
	menu.game = "Phantom Forces"
	do
		local net

		repeat
			local gc = getgc(true)

			for i = 1, #gc do
				local garbage = gc[i]

				local garbagetype = type(garbage)

				if garbagetype == "table" then
					net = rawget(garbage, "fetch")
					if net then
						break
					end
				end
			end

			gc = nil
			game.RunService.RenderStepped:Wait()
		until net

		net = nil

		local annoyingFuckingMusic = workspace:FindFirstChild("memes")
		if annoyingFuckingMusic then
			annoyingFuckingMusic:Destroy()
		end
	end
end

loadstart = tick()

local NETWORK = game:service("NetworkClient")
local NETWORK_SETTINGS = settings().Network
NETWORK:SetOutgoingKBPSLimit(0)

setfpscap(getgenv().maxfps or 144)

if not isfolder("bitchbot") then
	makefolder("bitchbot")
end

do -- Files
	if not isfile("bitchbot/relations.bb") then
		writefile("bitchbot/relations.bb", "friends:\npriority:")
	end

    if not isfile("bitchbot/chatspam.bb") then
        writefile("bitchbot/chatspam.bb",
            [[BEACH BOAT ON TOP
BBOT NEW UPDATE 2058 ةشساشممشا
ؤقهحلاخف خهى فخح غثشا ةغ لاقخ
beach boat does not miss]])
    end

    if not isfile("bitchbot/killsay.bb") then
        writefile("bitchbot/killsay.bb",
            [[Imagine Dying To Me [name]
So bad [name]
[name] how is your [hitbox] feeling?
sucks to suck [name]
[name] how do you die to a [weapon], so bad
[name] get better]])
    end

    if not isfolder("bitchbot/" .. menu.game) then
        makefolder("bitchbot/" .. menu.game)
    end

    if not isfile("bitchbot/" .. menu.game .. "/Default.bb") then
        writefile("bitchbot/" .. menu.game .. "/Default.bb", "")
    end
end

do
    local customtxt = readfile("bitchbot/chatspam.bb")
    for s in customtxt:gmatch("[^\n]+") do
        table.insert(customChatSpam, s)
    end

    customtxt = readfile("bitchbot/killsay.bb")
    for s in customtxt:gmatch("[^\n]+") do
        table.insert(customKillSay, s)
    end
end

local configs = {}

local function GetConfigs()
	local result = {}
	local directory = "bitchbot\\" .. menu.game
	for k, v in pairs(listfiles(directory)) do
		local clipped = v:sub(#directory + 2)
		if clipped:sub(#clipped - 2) == ".bb" then
			clipped = clipped:sub(0, #clipped - 3)
			result[k] = clipped
			configs[k] = v
		end
	end
	if #result <= 0 then
		writefile("bitchbot/" .. menu.game .. "/Default.bb", "")
	end
	return result
end

local PathfindingService = game:GetService("PathfindingService")
local Players = game:GetService("Players")
local LIGHTING = game:GetService("Lighting")
local stats = game:GetService("Stats")

local function UnpackRelations()
	local str = isfile("bitchbot/relations.bb") and readfile("bitchbot/relations.bb") or nil
	local final = {
		friends = {},
		priority = {},
	}
	if str then
		if str:find("bb:{{") then
			writefile("bitchbot/relations.bb", "friends:\npriority:")
			return
		end

		local friends, frend = str:find("friends:")
		local priority, priend = str:find("\npriority:")
		local friendslist = str:sub(frend + 1, priority - 1)
		local prioritylist = str:sub(priend + 1)
		for i in friendslist:gmatch("[^,]+") do
			if not table.find(final.friends, i) then
				table.insert(final.friends, i)
			end
		end
		for i in prioritylist:gmatch("[^,]+") do
			if not table.find(final.priority, i) then
				table.insert(final.priority, i)
			end
		end
	end
	if not menu then
		repeat
			game.RunService.Heartbeat:Wait()
		until menu
	end
	menu.friends = final.friends
	if not table.find(menu.friends, Players.LocalPlayer.Name) then
		table.insert(menu.friends, Players.LocalPlayer.Name)
	end
	menu.priority = final.priority
end

local function WriteRelations()
	local str = "friends:"

	for k, v in next, menu.friends do
		local playerobj
		local userid
		local pass, ret = pcall(function()
			playerobj = Players[v]
		end)

		if not pass then
			local newpass, newret = pcall(function()
				userid = v
			end)
		end

		if userid then
			str ..= tostring(userid) .. ","
		else
			str ..= tostring(playerobj.Name) .. ","
		end
	end

	str ..= "\npriority:"

	for k, v in next, menu.priority do
		local playerobj
		local userid
		local pass, ret = pcall(function()
			playerobj = Players[v]
		end)

		if not pass then
			local newpass, newret = pcall(function()
				userid = v
			end)
		end

		if userid then
			str ..= tostring(userid) .. ","
		else
			str ..= tostring(playerobj.Name) .. ","
		end
	end

	writefile("bitchbot/relations.bb", str)
end
CreateThread(function()
	if (not menu or not menu.GetVal) then
		repeat
			game.RunService.Heartbeat:Wait()
		until (menu and menu.GetVal)
	end
	wait(2)
	UnpackRelations()
	WriteRelations()
end)

local LOCAL_PLAYER = Players.LocalPlayer
local LOCAL_MOUSE = LOCAL_PLAYER:GetMouse()
local TEAMS = game:GetService("Teams")
local INPUT_SERVICE = game:GetService("UserInputService")
local TELEPORT_SERVICE = game:GetService("TeleportService")
local GAME_SETTINGS = UserSettings():GetService("UserGameSettings")
local CACHED_VEC3 = Vector3.new()
local Camera = workspace.CurrentCamera
local SCREEN_SIZE = Camera.ViewportSize

local ButtonPressed = event.new("bb_buttonpressed")
local TogglePressed = event.new("bb_togglepressed")
local MouseMoved = event.new("bb_mousemoved")

--local PATHFINDING = game:GetService("PathfindingService")
local GRAVITY = Vector3.new(0, -192.6, 0)

menu.x = math.floor((SCREEN_SIZE.x / 2) - (menu.w / 2))
menu.y = math.floor((SCREEN_SIZE.y / 2) - (menu.h / 2))

local Lerp = function(delta, from, to) -- wtf why were these globals thats so exploitable!
	if (delta > 1) then
		return to
	end
	if (delta < 0) then
		return from
	end
	return from + (to - from) * delta
end

local ColorRange = function(value, ranges) -- ty tony for dis function u a homie
	if value <= ranges[1].start then
		return ranges[1].color
	end
	if value >= ranges[#ranges].start then
		return ranges[#ranges].color
	end

	local selected = #ranges
	for i = 1, #ranges - 1 do
		if value < ranges[i + 1].start then
			selected = i
			break
		end
	end
	local minColor = ranges[selected]
	local maxColor = ranges[selected + 1]
	local lerpValue = (value - minColor.start) / (maxColor.start - minColor.start)
	return Color3.new(
		Lerp(lerpValue, minColor.color.r, maxColor.color.r),
		Lerp(lerpValue, minColor.color.g, maxColor.color.g),
		Lerp(lerpValue, minColor.color.b, maxColor.color.b)
	)
end

local bVector2 = {}
do -- vector functions
	function bVector2:getRotate(Vec, Rads)
		local vec = Vec.Unit
		--x2 = cos Î² x1 âˆ’ sin Î² y1
		--y2 = sin Î² x1 + cos Î² y1
		local sin = math.sin(Rads)
		local cos = math.cos(Rads)
		local x = (cos * vec.x) - (sin * vec.y)
		local y = (sin * vec.x) + (cos * vec.y)

		return Vector2.new(x, y).Unit * Vec.Magnitude
	end
end
local bColor = {}
do -- color functions
	function bColor:Mult(col, mult)
		return Color3.new(col.R * mult, col.G * mult, col.B * mult)
	end
	function bColor:Add(col, num)
		return Color3.new(col.R + num, col.G + num, col.B + num)
	end
end
local function string_cut(s1, num)
	return num == 0 and s1 or string.sub(s1, 1, num)
end

local textBoxLetters = {
	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"L",
	"M",
	"N",
	"O",
	"P",
	"Q",
	"R",
	"S",
	"T",
	"U",
	"V",
	"W",
	"X",
	"Y",
	"Z",
}

local keyNames = {
	One = "1",
	Two = "2",
	Three = "3",
	Four = "4",
	Five = "5",
	Six = "6",
	Seven = "7",
	Eight = "8",
	Nine = "9",
	Zero = "0",
	LeftBracket = "[",
	RightBracket = "]",
	Semicolon = ";",
	BackSlash = "\\",
	Slash = "/",
	Minus = "-",
	Equals = "=",
	Return = "Enter",
	Backquote = "`",
	CapsLock = "Caps",
	LeftShift = "LShift",
	RightShift = "RShift",
	LeftControl = "LCtrl",
	RightControl = "RCtrl",
	LeftAlt = "LAlt",
	RightAlt = "RAlt",
	Backspace = "Back",
	Plus = "+",
	Multiplaye = "x",
	PageUp = "PgUp",
	PageDown = "PgDown",
	Delete = "Del",
	Insert = "Ins",
	NumLock = "NumL",
	Comma = ",",
	Period = ".",
}
local colemak = {
	E = "F",
	R = "P",
	T = "G",
	Y = "J",
	U = "L",
	I = "U",
	O = "Y",
	P = ";",
	S = "R",
	D = "S",
	F = "T",
	G = "D",
	J = "N",
	K = "E",
	L = "I",
	[";"] = "O",
	N = "K",
}

local keymodifiernames = {
	["`"] = "~",
	["1"] = "!",
	["2"] = "@",
	["3"] = "#",
	["4"] = "$",
	["5"] = "%",
	["6"] = "^",
	["7"] = "&",
	["8"] = "*",
	["9"] = "(",
	["0"] = ")",
	["-"] = "_",
	["="] = "+",
	["["] = "{",
	["]"] = "}",
	["\\"] = "|",
	[";"] = ":",
	["'"] = '"',
	[","] = "<",
	["."] = ".",
	["/"] = "?",
}

local function KeyEnumToName(key) -- did this all in a function cuz why not
	if key == nil then
		return "None"
	end
	local _key = tostring(key) .. "."
	local _key = _key:gsub("%.", ",")
	local keyname = nil
	local looptime = 0
	for w in _key:gmatch("(.-),") do
		looptime = looptime + 1
		if looptime == 3 then
			keyname = w
		end
	end
	if string.match(keyname, "Keypad") then
		keyname = string.gsub(keyname, "Keypad", "")
	end

	if keyname == "Unknown" or key.Value == 27 then
		return "None"
	end

	if keyNames[keyname] then
		keyname = keyNames[keyname]
	end
    return keyname
end

local invalidfilekeys = {
	["\\"] = true,
	["/"] = true,
	[":"] = true,
	["*"] = true,
	["?"] = true,
	['"'] = true,
	["<"] = true,
	[">"] = true,
	["|"] = true,
}

local function KeyModifierToName(key, filename)
	if keymodifiernames[key] ~= nil then
		if filename then
			if invalidfilekeys[keymodifiernames[key]] then
				return ""
			else
				return keymodifiernames[key]
			end
		else
			return keymodifiernames[key]
		end
	else
		return ""
	end
end

local allrender = {}

local RGB = Color3.fromRGB
local Draw = {}
do
	function Draw:UnRender()
		for k, v in pairs(allrender) do
			for k1, v1 in pairs(v) do
				--warn(k1, v1)
				-- ANCHOR WHAT THE FUCK IS GOING ON WITH THIS WHY IS THIS ERRORING BECAUSE OF NUMBER
				if v1 and type(v1) ~= "number" and v1.__OBJECT_EXISTS then
					v1:Remove()
				else
					--rconsolewarn(tostring(k),tostring(v),tostring(k1),tostring(v1))
				end
			end
		end
	end

	function Draw:OutlinedRect(visible, pos_x, pos_y, width, height, clr, tablename)
		local temptable = Drawing.new("Square")
		temptable.Visible = visible
		temptable.Position = Vector2.new(pos_x, pos_y)
		temptable.Size = Vector2.new(width, height)
		temptable.Color = RGB(clr[1], clr[2], clr[3])
		temptable.Filled = false
		temptable.Thickness = 0
		temptable.Transparency = clr[4] / 255
		table.insert(tablename, temptable)
		if not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
	end

	function Draw:FilledRect(visible, pos_x, pos_y, width, height, clr, tablename)
		local temptable = Drawing.new("Square")
		temptable.Visible = visible
		temptable.Position = Vector2.new(pos_x, pos_y)
		temptable.Size = Vector2.new(width, height)
		temptable.Color = RGB(clr[1], clr[2], clr[3])
		temptable.Filled = true
		temptable.Thickness = 0
		temptable.Transparency = clr[4] / 255
		table.insert(tablename, temptable)
		if not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
	end

	function Draw:Line(visible, thickness, start_x, start_y, end_x, end_y, clr, tablename)
		temptable = Drawing.new("Line")
		temptable.Visible = visible
		temptable.Thickness = thickness
		temptable.From = Vector2.new(start_x, start_y)
		temptable.To = Vector2.new(end_x, end_y)
		temptable.Color = RGB(clr[1], clr[2], clr[3])
		temptable.Transparency = clr[4] / 255
		table.insert(tablename, temptable)
		if not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
	end

	function Draw:Image(visible, imagedata, pos_x, pos_y, width, height, transparency, tablename)
		local temptable = Drawing.new("Image")
		temptable.Visible = visible
		temptable.Position = Vector2.new(pos_x, pos_y)
		temptable.Size = Vector2.new(width, height)
		temptable.Transparency = transparency
		temptable.Data = imagedata or placeholderImage
		table.insert(tablename, temptable)
		if not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
	end

	function Draw:Text(text, font, visible, pos_x, pos_y, size, centered, clr, tablename)
		local temptable = Drawing.new("Text")
		temptable.Text = text
		temptable.Visible = visible
		temptable.Position = Vector2.new(pos_x, pos_y)
		temptable.Size = size
		temptable.Center = centered
		temptable.Color = RGB(clr[1], clr[2], clr[3])
		temptable.Transparency = clr[4] / 255
		temptable.Outline = false
		temptable.Font = font
		table.insert(tablename, temptable)
		if not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
	end

	function Draw:OutlinedText(text, font, visible, pos_x, pos_y, size, centered, clr, clr2, tablename)
		local temptable = Drawing.new("Text")
		temptable.Text = text
		temptable.Visible = visible
		temptable.Position = Vector2.new(pos_x, pos_y)
		temptable.Size = size
		temptable.Center = centered
		temptable.Color = RGB(clr[1], clr[2], clr[3])
		temptable.Transparency = clr[4] / 255
		temptable.Outline = true
		temptable.OutlineColor = RGB(clr2[1], clr2[2], clr2[3])
		temptable.Font = font
		if not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
		if tablename then
			table.insert(tablename, temptable)
		end
		return temptable
	end

	function Draw:Triangle(visible, filled, pa, pb, pc, clr, tablename)
		clr = clr or { 255, 255, 255, 1 }
		local temptable = Drawing.new("Triangle")
		temptable.Visible = visible
		temptable.Transparency = clr[4] or 1
		temptable.Color = RGB(clr[1], clr[2], clr[3])
		temptable.Thickness = 2.1
		if pa and pb and pc then
			temptable.PointA = Vector2.new(pa[1], pa[2])
			temptable.PointB = Vector2.new(pb[1], pb[2])
			temptable.PointC = Vector2.new(pc[1], pc[2])
		end
		temptable.Filled = filled
		table.insert(tablename, temptable)
		if tablename and not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
	end

	function Draw:Circle(visible, pos_x, pos_y, size, thickness, sides, clr, tablename)
		local temptable = Drawing.new("Circle")
		temptable.Position = Vector2.new(pos_x, pos_y)
		temptable.Visible = visible
		temptable.Radius = size
		temptable.Thickness = thickness
		temptable.NumSides = sides
		temptable.Transparency = clr[4]
		temptable.Filled = false
		temptable.Color = RGB(clr[1], clr[2], clr[3])
		table.insert(tablename, temptable)
		if not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
	end

	function Draw:FilledCircle(visible, pos_x, pos_y, size, thickness, sides, clr, tablename)
		local temptable = Drawing.new("Circle")
		temptable.Position = Vector2.new(pos_x, pos_y)
		temptable.Visible = visible
		temptable.Radius = size
		temptable.Thickness = thickness
		temptable.NumSides = sides
		temptable.Transparency = clr[4]
		temptable.Filled = true
		temptable.Color = RGB(clr[1], clr[2], clr[3])
		table.insert(tablename, temptable)
		if not table.find(allrender, tablename) then
			table.insert(allrender, tablename)
		end
	end

	--ANCHOR MENU ELEMENTS

	function Draw:MenuOutlinedRect(visible, pos_x, pos_y, width, height, clr, tablename)
		Draw:OutlinedRect(visible, pos_x + menu.x, pos_y + menu.y, width, height, clr, tablename)
		table.insert(menu.postable, { tablename[#tablename], pos_x, pos_y })

		if menu.log_multi ~= nil then
			table.insert(menu.mgrouptabz[menu.log_multi[1]][menu.log_multi[2]], tablename[#tablename])
		end
	end

	function Draw:MenuFilledRect(visible, pos_x, pos_y, width, height, clr, tablename)
		Draw:FilledRect(visible, pos_x + menu.x, pos_y + menu.y, width, height, clr, tablename)
		table.insert(menu.postable, { tablename[#tablename], pos_x, pos_y })

		if menu.log_multi ~= nil then
			table.insert(menu.mgrouptabz[menu.log_multi[1]][menu.log_multi[2]], tablename[#tablename])
		end
	end

	function Draw:MenuImage(visible, imagedata, pos_x, pos_y, width, height, transparency, tablename)
		Draw:Image(visible, imagedata, pos_x + menu.x, pos_y + menu.y, width, height, transparency, tablename)
		table.insert(menu.postable, { tablename[#tablename], pos_x, pos_y })

		if menu.log_multi ~= nil then
			table.insert(menu.mgrouptabz[menu.log_multi[1]][menu.log_multi[2]], tablename[#tablename])
		end
	end

	function Draw:MenuBigText(text, visible, centered, pos_x, pos_y, tablename)
		local text = Draw:OutlinedText(
			text,
			2,
			visible,
			pos_x + menu.x,
			pos_y + menu.y,
			13,
			centered,
			{ 255, 255, 255, 255 },
			{ 0, 0, 0 },
			tablename
		)
		table.insert(menu.postable, { tablename[#tablename], pos_x, pos_y })

		if menu.log_multi ~= nil then
			table.insert(menu.mgrouptabz[menu.log_multi[1]][menu.log_multi[2]], tablename[#tablename])
		end

		return text
	end

	function Draw:CoolBox(name, x, y, width, height, tab)
		Draw:MenuOutlinedRect(true, x, y, width, height, { 0, 0, 0, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 1, width - 2, height - 2, { 20, 20, 20, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 2, y + 2, width - 3, 1, { 155, 155, 255, 255 }, tab)
		table.insert(menu.clrs.norm, tab[#tab])
		Draw:MenuOutlinedRect(true, x + 2, y + 3, width - 3, 1, { 87, 32, 123, 255 }, tab)
		table.insert(menu.clrs.dark, tab[#tab])
		Draw:MenuOutlinedRect(true, x + 2, y + 4, width - 3, 1, { 20, 20, 20, 255 }, tab)

		for i = 0, 7 do
			Draw:MenuFilledRect(true, x + 2, y + 5 + (i * 2), width - 4, 2, { 45, 45, 45, 255 }, tab)
			tab[#tab].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(45, 45, 45) }, [2] = { start = 7, color = RGB(35, 35, 35) } }
			)
		end

		Draw:MenuBigText(name, true, false, x + 6, y + 5, tab)
	end

	function Draw:CoolMultiBox(names, x, y, width, height, tab)
		Draw:MenuOutlinedRect(true, x, y, width, height, { 0, 0, 0, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 1, width - 2, height - 2, { 20, 20, 20, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 2, y + 2, width - 3, 1, { 155, 155, 255, 255 }, tab)
		table.insert(menu.clrs.norm, tab[#tab])
		Draw:MenuOutlinedRect(true, x + 2, y + 3, width - 3, 1, { 87, 32, 123, 255 }, tab)
		table.insert(menu.clrs.dark, tab[#tab])
		Draw:MenuOutlinedRect(true, x + 2, y + 4, width - 3, 1, { 20, 20, 20, 255 }, tab)

		--{35, 35, 35, 255}

		Draw:MenuFilledRect(true, x + 2, y + 5, width - 4, 18, { 30, 30, 30, 255 }, tab)
		Draw:MenuFilledRect(true, x + 2, y + 21, width - 4, 2, { 20, 20, 20, 255 }, tab)

		local selected = {}
		for i = 0, 8 do
			Draw:MenuFilledRect(true, x + 2, y + 5 + (i * 2), width - 159, 2, { 45, 45, 45, 255 }, tab)
			tab[#tab].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(50, 50, 50) }, [2] = { start = 8, color = RGB(35, 35, 35) } }
			)
			table.insert(selected, { postable = #menu.postable, drawn = tab[#tab] })
		end

		local length = 2
		local selected_pos = {}
		local click_pos = {}
		local nametext = {}
		for i, v in ipairs(names) do
			Draw:MenuBigText(v, true, false, x + 4 + length, y + 5, tab)
			if i == 1 then
				tab[#tab].Color = RGB(255, 255, 255)
			else
				tab[#tab].Color = RGB(170, 170, 170)
			end
			table.insert(nametext, tab[#tab])

			Draw:MenuFilledRect(true, x + length + tab[#tab].TextBounds.X + 8, y + 5, 2, 16, { 20, 20, 20, 255 }, tab)
			table.insert(selected_pos, { pos = x + length, length = tab[#tab - 1].TextBounds.X + 8 })
			table.insert(click_pos, {
				x = x + length,
				y = y + 5,
				width = tab[#tab - 1].TextBounds.X + 8,
				height = 18,
				name = v,
				num = i,
			})
			length += tab[#tab - 1].TextBounds.X + 10
		end

		local settab = 1
		for k, v in pairs(selected) do
			menu.postable[v.postable][2] = selected_pos[settab].pos
			v.drawn.Size = Vector2.new(selected_pos[settab].length, 2)
		end

		return { bar = selected, barpos = selected_pos, click_pos = click_pos, nametext = nametext }

		--Draw:MenuBigText(str, true, false, x + 6, y + 5, tab)
	end

	function Draw:Toggle(name, value, unsafe, x, y, tab)
		Draw:MenuOutlinedRect(true, x, y, 12, 12, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 1, 10, 10, { 0, 0, 0, 255 }, tab)

		local temptable = {}
		for i = 0, 3 do
			Draw:MenuFilledRect(true, x + 2, y + 2 + (i * 2), 8, 2, { 0, 0, 0, 255 }, tab)
			table.insert(temptable, tab[#tab])
			if value then
				tab[#tab].Color = ColorRange(i, {
					[1] = { start = 0, color = RGB(menu.mc[1], menu.mc[2], menu.mc[3]) },
					[2] = { start = 3, color = RGB(menu.mc[1] - 40, menu.mc[2] - 40, menu.mc[3] - 40) },
				})
			else
				tab[#tab].Color = ColorRange(i, {
					[1] = { start = 0, color = RGB(50, 50, 50) },
					[2] = { start = 3, color = RGB(30, 30, 30) },
				})
			end
		end

		Draw:MenuBigText(name, true, false, x + 16, y - 1, tab)
		if unsafe == true then
			tab[#tab].Color = RGB(245, 239, 120)
		end
		table.insert(temptable, tab[#tab])
		return temptable
	end

	function Draw:Keybind(key, x, y, tab)
		local temptable = {}
		Draw:MenuFilledRect(true, x, y, 44, 16, { 25, 25, 25, 255 }, tab)
		Draw:MenuBigText(KeyEnumToName(key), true, true, x + 22, y + 1, tab)
		table.insert(temptable, tab[#tab])
		Draw:MenuOutlinedRect(true, x, y, 44, 16, { 30, 30, 30, 255 }, tab)
		table.insert(temptable, tab[#tab])
		Draw:MenuOutlinedRect(true, x + 1, y + 1, 42, 14, { 0, 0, 0, 255 }, tab)

		return temptable
	end

	function Draw:ColorPicker(color, x, y, tab)
		local temptable = {}

		Draw:MenuOutlinedRect(true, x, y, 28, 14, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 1, 26, 12, { 0, 0, 0, 255 }, tab)

		Draw:MenuFilledRect(true, x + 2, y + 2, 24, 10, { color[1], color[2], color[3], 255 }, tab)
		table.insert(temptable, tab[#tab])
		Draw:MenuOutlinedRect(true, x + 2, y + 2, 24, 10, { color[1] - 40, color[2] - 40, color[3] - 40, 255 }, tab)
		table.insert(temptable, tab[#tab])
		Draw:MenuOutlinedRect(true, x + 3, y + 3, 22, 8, { color[1] - 40, color[2] - 40, color[3] - 40, 255 }, tab)
		table.insert(temptable, tab[#tab])

		return temptable
	end

	function Draw:Slider(name, stradd, value, minvalue, maxvalue, customvals, rounded, x, y, length, tab)
		Draw:MenuBigText(name, true, false, x, y - 3, tab)

		for i = 0, 3 do
			Draw:MenuFilledRect(true, x + 2, y + 14 + (i * 2), length - 4, 2, { 0, 0, 0, 255 }, tab)
			tab[#tab].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(50, 50, 50) }, [2] = { start = 3, color = RGB(30, 30, 30) } }
			)
		end

		local temptable = {}
		for i = 0, 3 do
			Draw:MenuFilledRect(
				true,
				x + 2,
				y + 14 + (i * 2),
				(length - 4) * ((value - minvalue) / (maxvalue - minvalue)),
				2,
				{ 0, 0, 0, 255 },
				tab
			)
			table.insert(temptable, tab[#tab])
			tab[#tab].Color = ColorRange(i, {
				[1] = { start = 0, color = RGB(menu.mc[1], menu.mc[2], menu.mc[3]) },
				[2] = { start = 3, color = RGB(menu.mc[1] - 40, menu.mc[2] - 40, menu.mc[3] - 40) },
			})
		end
		Draw:MenuOutlinedRect(true, x, y + 12, length, 12, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 13, length - 2, 10, { 0, 0, 0, 255 }, tab)

		local textstr = ""

		if stradd == nil then
			stradd = ""
		end

		local decplaces = rounded and string.rep("0", math.log(1 / rounded) / math.log(10)) or 1
		if rounded and value == math.floor(value * decplaces) then
			textstr = tostring(value) .. "." .. decplaces .. stradd
		else
			textstr = tostring(value) .. stradd
		end

		Draw:MenuBigText(customvals[value] or textstr, true, true, x + (length * 0.5), y + 11, tab)
		table.insert(temptable, tab[#tab])
		table.insert(temptable, stradd)
		return temptable
	end

	function Draw:Dropbox(name, value, values, x, y, length, tab)
		local temptable = {}
		Draw:MenuBigText(name, true, false, x, y - 3, tab)

		for i = 0, 7 do
			Draw:MenuFilledRect(true, x + 2, y + 14 + (i * 2), length - 4, 2, { 0, 0, 0, 255 }, tab)
			tab[#tab].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(50, 50, 50) }, [2] = { start = 7, color = RGB(35, 35, 35) } }
			)
		end

		Draw:MenuOutlinedRect(true, x, y + 12, length, 22, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 13, length - 2, 20, { 0, 0, 0, 255 }, tab)

		Draw:MenuBigText(tostring(values[value]), true, false, x + 6, y + 16, tab)
		table.insert(temptable, tab[#tab])

		Draw:MenuBigText("-", true, false, x - 17 + length, y + 16, tab)
		table.insert(temptable, tab[#tab])

		return temptable
	end

	function Draw:Combobox(name, values, x, y, length, tab)
		local temptable = {}
		Draw:MenuBigText(name, true, false, x, y - 3, tab)

		for i = 0, 7 do
			Draw:MenuFilledRect(true, x + 2, y + 14 + (i * 2), length - 4, 2, { 0, 0, 0, 255 }, tab)
			tab[#tab].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(50, 50, 50) }, [2] = { start = 7, color = RGB(35, 35, 35) } }
			)
		end

		Draw:MenuOutlinedRect(true, x, y + 12, length, 22, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 13, length - 2, 20, { 0, 0, 0, 255 }, tab)
		local textthing = ""
		for k, v in pairs(values) do
			if v[2] then
				if textthing == "" then
					textthing = v[1]
				else
					textthing ..= ", " .. v[1]
				end
			end
		end
		textthing = string_cut(textthing, 25)
		textthing = textthing ~= "" and textthing or "None"
		Draw:MenuBigText(textthing, true, false, x + 6, y + 16, tab)
		table.insert(temptable, tab[#tab])

		Draw:MenuBigText("...", true, false, x - 27 + length, y + 16, tab)
		table.insert(temptable, tab[#tab])

		return temptable
	end

	function Draw:Button(name, x, y, length, tab)
		local temptable = {}

		for i = 0, 8 do
			Draw:MenuFilledRect(true, x + 2, y + 2 + (i * 2), length - 4, 2, { 0, 0, 0, 255 }, tab)
			tab[#tab].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(50, 50, 50) }, [2] = { start = 8, color = RGB(35, 35, 35) } }
			)
			table.insert(temptable, tab[#tab])
		end

		Draw:MenuOutlinedRect(true, x, y, length, 22, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 1, length - 2, 20, { 0, 0, 0, 255 }, tab)
		temptable.text = Draw:MenuBigText(name, true, true, x + math.floor(length * 0.5), y + 4, tab)

		return temptable
	end

	function Draw:List(name, x, y, length, maxamount, columns, tab)
		local temptable = { uparrow = {}, downarrow = {}, liststuff = { rows = {}, words = {} } }

		for i, v in ipairs(name) do
			Draw:MenuBigText(
				v,
				true,
				false,
				(math.floor(length / columns) * i) - math.floor(length / columns) + 30,
				y - 3,
				tab
			)
		end

		Draw:MenuOutlinedRect(true, x, y + 12, length, 22 * maxamount + 4, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 13, length - 2, 22 * maxamount + 2, { 0, 0, 0, 255 }, tab)

		Draw:MenuFilledRect(true, x + length - 7, y + 16, 1, 1, { menu.mc[1], menu.mc[2], menu.mc[3], 255 }, tab)
		table.insert(temptable.uparrow, tab[#tab])
		table.insert(menu.clrs.norm, tab[#tab])
		Draw:MenuFilledRect(true, x + length - 8, y + 17, 3, 1, { menu.mc[1], menu.mc[2], menu.mc[3], 255 }, tab)
		table.insert(temptable.uparrow, tab[#tab])
		table.insert(menu.clrs.norm, tab[#tab])
		Draw:MenuFilledRect(true, x + length - 9, y + 18, 5, 1, { menu.mc[1], menu.mc[2], menu.mc[3], 255 }, tab)
		table.insert(temptable.uparrow, tab[#tab])
		table.insert(menu.clrs.norm, tab[#tab])

		Draw:MenuFilledRect(
			true,
			x + length - 7,
			y + 16 + (22 * maxamount + 4) - 9,
			1,
			1,
			{ menu.mc[1], menu.mc[2], menu.mc[3], 255 },
			tab
		)
		table.insert(temptable.downarrow, tab[#tab])
		table.insert(menu.clrs.norm, tab[#tab])
		Draw:MenuFilledRect(
			true,
			x + length - 8,
			y + 16 + (22 * maxamount + 4) - 10,
			3,
			1,
			{ menu.mc[1], menu.mc[2], menu.mc[3], 255 },
			tab
		)
		table.insert(temptable.downarrow, tab[#tab])
		table.insert(menu.clrs.norm, tab[#tab])
		Draw:MenuFilledRect(
			true,
			x + length - 9,
			y + 16 + (22 * maxamount + 4) - 11,
			5,
			1,
			{ menu.mc[1], menu.mc[2], menu.mc[3], 255 },
			tab
		)
		table.insert(temptable.downarrow, tab[#tab])
		table.insert(menu.clrs.norm, tab[#tab])

		for i = 1, maxamount do
			temptable.liststuff.rows[i] = {}
			if i ~= maxamount then
				Draw:MenuOutlinedRect(true, x + 4, (y + 13) + (22 * i), length - 8, 2, { 20, 20, 20, 255 }, tab)
				table.insert(temptable.liststuff.rows[i], tab[#tab])
			end

			if columns ~= nil then
				for i1 = 1, columns - 1 do
					Draw:MenuOutlinedRect(
						true,
						x + math.floor(length / columns) * i1,
						(y + 13) + (22 * i) - 18,
						2,
						16,
						{ 20, 20, 20, 255 },
						tab
					)
					table.insert(temptable.liststuff.rows[i], tab[#tab])
				end
			end

			temptable.liststuff.words[i] = {}
			if columns ~= nil then
				for i1 = 1, columns do
					Draw:MenuBigText(
						"",
						true,
						false,
						(x + math.floor(length / columns) * i1) - math.floor(length / columns) + 5,
						(y + 13) + (22 * i) - 16,
						tab
					)
					table.insert(temptable.liststuff.words[i], tab[#tab])
				end
			else
				Draw:MenuBigText("", true, false, x + 5, (y + 13) + (22 * i) - 16, tab)
				table.insert(temptable.liststuff.words[i], tab[#tab])
			end
		end

		return temptable
	end

	function Draw:ImageWithText(size, image, text, x, y, tab)
		local temptable = {}
		Draw:MenuOutlinedRect(true, x, y, size + 4, size + 4, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 1, size + 2, size + 2, { 0, 0, 0, 255 }, tab)
		Draw:MenuFilledRect(true, x + 2, y + 2, size, size, { 40, 40, 40, 255 }, tab)

		Draw:MenuBigText(text, true, false, x + size + 8, y, tab)
		table.insert(temptable, tab[#tab])

		Draw:MenuImage(true, BBOT_IMAGES[5], x + 2, y + 2, size, size, 1, tab)
		table.insert(temptable, tab[#tab])

		return temptable
	end

	function Draw:TextBox(name, text, x, y, length, tab)
		for i = 0, 8 do
			Draw:MenuFilledRect(true, x + 2, y + 2 + (i * 2), length - 4, 2, { 0, 0, 0, 255 }, tab)
			tab[#tab].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(50, 50, 50) }, [2] = { start = 8, color = RGB(35, 35, 35) } }
			)
		end

		Draw:MenuOutlinedRect(true, x, y, length, 22, { 30, 30, 30, 255 }, tab)
		Draw:MenuOutlinedRect(true, x + 1, y + 1, length - 2, 20, { 0, 0, 0, 255 }, tab)
		Draw:MenuBigText(text, true, false, x + 6, y + 4, tab)

		return tab[#tab]
	end
end

--funny graf
local networkin = {
	incoming = {},
	outgoing = {},
}

for i = 1, 21 do
	networkin.incoming[i] = 20
	networkin.outgoing[i] = 2
end
local lasttick = tick()

local infopos = 400

local graphs = {
	incoming = {
		pos = {
			x = 35,
			y = infopos,
		},
		sides = {},
		graph = {},
	},
	outgoing = {
		pos = {
			x = 35,
			y = infopos + 97,
		},
		sides = {},
		graph = {},
	},
	other = {},
}
--- incoming
Draw:OutlinedText(
	"incoming kbps: 20",
	2,
	false,
	graphs.incoming.pos.x - 1,
	graphs.incoming.pos.y - 15,
	13,
	false,
	{ 255, 255, 255, 255 },
	{ 10, 10, 10 },
	graphs.incoming.sides
)
Draw:OutlinedText(
	"80",
	2,
	false,
	graphs.incoming.pos.x - 21,
	graphs.incoming.pos.y - 7,
	13,
	false,
	{ 255, 255, 255, 255 },
	{ 10, 10, 10 },
	graphs.incoming.sides
)

Draw:FilledRect(
	false,
	graphs.incoming.pos.x - 1,
	graphs.incoming.pos.y - 1,
	222,
	82,
	{ 10, 10, 10, 50 },
	graphs.incoming.sides
)

Draw:Line(
	false,
	3,
	graphs.incoming.pos.x,
	graphs.incoming.pos.y - 1,
	graphs.incoming.pos.x,
	graphs.incoming.pos.y + 82,
	{ 20, 20, 20, 225 },
	graphs.incoming.sides
)
Draw:Line(
	false,
	3,
	graphs.incoming.pos.x,
	graphs.incoming.pos.y + 80,
	graphs.incoming.pos.x + 221,
	graphs.incoming.pos.y + 80,
	{ 20, 20, 20, 225 },
	graphs.incoming.sides
)
Draw:Line(
	false,
	3,
	graphs.incoming.pos.x,
	graphs.incoming.pos.y,
	graphs.incoming.pos.x - 6,
	graphs.incoming.pos.y,
	{ 20, 20, 20, 225 },
	graphs.incoming.sides
)

Draw:Line(
	false,
	1,
	graphs.incoming.pos.x,
	graphs.incoming.pos.y,
	graphs.incoming.pos.x,
	graphs.incoming.pos.y + 80,
	{ 255, 255, 255, 225 },
	graphs.incoming.sides
)
Draw:Line(
	false,
	1,
	graphs.incoming.pos.x,
	graphs.incoming.pos.y + 80,
	graphs.incoming.pos.x + 220,
	graphs.incoming.pos.y + 80,
	{ 255, 255, 255, 225 },
	graphs.incoming.sides
)
Draw:Line(
	false,
	1,
	graphs.incoming.pos.x,
	graphs.incoming.pos.y,
	graphs.incoming.pos.x - 5,
	graphs.incoming.pos.y,
	{ 255, 255, 255, 225 },
	graphs.incoming.sides
)

for i = 1, 20 do
	Draw:Line(false, 1, 10, 10, 10, 10, { 255, 255, 255, 225 }, graphs.incoming.graph)
end

Draw:Line(false, 1, 10, 10, 10, 10, { 68, 255, 0, 255 }, graphs.incoming.graph)
Draw:OutlinedText("avg: 20", 2, false, 20, 20, 13, false, { 68, 255, 0, 255 }, { 10, 10, 10 }, graphs.incoming.graph)

--- outgoing
Draw:OutlinedText(
	"outgoing kbps: 5",
	2,
	false,
	graphs.outgoing.pos.x - 1,
	graphs.outgoing.pos.y - 15,
	13,
	false,
	{ 255, 255, 255, 255 },
	{ 10, 10, 10 },
	graphs.outgoing.sides
)
Draw:OutlinedText(
	"10",
	2,
	false,
	graphs.outgoing.pos.x - 21,
	graphs.outgoing.pos.y - 7,
	13,
	false,
	{ 255, 255, 255, 255 },
	{ 10, 10, 10 },
	graphs.outgoing.sides
)

Draw:FilledRect(
	false,
	graphs.outgoing.pos.x - 1,
	graphs.outgoing.pos.y - 1,
	222,
	82,
	{ 10, 10, 10, 50 },
	graphs.outgoing.sides
)

Draw:Line(
	false,
	3,
	graphs.outgoing.pos.x,
	graphs.outgoing.pos.y - 1,
	graphs.outgoing.pos.x,
	graphs.outgoing.pos.y + 82,
	{ 20, 20, 20, 225 },
	graphs.outgoing.sides
)
Draw:Line(
	false,
	3,
	graphs.outgoing.pos.x,
	graphs.outgoing.pos.y + 80,
	graphs.outgoing.pos.x + 221,
	graphs.outgoing.pos.y + 80,
	{ 20, 20, 20, 225 },
	graphs.outgoing.sides
)
Draw:Line(
	false,
	3,
	graphs.outgoing.pos.x,
	graphs.outgoing.pos.y,
	graphs.outgoing.pos.x - 6,
	graphs.outgoing.pos.y,
	{ 20, 20, 20, 225 },
	graphs.outgoing.sides
)

Draw:Line(
	false,
	1,
	graphs.outgoing.pos.x,
	graphs.outgoing.pos.y,
	graphs.outgoing.pos.x,
	graphs.outgoing.pos.y + 80,
	{ 255, 255, 255, 225 },
	graphs.outgoing.sides
)
Draw:Line(
	false,
	1,
	graphs.outgoing.pos.x,
	graphs.outgoing.pos.y + 80,
	graphs.outgoing.pos.x + 220,
	graphs.outgoing.pos.y + 80,
	{ 255, 255, 255, 225 },
	graphs.outgoing.sides
)
Draw:Line(
	false,
	1,
	graphs.outgoing.pos.x,
	graphs.outgoing.pos.y,
	graphs.outgoing.pos.x - 5,
	graphs.outgoing.pos.y,
	{ 255, 255, 255, 225 },
	graphs.outgoing.sides
)

for i = 1, 20 do
	Draw:Line(false, 1, 10, 10, 10, 10, { 255, 255, 255, 225 }, graphs.outgoing.graph)
end

Draw:Line(false, 1, 10, 10, 10, 10, { 68, 255, 0, 255 }, graphs.outgoing.graph)
Draw:OutlinedText("avg: 20", 2, false, 20, 20, 13, false, { 68, 255, 0, 255 }, { 10, 10, 10 }, graphs.outgoing.graph)
-- the fuckin fps and stuff i think xDDDDDd

Draw:OutlinedText(
	"loading...",
	2,
	false,
	35,
	infopos + 180,
	13,
	false,
	{ 255, 255, 255, 255 },
	{ 10, 10, 10 },
	graphs.other
)

Draw:OutlinedText(
	"[DEBUG LOGS]",
	2,
	false,
	35,
	infopos - 200,
	13,
	false,
	{ 255, 255, 255, 255 },
	{ 10, 10, 10 },
	graphs.other
)

-- finish

local loadingthing = Draw:OutlinedText(
	"Loading...",
	2,
	true,
	math.floor(SCREEN_SIZE.x / 16),
	math.floor(SCREEN_SIZE.y / 16),
	13,
	true,
	{ 255, 50, 200, 255 },
	{ 0, 0, 0 }
)

function menu.Initialize(menutable)
	local bbmenu = {} -- this one is for the rendering n shi
	do
		Draw:MenuOutlinedRect(true, 0, 0, menu.w, menu.h, { 0, 0, 0, 255 }, bbmenu) -- first gradent or whatever
		Draw:MenuOutlinedRect(true, 1, 1, menu.w - 2, menu.h - 2, { 20, 20, 20, 255 }, bbmenu)
		Draw:MenuOutlinedRect(true, 2, 2, menu.w - 3, 1, { 155, 155, 255, 255 }, bbmenu)
		table.insert(menu.clrs.norm, bbmenu[#bbmenu])
		Draw:MenuOutlinedRect(true, 2, 3, menu.w - 3, 1, { 87, 32, 123, 255 }, bbmenu)
		table.insert(menu.clrs.dark, bbmenu[#bbmenu])
		Draw:MenuOutlinedRect(true, 2, 4, menu.w - 3, 1, { 20, 20, 20, 255 }, bbmenu)

		for i = 0, 19 do
			Draw:MenuFilledRect(true, 2, 5 + i, menu.w - 4, 1, { 20, 20, 20, 255 }, bbmenu)
			bbmenu[6 + i].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(50, 50, 50) }, [2] = { start = 20, color = RGB(35, 35, 35) } }
			)
		end
		Draw:MenuFilledRect(true, 2, 25, menu.w - 4, menu.h - 27, { 35, 35, 35, 255 }, bbmenu)

		Draw:MenuBigText(MenuName or "Bitch Bot", true, false, 6, 6, bbmenu)

		Draw:MenuOutlinedRect(true, 8, 22, menu.w - 16, menu.h - 30, { 0, 0, 0, 255 }, bbmenu) -- all this shit does the 2nd gradent
		Draw:MenuOutlinedRect(true, 9, 23, menu.w - 18, menu.h - 32, { 20, 20, 20, 255 }, bbmenu)
		Draw:MenuOutlinedRect(true, 10, 24, menu.w - 19, 1, { 155, 155, 255, 255 }, bbmenu)
		table.insert(menu.clrs.norm, bbmenu[#bbmenu])
		Draw:MenuOutlinedRect(true, 10, 25, menu.w - 19, 1, { 87, 32, 123, 255 }, bbmenu)
		table.insert(menu.clrs.dark, bbmenu[#bbmenu])
		Draw:MenuOutlinedRect(true, 10, 26, menu.w - 19, 1, { 20, 20, 20, 255 }, bbmenu)

		for i = 0, 14 do
			Draw:MenuFilledRect(true, 10, 27 + (i * 2), menu.w - 20, 2, { 45, 45, 45, 255 }, bbmenu)
			bbmenu[#bbmenu].Color = ColorRange(
				i,
				{ [1] = { start = 0, color = RGB(50, 50, 50) }, [2] = { start = 15, color = RGB(35, 35, 35) } }
			)
		end
		Draw:MenuFilledRect(true, 10, 57, menu.w - 20, menu.h - 67, { 35, 35, 35, 255 }, bbmenu)
	end
	-- ok now the cool part :D
	--ANCHOR menu stuffz

	local tabz = {}
	for i = 1, #menutable do
		tabz[i] = {}
	end

	local tabs = {} -- i like tabby catz ðŸ±ðŸ±ðŸ±

	menu.multigroups = {}

	for k, v in pairs(menutable) do
		Draw:MenuFilledRect(
			true,
			10 + ((k - 1) * ((menu.w - 20) / #menutable)),
			27,
			((menu.w - 20) / #menutable),
			32,
			{ 30, 30, 30, 255 },
			bbmenu
		)
		Draw:MenuOutlinedRect(
			true,
			10 + ((k - 1) * ((menu.w - 20) / #menutable)),
			27,
			((menu.w - 20) / #menutable),
			32,
			{ 20, 20, 20, 255 },
			bbmenu
		)
		Draw:MenuBigText(
			v.name,
			true,
			true,
			math.floor(10 + ((k - 1) * ((menu.w - 20) / #menutable)) + (((menu.w - 20) / #menutable) * 0.5)),
			35,
			bbmenu
		)
		table.insert(tabs, { bbmenu[#bbmenu - 2], bbmenu[#bbmenu - 1], bbmenu[#bbmenu] })
		table.insert(menu.tabnames, v.name)

		menu.options[v.name] = {}
		menu.multigroups[v.name] = {}
		menu.mgrouptabz[v.name] = {}

		local y_offies = { left = 66, right = 66 }
		if v.content ~= nil then
			for k1, v1 in pairs(v.content) do
				if v1.autopos ~= nil then
					v1.width = menu.columns.width
					if v1.autopos == "left" then
						v1.x = menu.columns.left
						v1.y = y_offies.left
					elseif v1.autopos == "right" then
						v1.x = menu.columns.right
						v1.y = y_offies.right
					end
				end

				local groups = {}

				if type(v1.name) == "table" then
					groups = v1.name
				else
					table.insert(groups, v1.name)
				end

				local y_pos = 24

				for g_ind, g_name in ipairs(groups) do
					menu.options[v.name][g_name] = {}
					if type(v1.name) == "table" then
						menu.mgrouptabz[v.name][g_name] = {}
						menu.log_multi = { v.name, g_name }
					end

					local content = nil
					if type(v1.name) == "table" then
						y_pos = 28
						content = v1[g_ind].content
					else
						y_pos = 24
						content = v1.content
					end


					if content ~= nil then
						for k2, v2 in pairs(content) do
							if v2.type == TOGGLE then
								menu.options[v.name][g_name][v2.name] = {}
								local unsafe = false
								if v2.unsafe then
									unsafe = true
								end
								menu.options[v.name][g_name][v2.name][4] = Draw:Toggle(v2.name, v2.value, unsafe, v1.x + 8, v1.y + y_pos, tabz[k])
								menu.options[v.name][g_name][v2.name][1] = v2.value
								menu.options[v.name][g_name][v2.name][7] = v2.value
								menu.options[v.name][g_name][v2.name][2] = v2.type
								menu.options[v.name][g_name][v2.name][3] = { v1.x + 7, v1.y + y_pos - 1 }
								menu.options[v.name][g_name][v2.name][6] = unsafe
								menu.options[v.name][g_name][v2.name].tooltip = v2.tooltip or nil
								if v2.extra ~= nil then
									if v2.extra.type == KEYBIND then
										menu.options[v.name][g_name][v2.name][5] = {}
										menu.options[v.name][g_name][v2.name][5][4] = Draw:Keybind(
											v2.extra.key,
											v1.x + v1.width - 52,
											y_pos + v1.y - 2,
											tabz[k]
										)
										menu.options[v.name][g_name][v2.name][5][1] = v2.extra.key
										menu.options[v.name][g_name][v2.name][5][2] = v2.extra.type
										menu.options[v.name][g_name][v2.name][5][3] = { v1.x + v1.width - 52, y_pos + v1.y - 2 }
										menu.options[v.name][g_name][v2.name][5][5] = false
										menu.options[v.name][g_name][v2.name][5].toggletype = v2.extra.toggletype == nil and 1 or v2.extra.toggletype
										menu.options[v.name][g_name][v2.name][5].relvalue = false
										local event = event.new(("%s %s %s"):format(v.name, g_name, v2.name))
										event:connect(function(newval)
											if menu:GetVal("Visuals", "Interface" ,"Log Keybinds") then
												CreateNotification(("%s %s %s has been set to %s"):format(v.name, g_name, v2.name, newval and "true" or "false"))
											end
										end)
										menu.options[v.name][g_name][v2.name][5].event = event
										menu.options[v.name][g_name][v2.name][5].bind = table.insert(menu.keybinds, {
												menu.options[v.name][g_name][v2.name],
												tostring(v2.name),
												tostring(g_name),
												tostring(v.name),
											})
									elseif v2.extra.type == COLORPICKER then
										menu.options[v.name][g_name][v2.name][5] = {}
										menu.options[v.name][g_name][v2.name][5][4] = Draw:ColorPicker(
											v2.extra.color,
											v1.x + v1.width - 38,
											y_pos + v1.y - 1,
											tabz[k]
										)
										menu.options[v.name][g_name][v2.name][5][1] = v2.extra.color
										menu.options[v.name][g_name][v2.name][5][2] = v2.extra.type
										menu.options[v.name][g_name][v2.name][5][3] = { v1.x + v1.width - 38, y_pos + v1.y - 1 }
										menu.options[v.name][g_name][v2.name][5][5] = false
										menu.options[v.name][g_name][v2.name][5][6] = v2.extra.name
									elseif v2.extra.type == DOUBLE_COLORPICKER then
										menu.options[v.name][g_name][v2.name][5] = {}
										menu.options[v.name][g_name][v2.name][5][1] = {}
										menu.options[v.name][g_name][v2.name][5][1][1] = {}
										menu.options[v.name][g_name][v2.name][5][1][2] = {}
										menu.options[v.name][g_name][v2.name][5][2] = v2.extra.type
										for i = 1, 2 do
											menu.options[v.name][g_name][v2.name][5][1][i][4] = Draw:ColorPicker(
												v2.extra.color[i],
												v1.x + v1.width - 38 - ((i - 1) * 34),
												y_pos + v1.y - 1,
												tabz[k]
											)
											menu.options[v.name][g_name][v2.name][5][1][i][1] = v2.extra.color[i]
											menu.options[v.name][g_name][v2.name][5][1][i][3] = { v1.x + v1.width - 38 - ((i - 1) * 34), y_pos + v1.y - 1 }
											menu.options[v.name][g_name][v2.name][5][1][i][5] = false
											menu.options[v.name][g_name][v2.name][5][1][i][6] = v2.extra.name[i]
										end
									end
								end
								y_pos += 18
							elseif v2.type == SLIDER then
								menu.options[v.name][g_name][v2.name] = {}
								menu.options[v.name][g_name][v2.name][4] = Draw:Slider(
									v2.name,
									v2.stradd,
									v2.value,
									v2.minvalue,
									v2.maxvalue,
									v2.custom or {},
									v2.decimal,
									v1.x + 8,
									v1.y + y_pos,
									v1.width - 16,
									tabz[k]
								)
								menu.options[v.name][g_name][v2.name][1] = v2.value
								menu.options[v.name][g_name][v2.name][2] = v2.type
								menu.options[v.name][g_name][v2.name][3] = { v1.x + 7, v1.y + y_pos - 1, v1.width - 16 }
								menu.options[v.name][g_name][v2.name][5] = false
								menu.options[v.name][g_name][v2.name][6] = { v2.minvalue, v2.maxvalue }
								menu.options[v.name][g_name][v2.name][7] = { v1.x + 7 + v1.width - 38, v1.y + y_pos - 1 }
								menu.options[v.name][g_name][v2.name].decimal = v2.decimal == nil and nil or v2.decimal
								menu.options[v.name][g_name][v2.name].stepsize = v2.stepsize
								menu.options[v.name][g_name][v2.name].shift_stepsize = v2.shift_stepsize
								menu.options[v.name][g_name][v2.name].custom = v2.custom or {}

								y_pos += 30
							elseif v2.type == DROPBOX then
								menu.options[v.name][g_name][v2.name] = {}
								menu.options[v.name][g_name][v2.name][1] = v2.value
								menu.options[v.name][g_name][v2.name][2] = v2.type
								menu.options[v.name][g_name][v2.name][5] = false
								menu.options[v.name][g_name][v2.name][6] = v2.values

								if v2.x == nil then
									menu.options[v.name][g_name][v2.name][3] = { v1.x + 7, v1.y + y_pos - 1, v1.width - 16 }
									menu.options[v.name][g_name][v2.name][4] = Draw:Dropbox(
										v2.name,
										v2.value,
										v2.values,
										v1.x + 8,
										v1.y + y_pos,
										v1.width - 16,
										tabz[k]
									)
									y_pos += 40
								else
									menu.options[v.name][g_name][v2.name][3] = { v2.x + 7, v2.y - 1, v2.w }
									menu.options[v.name][g_name][v2.name][4] = Draw:Dropbox(v2.name, v2.value, v2.values, v2.x + 8, v2.y, v2.w, tabz[k])
								end
							elseif v2.type == COMBOBOX then
								menu.options[v.name][g_name][v2.name] = {}
								menu.options[v.name][g_name][v2.name][4] = Draw:Combobox(
										v2.name,
										v2.values,
										v1.x + 8,
										v1.y + y_pos,
										v1.width - 16,
										tabz[k]
									)
								menu.options[v.name][g_name][v2.name][1] = v2.values
								menu.options[v.name][g_name][v2.name][2] = v2.type
								menu.options[v.name][g_name][v2.name][3] = { v1.x + 7, v1.y + y_pos - 1, v1.width - 16 }
								menu.options[v.name][g_name][v2.name][5] = false
								y_pos += 40
							elseif v2.type == BUTTON then
								menu.options[v.name][g_name][v2.name] = {}
								menu.options[v.name][g_name][v2.name][1] = false
								menu.options[v.name][g_name][v2.name][2] = v2.type
								menu.options[v.name][g_name][v2.name].name = v2.name
								menu.options[v.name][g_name][v2.name].groupbox = g_name
								menu.options[v.name][g_name][v2.name].tab = v.name -- why is it all v, v1, v2 so ugly
								menu.options[v.name][g_name][v2.name].doubleclick = v2.doubleclick

								if v2.x == nil then
									menu.options[v.name][g_name][v2.name][3] = { v1.x + 7, v1.y + y_pos - 1, v1.width - 16 }
									menu.options[v.name][g_name][v2.name][4] = Draw:Button(v2.name, v1.x + 8, v1.y + y_pos, v1.width - 16, tabz[k])
									y_pos += 28
								else
									menu.options[v.name][g_name][v2.name][3] = { v2.x + 7, v2.y - 1, v2.w }
									menu.options[v.name][g_name][v2.name][4] = Draw:Button(v2.name, v2.x + 8, v2.y, v2.w, tabz[k])
								end
							elseif v2.type == TEXTBOX then
								menu.options[v.name][g_name][v2.name] = {}
								menu.options[v.name][g_name][v2.name][4] = Draw:TextBox(v2.name, v2.text, v1.x + 8, v1.y + y_pos, v1.width - 16, tabz[k])
								menu.options[v.name][g_name][v2.name][1] = v2.text
								menu.options[v.name][g_name][v2.name][2] = v2.type
								menu.options[v.name][g_name][v2.name][3] = { v1.x + 7, v1.y + y_pos - 1, v1.width - 16 }
								menu.options[v.name][g_name][v2.name][5] = false
								menu.options[v.name][g_name][v2.name][6] = v2.file and true or false
								y_pos += 28
							elseif v2.type == "list" then
								menu.options[v.name][g_name][v2.name] = {}
								menu.options[v.name][g_name][v2.name][4] = Draw:List(
									v2.multiname,
									v1.x + 8,
									v1.y + y_pos,
									v1.width - 16,
									v2.size,
									v2.columns,
									tabz[k]
								)
								menu.options[v.name][g_name][v2.name][1] = nil
								menu.options[v.name][g_name][v2.name][2] = v2.type
								menu.options[v.name][g_name][v2.name][3] = 1
								menu.options[v.name][g_name][v2.name][5] = {}
								menu.options[v.name][g_name][v2.name][6] = v2.size
								menu.options[v.name][g_name][v2.name][7] = v2.columns
								menu.options[v.name][g_name][v2.name][8] = { v1.x + 8, v1.y + y_pos, v1.width - 16 }
								y_pos += 22 + (22 * v2.size)
							elseif v2.type == IMAGE then
								menu.options[v.name][g_name][v2.name] = {}
								menu.options[v.name][g_name][v2.name][1] = Draw:ImageWithText(v2.size, nil, v2.text, v1.x + 8, v1.y + y_pos, tabz[k])
								menu.options[v.name][g_name][v2.name][2] = v2.type
							end
						end
					end

					menu.log_multi = nil
				end

				y_pos += 2

				if type(v1.name) ~= "table" then
					if v1.autopos == nil then
						Draw:CoolBox(v1.name, v1.x, v1.y, v1.width, v1.height, tabz[k])
					else
						if v1.autofill then
							y_pos = (menu.h - 17) - v1.y
						elseif v1.size ~= nil then
							y_pos = v1.size
						end
						Draw:CoolBox(v1.name, v1.x, v1.y, v1.width, y_pos, tabz[k])
						y_offies[v1.autopos] += y_pos + 6
					end
				else
					if v1.autofill then
						y_pos = (menu.h - 17) - v1.y
						y_offies[v1.autopos] += y_pos + 6
					elseif v1.size ~= nil then
						y_pos = v1.size
						y_offies[v1.autopos] += y_pos + 6
					end

					local drawn

					if v1.autopos == nil then
						drawn = Draw:CoolMultiBox(v1.name, v1.x, v1.y, v1.width, v1.height, tabz[k])
					else
						drawn = Draw:CoolMultiBox(v1.name, v1.x, v1.y, v1.width, y_pos, tabz[k])
					end

					local group_vals = {}

					for _i, _v in ipairs(v1.name) do
						if _i == 1 then
							group_vals[_v] = true
						else
							group_vals[_v] = false
						end
					end
					table.insert(menu.multigroups[v.name], { vals = group_vals, drawn = drawn })
				end
			end
		end
	end

	menu.list.addval = function(list, option)
		table.insert(list[5], option)
	end

	menu.list.removeval = function(list, optionnum)
		if list[1] == optionnum then
			list[1] = nil
		end
		table.remove(list[5], optionnum)
	end

	menu.list.removeall = function(list)
		list[5] = {}
		for k, v in pairs(list[4].liststuff) do
			for i, v1 in ipairs(v) do
				for i1, v2 in ipairs(v1) do
					v2.Visible = false
				end
			end
		end
	end

	menu.list.setval = function(list, value)
		list[1] = value
	end

	Draw:MenuOutlinedRect(true, 10, 59, menu.w - 20, menu.h - 69, { 20, 20, 20, 255 }, bbmenu)

	Draw:MenuOutlinedRect(true, 11, 58, ((menu.w - 20) / #menutable) - 2, 2, { 35, 35, 35, 255 }, bbmenu)
	local barguy = { bbmenu[#bbmenu], menu.postable[#menu.postable] }

	local function setActiveTab(slot)
		barguy[1].Position = Vector2.new(
			(menu.x + 11 + ((((menu.w - 20) / #menutable) - 2) * (slot - 1))) + ((slot - 1) * 2),
			menu.y + 58
		)
		barguy[2][2] = (11 + ((((menu.w - 20) / #menutable) - 2) * (slot - 1))) + ((slot - 1) * 2)
		barguy[2][3] = 58

		for k, v in pairs(tabs) do
			if k == slot then
				v[1].Visible = false
				v[3].Color = RGB(255, 255, 255)
			else
				v[3].Color = RGB(170, 170, 170)
				v[1].Visible = true
			end
		end

		for k, v in pairs(tabz) do
			if k == slot then
				for k1, v1 in pairs(v) do
					v1.Visible = true
				end
			else
				for k1, v1 in pairs(v) do
					v1.Visible = false
				end
			end
		end

		for k, v in pairs(menu.multigroups) do
			if menu.tabnames[menu.activetab] == k then
				for k1, v1 in pairs(v) do
					for k2, v2 in pairs(v1.vals) do
						for k3, v3 in pairs(menu.mgrouptabz[k][k2]) do
							v3.Visible = v2
						end
					end
				end
			end
		end
	end

	setActiveTab(menu.activetab)

	local plusminus = {}

	Draw:OutlinedText("_", 1, false, 10, 10, 14, false, { 225, 225, 225, 255 }, { 20, 20, 20 }, plusminus)
	Draw:OutlinedText("+", 1, false, 10, 10, 14, false, { 225, 225, 225, 255 }, { 20, 20, 20 }, plusminus)

	function menu:SetPlusMinus(value, x, y)
		for i, v in ipairs(plusminus) do
			if value == 0 then
				v.Visible = false
			else
				v.Visible = true
			end
		end

		if value ~= 0 then
			plusminus[1].Position = Vector2.new(x + 3 + menu.x, y - 5 + menu.y)
			plusminus[2].Position = Vector2.new(x + 13 + menu.x, y - 1 + menu.y)

			if value == 1 then
				for i, v in ipairs(plusminus) do
					v.Color = RGB(225, 225, 225)
					v.OutlineColor = RGB(20, 20, 20)
				end
			else
				for i, v in ipairs(plusminus) do
					if i + 1 == value then
						v.Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
					else
						v.Color = RGB(255, 255, 255)
					end
					v.OutlineColor = RGB(0, 0, 0)
				end
			end
		end
	end

	menu:SetPlusMinus(0, 20, 20)

	--DROP BOX THINGY
	local dropboxthingy = {}
	local dropboxtexty = {}

	Draw:OutlinedRect(false, 20, 20, 100, 22, { 20, 20, 20, 255 }, dropboxthingy)
	Draw:OutlinedRect(false, 21, 21, 98, 20, { 0, 0, 0, 255 }, dropboxthingy)
	Draw:FilledRect(false, 22, 22, 96, 18, { 45, 45, 45, 255 }, dropboxthingy)

	for i = 1, 30 do
		Draw:OutlinedText("", 2, false, 20, 20, 13, false, { 255, 255, 255, 255 }, { 0, 0, 0 }, dropboxtexty)
	end

	function menu:SetDropBox(visible, x, y, length, value, values)
		for k, v in pairs(dropboxthingy) do
			v.Visible = visible
		end

		local size = Vector2.new(length, 21 * (#values + 1) + 3)
		-- if y + size.y > SCREEN_SIZE.y then
		-- 	y = SCREEN_SIZE.y - size.y
		-- end
		-- if x + size.x > SCREEN_SIZE.x then
		-- 	x = SCREEN_SIZE.x - size.x
		-- end
		-- if y < 0 then
		-- 	y = 0
		-- end
		-- if x < 0 then
		-- 	x = 0
		-- end

		local pos = Vector2.new(x, y)
		dropboxthingy[1].Position = pos
		dropboxthingy[2].Position = Vector2.new(x + 1, y + 1)
		dropboxthingy[3].Position = Vector2.new(x + 2, y + 22)

		dropboxthingy[1].Size = size
		dropboxthingy[2].Size = Vector2.new(length - 2, (21 * (#values + 1)) + 1)
		dropboxthingy[3].Size = Vector2.new(length - 4, (21 * #values) + 1 - 1)



		if visible then
			for i = 1, #values do
				dropboxtexty[i].Position = Vector2.new(x + 6, y + 26 + ((i - 1) * 21))
				dropboxtexty[i].Visible = true
				dropboxtexty[i].Text = values[i]
				if i == value then
					dropboxtexty[i].Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
				else
					dropboxtexty[i].Color = RGB(255, 255, 255)
				end
			end
		else
			for k, v in pairs(dropboxtexty) do
				v.Visible = false
			end
		end
		return pos
	end

	local function set_comboboxthingy(visible, x, y, length, values)
		for k, v in pairs(dropboxthingy) do
			v.Visible = visible
		end
		local size = Vector2.new(length, 22 * (#values + 1) + 2)

		if y + size.y > SCREEN_SIZE.y then
			y = SCREEN_SIZE.y - size.y
		end
		if x + size.x > SCREEN_SIZE.x then
			x = SCREEN_SIZE.x - size.x
		end
		if y < 0 then
			y = 0
		end
		if x < 0 then
			x = 0
		end
		local pos = Vector2.new(x,y)
		dropboxthingy[1].Position = pos
		dropboxthingy[2].Position = Vector2.new(x + 1, y + 1)
		dropboxthingy[3].Position = Vector2.new(x + 2, y + 22)

		dropboxthingy[1].Size = size
		dropboxthingy[2].Size = Vector2.new(length - 2, (22 * (#values + 1)))
		dropboxthingy[3].Size = Vector2.new(length - 4, (22 * #values))

		if visible then
			for i = 1, #values do
				dropboxtexty[i].Position = Vector2.new(x + 6, y + 26 + ((i - 1) * 22))
				dropboxtexty[i].Visible = true
				dropboxtexty[i].Text = values[i][1]
				if values[i][2] then
					dropboxtexty[i].Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
				else
					dropboxtexty[i].Color = RGB(255, 255, 255)
				end
			end
		else
			for k, v in pairs(dropboxtexty) do
				v.Visible = false
			end
		end
		return pos
	end

	menu:SetDropBox(false, 400, 200, 160, 1, { "HI q", "HI q", "HI q" })

	--MODE SELECT THING
	local modeselect = {}

	Draw:OutlinedRect(false, 20, 20, 100, 22, { 20, 20, 20, 255 }, modeselect)
	Draw:OutlinedRect(false, 21, 21, 98, 20, { 0, 0, 0, 255 }, modeselect)
	Draw:FilledRect(false, 22, 22, 96, 18, { 45, 45, 45, 255 }, modeselect)

	local modeselecttext = { "Hold", "Toggle", "Hold Off", "Always" }
	for i = 1, 4 do
		Draw:OutlinedText(
			modeselecttext[i],
			2,
			false,
			20,
			20,
			13,
			false,
			{ 255, 255, 255, 255 },
			{ 0, 0, 0 },
			modeselect
		)
	end

	function menu:SetKeybindSelect(visible, x, y, value)
		for k, v in pairs(modeselect) do
			v.Visible = visible
		end

		if visible then
			modeselect[1].Position = Vector2.new(x, y)
			modeselect[2].Position = Vector2.new(x + 1, y + 1)
			modeselect[3].Position = Vector2.new(x + 2, y + 2)

			modeselect[1].Size = Vector2.new(70, 22 * 4 - 1)
			modeselect[2].Size = Vector2.new(70 - 2, 22 * 4 - 3)
			modeselect[3].Size = Vector2.new(70 - 4, 22 * 4 - 5)

			for i = 1, 4 do
				modeselect[i + 3].Position = Vector2.new(x + 6, y + 4 + ((i - 1) * 21))
				if value == i then
					modeselect[i + 3].Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
				else
					modeselect[i + 3].Color = RGB(255, 255, 255)
				end
			end
		end
	end

	menu:SetKeybindSelect(false, 200, 400, 1)

	--COLOR PICKER
	local cp = {
		x = 400,
		y = 40,
		w = 280,
		h = 211,
		alpha = false,
		dragging_m = false,
		dragging_r = false,
		dragging_b = false,
		hsv = {
			h = 0,
			s = 0,
			v = 0,
			a = 0,
		},
		postable = {},
		drawings = {},
	}

	local function ColorpickerOutline(visible, pos_x, pos_y, width, height, clr, tablename) -- doing all this shit to make it easier for me to make this beat look nice and shit ya fell dog :dog_head:
		Draw:OutlinedRect(visible, pos_x + cp.x, pos_y + cp.y, width, height, clr, tablename)
		table.insert(cp.postable, { tablename[#tablename], pos_x, pos_y })
	end

	local function ColorpickerRect(visible, pos_x, pos_y, width, height, clr, tablename)
		Draw:FilledRect(visible, pos_x + cp.x, pos_y + cp.y, width, height, clr, tablename)
		table.insert(cp.postable, { tablename[#tablename], pos_x, pos_y })
	end

	local function ColorpickerImage(visible, imagedata, pos_x, pos_y, width, height, transparency, tablename)
		Draw:Image(visible, imagedata, pos_x, pos_y, width, height, transparency, tablename)
		table.insert(cp.postable, { tablename[#tablename], pos_x, pos_y })
	end

	local function ColorpickerText(text, visible, centered, pos_x, pos_y, tablename)
		Draw:OutlinedText(
			text,
			2,
			visible,
			pos_x + cp.x,
			pos_y + cp.y,
			13,
			centered,
			{ 255, 255, 255, 255 },
			{ 0, 0, 0 },
			tablename
		)
		table.insert(cp.postable, { tablename[#tablename], pos_x, pos_y })
	end

	ColorpickerRect(false, 1, 1, cp.w, cp.h, { 35, 35, 35, 255 }, cp.drawings)
	ColorpickerOutline(false, 1, 1, cp.w, cp.h, { 0, 0, 0, 255 }, cp.drawings)
	ColorpickerOutline(false, 2, 2, cp.w - 2, cp.h - 2, { 20, 20, 20, 255 }, cp.drawings)
	ColorpickerOutline(false, 3, 3, cp.w - 3, 1, { 155, 155, 255, 255 }, cp.drawings)
	table.insert(menu.clrs.norm, cp.drawings[#cp.drawings])
	ColorpickerOutline(false, 3, 4, cp.w - 3, 1, { 87, 32, 123, 255 }, cp.drawings)
	table.insert(menu.clrs.dark, cp.drawings[#cp.drawings])
	ColorpickerOutline(false, 3, 5, cp.w - 3, 1, { 20, 20, 20, 255 }, cp.drawings)
	ColorpickerText("color picker :D", false, false, 7, 6, cp.drawings)

	ColorpickerText("x", false, false, 268, 4, cp.drawings)

	ColorpickerOutline(false, 10, 23, 160, 160, { 30, 30, 30, 255 }, cp.drawings)
	ColorpickerOutline(false, 11, 24, 158, 158, { 0, 0, 0, 255 }, cp.drawings)
	ColorpickerRect(false, 12, 25, 156, 156, { 0, 0, 0, 255 }, cp.drawings)
	local maincolor = cp.drawings[#cp.drawings]
	ColorpickerImage(false, BBOT_IMAGES[1], 12, 25, 156, 156, 1, cp.drawings)

	--https://i.imgur.com/jG3NjxN.png
	local alphabar = {}
	ColorpickerOutline(false, 10, 189, 160, 14, { 30, 30, 30, 255 }, cp.drawings)
	table.insert(alphabar, cp.drawings[#cp.drawings])
	ColorpickerOutline(false, 11, 190, 158, 12, { 0, 0, 0, 255 }, cp.drawings)
	table.insert(alphabar, cp.drawings[#cp.drawings])
	ColorpickerImage(false, BBOT_IMAGES[2], 12, 191, 159, 10, 1, cp.drawings)
	table.insert(alphabar, cp.drawings[#cp.drawings])

	ColorpickerOutline(false, 176, 23, 14, 160, { 30, 30, 30, 255 }, cp.drawings)
	ColorpickerOutline(false, 177, 24, 12, 158, { 0, 0, 0, 255 }, cp.drawings)
	--https://i.imgur.com/2Ty4u2O.png
	ColorpickerImage(false, BBOT_IMAGES[3], 178, 25, 10, 156, 1, cp.drawings)

	ColorpickerText("New Color", false, false, 198, 23, cp.drawings)
	ColorpickerOutline(false, 197, 37, 75, 40, { 30, 30, 30, 255 }, cp.drawings)
	ColorpickerOutline(false, 198, 38, 73, 38, { 0, 0, 0, 255 }, cp.drawings)
	ColorpickerImage(false, BBOT_IMAGES[4], 199, 39, 71, 36, 1, cp.drawings)

	ColorpickerRect(false, 199, 39, 71, 36, { 255, 0, 0, 255 }, cp.drawings)
	local newcolor = cp.drawings[#cp.drawings]

	ColorpickerText("copy", false, true, 198 + 36, 41, cp.drawings)
	ColorpickerText("paste", false, true, 198 + 37, 56, cp.drawings)
	local newcopy = { cp.drawings[#cp.drawings - 1], cp.drawings[#cp.drawings] }

	ColorpickerText("Old Color", false, false, 198, 77, cp.drawings)
	ColorpickerOutline(false, 197, 91, 75, 40, { 30, 30, 30, 255 }, cp.drawings)
	ColorpickerOutline(false, 198, 92, 73, 38, { 0, 0, 0, 255 }, cp.drawings)
	ColorpickerImage(false, BBOT_IMAGES[4], 199, 93, 71, 36, 1, cp.drawings)

	ColorpickerRect(false, 199, 93, 71, 36, { 255, 0, 0, 255 }, cp.drawings)
	local oldcolor = cp.drawings[#cp.drawings]

	ColorpickerText("copy", false, true, 198 + 36, 103, cp.drawings)
	local oldcopy = { cp.drawings[#cp.drawings] }

	--ColorpickerRect(false, 197, cp.h - 25, 75, 20, {30, 30, 30, 255}, cp.drawings)
	ColorpickerText("[ Apply ]", false, true, 235, cp.h - 23, cp.drawings)
	local applytext = cp.drawings[#cp.drawings]

	local function set_newcolor(r, g, b, a)
		newcolor.Color = RGB(r, g, b)
		if a ~= nil then
			newcolor.Transparency = a / 255
		else
			newcolor.Transparency = 1
		end
	end

	local function set_oldcolor(r, g, b, a)
		oldcolor.Color = RGB(r, g, b)
		cp.oldcolor = oldcolor.Color
		cp.oldcoloralpha = a
		if a ~= nil then
			oldcolor.Transparency = a / 255
		else
			oldcolor.Transparency = 1
		end
	end
	-- all this color picker shit is disgusting, why can't it be in it's own fucking scope. these are all global
	local dragbar_r = {}
	Draw:OutlinedRect(true, 30, 30, 16, 5, { 0, 0, 0, 255 }, cp.drawings)
	table.insert(dragbar_r, cp.drawings[#cp.drawings])
	Draw:OutlinedRect(true, 31, 31, 14, 3, { 255, 255, 255, 255 }, cp.drawings)
	table.insert(dragbar_r, cp.drawings[#cp.drawings])

	local dragbar_b = {}
	Draw:OutlinedRect(true, 30, 30, 5, 16, { 0, 0, 0, 255 }, cp.drawings)
	table.insert(dragbar_b, cp.drawings[#cp.drawings])
	table.insert(alphabar, cp.drawings[#cp.drawings])
	Draw:OutlinedRect(true, 31, 31, 3, 14, { 255, 255, 255, 255 }, cp.drawings)
	table.insert(dragbar_b, cp.drawings[#cp.drawings])
	table.insert(alphabar, cp.drawings[#cp.drawings])

	local dragbar_m = {}
	Draw:OutlinedRect(true, 30, 30, 5, 5, { 0, 0, 0, 255 }, cp.drawings)
	table.insert(dragbar_m, cp.drawings[#cp.drawings])
	Draw:OutlinedRect(true, 31, 31, 3, 3, { 255, 255, 255, 255 }, cp.drawings)
	table.insert(dragbar_m, cp.drawings[#cp.drawings])

	function menu:SetDragBarR(x, y)
		dragbar_r[1].Position = Vector2.new(x, y)
		dragbar_r[2].Position = Vector2.new(x + 1, y + 1)
	end

	function menu:SetDragBarB(x, y)
		dragbar_b[1].Position = Vector2.new(x, y)
		dragbar_b[2].Position = Vector2.new(x + 1, y + 1)
	end

	function menu:SetDragBarM(x, y)
		dragbar_m[1].Position = Vector2.new(x, y)
		dragbar_m[2].Position = Vector2.new(x + 1, y + 1)
	end

	function menu:SetColorPicker(visible, color, value, alpha, text, x, y)
		for k, v in pairs(cp.drawings) do
			v.Visible = visible
		end
		cp.oldalpha = alpha
		if visible then
			cp.x = clamp(x, 0, SCREEN_SIZE.x - cp.w)
			cp.y = clamp(y, 0, SCREEN_SIZE.y - cp.h)
			for k, v in pairs(cp.postable) do
				v[1].Position = Vector2.new(cp.x + v[2], cp.y + v[3])
			end

			local tempclr = RGB(color[1], color[2], color[3])
			local h, s, v = tempclr:ToHSV()
			cp.hsv.h = h
			cp.hsv.s = s
			cp.hsv.v = v

			menu:SetDragBarR(cp.x + 175, cp.y + 23 + math.floor((1 - h) * 156))
			menu:SetDragBarM(cp.x + 9 + math.floor(s * 156), cp.y + 23 + math.floor((1 - v) * 156))
			if not alpha then
				set_newcolor(color[1], color[2], color[3])
				set_oldcolor(color[1], color[2], color[3])
				cp.alpha = false
				for k, v in pairs(alphabar) do
					v.Visible = false
				end
				cp.h = 191
				for i = 1, 2 do
					cp.drawings[i].Size = Vector2.new(cp.w, cp.h)
				end
				cp.drawings[3].Size = Vector2.new(cp.w - 2, cp.h - 2)
			else
				cp.hsv.a = color[4]
				cp.alpha = true
				set_newcolor(color[1], color[2], color[3], color[4])
				set_oldcolor(color[1], color[2], color[3], color[4])
				cp.h = 211
				for i = 1, 2 do
					cp.drawings[i].Size = Vector2.new(cp.w, cp.h)
				end
				cp.drawings[3].Size = Vector2.new(cp.w - 2, cp.h - 2)
				menu:SetDragBarB(cp.x + 12 + math.floor(156 * (color[4] / 255)), cp.y + 188)
			end

			applytext.Position = Vector2.new(235 + cp.x, cp.y + cp.h - 23)
			maincolor.Color = Color3.fromHSV(h, 1, 1)
			cp.drawings[7].Text = text
		end
	end

	menu:SetColorPicker(false, { 255, 0, 0 }, nil, false, "", 0, 0)

	--TOOL TIP
	local tooltip = {
		x = 0,
		y = 0,
		time = 0,
		active = false,
		text = "This does this and that i guess\npooping 24/7",
		drawings = {},
		postable = {},
	}

	local function ttOutline(visible, pos_x, pos_y, width, height, clr, tablename)
		Draw:OutlinedRect(visible, pos_x + tooltip.x, pos_y + tooltip.y, width, height, clr, tablename)
		table.insert(tooltip.postable, { tablename[#tablename], pos_x, pos_y })
	end

	local function ttRect(visible, pos_x, pos_y, width, height, clr, tablename)
		Draw:FilledRect(visible, pos_x + tooltip.x, pos_y + tooltip.y, width, height, clr, tablename)
		table.insert(tooltip.postable, { tablename[#tablename], pos_x, pos_y })
	end

	local function ttText(text, visible, centered, pos_x, pos_y, tablename)
		Draw:OutlinedText(
			text,
			2,
			visible,
			pos_x + tooltip.x,
			pos_y + tooltip.y,
			13,
			centered,
			{ 255, 255, 255, 255 },
			{ 0, 0, 0 },
			tablename
		)
		table.insert(tooltip.postable, { tablename[#tablename], pos_x, pos_y })
	end

	ttRect(
		false,
		tooltip.x + 1,
		tooltip.y + 1,
		1,
		28,
		{ menu.mc[1], menu.mc[2], menu.mc[3], 255 },
		tooltip.drawings
	)
	ttRect(
		false,
		tooltip.x + 2,
		tooltip.y + 1,
		1,
		28,
		{ menu.mc[1] - 40, menu.mc[2] - 40, menu.mc[3] - 40, 255 },
		tooltip.drawings
	)
	ttOutline(false, tooltip.x, tooltip.y, 4, 30, { 20, 20, 20, 255 }, tooltip.drawings)
	ttRect(false, tooltip.x + 4, tooltip.y, 100, 30, { 40, 40, 40, 255 }, tooltip.drawings)
	ttOutline(false, tooltip.x - 1, tooltip.y - 1, 102, 32, { 0, 0, 0, 255 }, tooltip.drawings)
	ttOutline(false, tooltip.x + 3, tooltip.y, 102, 30, { 20, 20, 20, 255 }, tooltip.drawings)
	ttText(tooltip.text, false, false, tooltip.x + 7, tooltip.y + 1, tooltip.drawings)

	local bbmouse = {}
	function menu:SetToolTip(x, y, text, visible, dt)
		dt = dt or 0
		x = x or tooltip.x
		y = y or tooltip.y
		tooltip.x = x
		tooltip.y = y
		if tooltip.time < 1 and visible then
			if tooltip.time < -1 then
				tooltip.time = -1
			end
			tooltip.time += dt
		else
			tooltip.time -= dt
			if tooltip.time < -1 then
				tooltip.time = -1
			end
		end
		if not visible and tooltip.time < 0 then
			tooltip.time = -1
		end
		if tooltip.time > 1 then
			tooltip.time = 1
		end
		for k, v in ipairs(tooltip.drawings) do
			v.Visible = tooltip.time > 0
		end

		tooltip.active = visible
		if text then
			tooltip.drawings[7].Text = text
		end
		for k, v in pairs(tooltip.postable) do
			v[1].Position = Vector2.new(x + v[2], y + v[3])
			v[1].Transparency = math.min((0.3 + tooltip.time) ^ 3 - 1, menu.fade_amount or 1)
		end
		tooltip.drawings[1].Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
		tooltip.drawings[2].Color = RGB(menu.mc[1] - 40, menu.mc[2] - 40, menu.mc[3] - 40)

		local tb = tooltip.drawings[7].TextBounds

		tooltip.drawings[1].Size = Vector2.new(1, tb.Y + 3)
		tooltip.drawings[2].Size = Vector2.new(1, tb.Y + 3)
		tooltip.drawings[3].Size = Vector2.new(4, tb.Y + 5)
		tooltip.drawings[4].Size = Vector2.new(tb.X + 6, tb.Y + 5)
		tooltip.drawings[5].Size = Vector2.new(tb.X + 12, tb.Y + 7)
		tooltip.drawings[6].Size = Vector2.new(tb.X + 7, tb.Y + 5)
		if bbmouse[#bbmouse] then
			bbmouse[#bbmouse].Visible = visible
			bbmouse[#bbmouse].Transparency = 1 - tooltip.time
		end
	end

	menu:SetToolTip(500, 500, "", false)

	-- mouse shiz
	local mousie = {
		x = 100,
		y = 240,
	}
	Draw:Triangle(
		true,
		true,
		{ mousie.x, mousie.y },
		{ mousie.x, mousie.y + 15 },
		{ mousie.x + 10, mousie.y + 10 },
		{ 155, 155, 255, 255 },
		bbmouse
	)
	table.insert(menu.clrs.norm, bbmouse[#bbmouse])
	Draw:Triangle(
		true,
		false,
		{ mousie.x, mousie.y },
		{ mousie.x, mousie.y + 15 },
		{ mousie.x + 10, mousie.y + 10 },
		{ 0, 0, 0, 255 },
		bbmouse
	)
	Draw:OutlinedText("", 2, false, 0, 0, 13, false, { 255, 255, 255, 255 }, { 15, 15, 15 }, bbmouse)
	Draw:OutlinedText("?", 2, false, 0, 0, 13, false, { 255, 255, 255, 255 }, { 15, 15, 15 }, bbmouse)

	local lastMousePos = Vector2.new()
	function menu:SetMousePosition(x, y)
		FireEvent("bb_mousemoved", lastMousePos ~= Vector2.new(x, y))
		for k = 1, #bbmouse do
			local v = bbmouse[k]
			if k ~= #bbmouse and k ~= #bbmouse - 1 then
				v.PointA = Vector2.new(x, y + 36)
				v.PointB = Vector2.new(x, y + 36 + 15)
				v.PointC = Vector2.new(x + 10, y + 46)
			else
				v.Position = Vector2.new(x + 10, y + 46)
			end
		end
		lastMousePos = Vector2.new(x, y)
	end

	function menu:SetColor(r, g, b)
		menu.watermark.rect[1].Color = RGB(r - 40, g - 40, b - 40)
		menu.watermark.rect[2].Color = RGB(r, g, b)

		for k, v in pairs(menu.clrs.norm) do
			v.Color = RGB(r, g, b)
		end
		for k, v in pairs(menu.clrs.dark) do
			v.Color = RGB(r - 40, g - 40, b - 40)
		end
		local menucolor = { r, g, b }
		for k, v in pairs(menu.options) do
			for k1, v1 in pairs(v) do
				for k2, v2 in pairs(v1) do
					if v2[2] == TOGGLE then
						if not v2[1] then
							for i = 0, 3 do
								v2[4][i + 1].Color = ColorRange(i, {
									[1] = { start = 0, color = RGB(50, 50, 50) },
									[2] = { start = 3, color = RGB(30, 30, 30) },
								})
							end
						else
							for i = 0, 3 do
								v2[4][i + 1].Color = ColorRange(i, {
									[1] = { start = 0, color = RGB(menucolor[1], menucolor[2], menucolor[3]) },
									[2] = {
										start = 3,
										color = RGB(menucolor[1] - 40, menucolor[2] - 40, menucolor[3] - 40),
									},
								})
							end
						end
					elseif v2[2] == SLIDER then
						for i = 0, 3 do
							v2[4][i + 1].Color = ColorRange(i, {
								[1] = { start = 0, color = RGB(menucolor[1], menucolor[2], menucolor[3]) },
								[2] = {
									start = 3,
									color = RGB(menucolor[1] - 40, menucolor[2] - 40, menucolor[3] - 40),
								},
							})
						end
					end
				end
			end
		end
	end

	local function UpdateConfigs()
		local configthing = menu.options["Settings"]["Configuration"]["Configs"]

		configthing[6] = GetConfigs()
		if configthing[1] > #configthing[6] then
			configthing[1] = #configthing[6]
		end
		configthing[4][1].Text = configthing[6][configthing[1]]
	end

	menu.keybind_open = nil

	menu.dropbox_open = nil

	menu.colorPickerOpen = false

	menu.textboxopen = nil

	local shooties = {}
	local isPlayerScoped = false

	local keyz = {}
	for k, v in pairs(Enum.KeyCode:GetEnumItems()) do
		keyz[v.Value] = v
	end

	function menu:InputBeganMenu(key) --ANCHOR menu input --
		if key.KeyCode == (menu:GetVal("Settings", "Cheat Settings", "Custom Menu Key") and keyz[tonumber(menu.options["Settings"]["Cheat Settings"]["Custom Menu Key"][5][1].Value)] or Enum.KeyCode.RightShift) and not loadingthing.Visible then
			cp.dragging_m = false
			cp.dragging_r = false
			cp.dragging_b = false

			customChatSpam = {}
			customKillSay = {}
			local customtxt = readfile("bitchbot/chatspam.bb")
			for s in customtxt:gmatch("[^\n]+") do -- I'm Love String:Match
				table.insert(customChatSpam, s)
			end
			customtxt = readfile("bitchbot/killsay.bb")
			for s in customtxt:gmatch("[^\n]+") do -- I'm Love String:Match
				table.insert(customKillSay, s)
			end
			UpdateConfigs()
			if menu.open and not menu.fading then
				for k = 1, #menu.options do
					local v = menu.options[k]
					for k1, v1 in pairs(v) do
						for k2, v2 in pairs(v1) do
							if v2[2] == SLIDER and v2[5] then
								v2[5] = false
							elseif v2[2] == DROPBOX and v2[5] then
								v2[5] = false
							elseif v2[2] == COMBOBOX and v2[5] then
								v2[5] = false
							elseif v2[2] == TOGGLE then
								if v2[5] ~= nil then
									if v2[5][2] == KEYBIND and v2[5][5] then
										v2[5][4][2].Color = RGB(30, 30, 30)
										v2[5][5] = false
									elseif v2[5][2] == COLORPICKER and v2[5][5] then
										v2[5][5] = false
									end
								end
							elseif v2[2] == BUTTON then
								if v2[1] then
									for i = 0, 8 do
										v2[4][i + 1].Color = ColorRange(i, {
											[1] = { start = 0, color = RGB(50, 50, 50) },
											[2] = { start = 8, color = RGB(35, 35, 35) },
										})
									end
									v2[1] = false
								end
							end
						end
					end
				end
				menu.keybind_open = nil
				menu:SetKeybindSelect(false, 20, 20, 1)
				menu.dropbox_open = nil
				menu:SetDropBox(false, 400, 200, 160, 1, { "HI q", "HI q", "HI q" })
				menu.colorPickerOpen = nil
				menu:SetToolTip(nil, nil, nil, false)
				menu:SetColorPicker(false, { 255, 0, 0 }, nil, false, "hahaha", 400, 200)
			end
			if not menu.fading then
				menu.fading = true
				menu.fadestart = tick()
			end
		end

		if menu == nil then
			return
		end

		if menu.textboxopen then
			if key.KeyCode == Enum.KeyCode.Delete or key.KeyCode == Enum.KeyCode.Return then
				for k, v in pairs(menu.options) do
					for k1, v1 in pairs(v) do
						for k2, v2 in pairs(v1) do
							if v2[2] == TEXTBOX then
								if v2[5] then
									v2[5] = false
									v2[4].Color = RGB(255, 255, 255)
									menu.textboxopen = false
									v2[4].Text = v2[1]
								end
							end
						end
					end
				end
			end
		end

		if menu.open and not menu.fading then
			for k, v in pairs(menu.options) do
				for k1, v1 in pairs(v) do
					for k2, v2 in pairs(v1) do
						if v2[2] == TOGGLE then
							if v2[5] ~= nil then
								if v2[5][2] == KEYBIND and v2[5][5] and key.KeyCode.Value ~= 0 then
									v2[5][4][2].Color = RGB(30, 30, 30)
									v2[5][4][1].Text = KeyEnumToName(key.KeyCode)
									if KeyEnumToName(key.KeyCode) == "None" then
										v2[5][1] = nil
									else
										v2[5][1] = key.KeyCode
									end
									v2[5][5] = false
								end
							end
						elseif v2[2] == TEXTBOX then --ANCHOR TEXTBOXES
							if v2[5] then
								if not INPUT_SERVICE:IsKeyDown(Enum.KeyCode.LeftControl) then
									if string.len(v2[1]) <= 28 then
										if table.find(textBoxLetters, KeyEnumToName(key.KeyCode)) then
											if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.LeftShift) then
												v2[1] ..= string.upper(KeyEnumToName(key.KeyCode))
											else
												v2[1] ..= string.lower(KeyEnumToName(key.KeyCode))
											end
										elseif KeyEnumToName(key.KeyCode) == "Space" then
											v2[1] ..= " "
										elseif keymodifiernames[KeyEnumToName(key.KeyCode)] ~= nil then
											if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.LeftShift) then
												v2[1] ..= KeyModifierToName(KeyEnumToName(key.KeyCode), v2[6])
											else
												v2[1] ..= KeyEnumToName(key.KeyCode)
											end
										elseif KeyEnumToName(key.KeyCode) == "Back" and v2[1] ~= "" then
											v2[1] = string.sub(v2[1], 0, #v2[1] - 1)
										end
									end
									v2[4].Text = v2[1] .. "|"
								end
							end
						end
					end
				end
			end
		end
	end

	function menu:InputBeganKeybinds(key) -- this is super shit because once we add mouse we need to change all this shit to be the contextaction stuff
		if INPUT_SERVICE:GetFocusedTextBox() or menu.textboxopen then
			return
		end
		for i = 1, #self.keybinds do
			local value = self.keybinds[i][1]
			if key.KeyCode == value[5][1] then
				value[5].lastvalue = value[5].relvalue
				if value[5].toggletype == 2 then
					value[5].relvalue = not value[5].relvalue
				elseif value[5].toggletype == 1 then
					value[5].relvalue = true
				elseif value[5].toggletype == 3 then
					value[5].relvalue = false
				end
			elseif value[5].toggletype == 4 then
				value[5].relvalue = true
			end
			if value[5].lastvalue ~= value[5].relvalue then
				value[5].event:fire(value[5].relvalue)
			end
		end
	end

	function menu:InputEndedKeybinds(key)
		for i = 1, #self.keybinds do
			local value = self.keybinds[i][1]
			value[5].lastvalue = value[5].relvalue
			if key.KeyCode == value[5][1] then
				if value[5].toggletype == 1 then
					value[5].relvalue = false
				elseif value[5].toggletype == 3 then
					value[5].relvalue = true
				end
			end
			if value[5].lastvalue ~= value[5].relvalue then
				value[5].event:fire(value[5].relvalue)
			end
		end
	end

	function menu:SetMenuPos(x, y)
		for k, v in pairs(menu.postable) do
			if v[1].Visible then
				v[1].Position = Vector2.new(x + v[2], y + v[3])
			end
		end
	end

	function menu:MouseInArea(x, y, width, height)
		return LOCAL_MOUSE.x > x and LOCAL_MOUSE.x < x + width and LOCAL_MOUSE.y > 36 + y and LOCAL_MOUSE.y < 36 + y + height
	end

	function menu:MouseInMenu(x, y, width, height)
		return LOCAL_MOUSE.x > menu.x + x and LOCAL_MOUSE.x < menu.x + x + width and LOCAL_MOUSE.y > menu.y - 36 + y and LOCAL_MOUSE.y < menu.y - 36 + y + height
	end

	function menu:MouseInColorPicker(x, y, width, height)
		return LOCAL_MOUSE.x > cp.x + x and LOCAL_MOUSE.x < cp.x + x + width and LOCAL_MOUSE.y > cp.y - 36 + y and LOCAL_MOUSE.y < cp.y - 36 + y + height
	end

	function menu:GetVal(tab, groupbox, name, ...)
		local args = { ... }

		local option = menu.options[tab][groupbox][name]
		if not option then print(tab, groupbox, name) end
		if args[1] == nil then
			if option[2] == TOGGLE then
				local lastval = option[7]
				option[7] = option[1]
				return option[1], lastval
			elseif option[2] ~= COMBOBOX then
				return option[1]
			else
				local temptable = {}
				for k = 1, #option[1] do
					local v = option[1][k]
					table.insert(temptable, v[2])
				end
				return temptable
			end
		else
			if args[1] == KEYBIND or args[1] == COLOR then
				if args[2] then
					return RGB(option[5][1][1], option[5][1][2], option[5][1][3])
				else
					return option[5][1]
				end
			elseif args[1] == COLOR1 then
				if args[2] then
					return RGB(option[5][1][1][1][1], option[5][1][1][1][2], option[5][1][1][1][3])
				else
					return option[5][1][1][1]
				end
			elseif args[1] == COLOR2 then
				if args[2] then
					return RGB(option[5][1][2][1][1], option[5][1][2][1][2], option[5][1][2][1][3])
				else
					return option[5][1][2][1]
				end
			end
		end
	end

	function menu:GetKey(tab, groupbox, name)
		local option = self.options[tab][groupbox][name][5]
		local return1, return2, return3
		if self:GetVal(tab, groupbox, name) then
			if option.toggletype ~= 0 then
				if option.lastvalue == nil then
					option.lastvalue = option.relvalue
				end
				return1, return2, return3 = option.relvalue, option.lastvalue, option.event
				option.lastvalue = option.relvalue
			end
		end
		return return1, return2, return3
	end

	function menu:SetKey(tab, groupbox, name, val)
		val = val or false
		local option = menu.options[tab][groupbox][name][5]
		if option.toggletype ~= 0 then
			option.lastvalue = option.relvalue
			option.relvalue = val
			if option.lastvalue ~= option.relvalue then
				option.event:fire(option.relvalue)
			end
		end
	end

	local menuElementTypes = { [TOGGLE] = "toggle", [SLIDER] = "slider", [DROPBOX] = "dropbox", [TEXTBOX] = "textbox" }
	local doubleclickDelay = 1
	local buttonsInQue = {}

	local function SaveCurSettings()
		local figgy = "bitchbot v2\n\n"

		for k, v in next, menuElementTypes do
			figgy ..= v .. "s {\n"
			for k1, v1 in pairs(menu.options) do
				for k2, v2 in pairs(v1) do
					for k3, v3 in pairs(v2) do
						if v3[2] == k and k3 ~= "Configs" and k3 ~= "Player Status" and k3 ~= "ConfigName"
						then
							figgy ..= k1 .. "|" .. k2 .. "|" .. k3 .. "|" .. tostring(v3[1]) .. "\n"
						end
					end
				end
			end
			figgy = figgy .. "}\n"
		end
		figgy = figgy .. "comboboxes {\n"
		for k, v in pairs(menu.options) do
			for k1, v1 in pairs(v) do
				for k2, v2 in pairs(v1) do
					if v2[2] == COMBOBOX then
						local boolz = ""
						for k3, v3 in pairs(v2[1]) do
							boolz = boolz .. tostring(v3[2]) .. ", "
						end
						figgy = figgy .. k .. "|" .. k1 .. "|" .. k2 .. "|" .. boolz .. "\n"
					end
				end
			end
		end
		figgy = figgy .. "}\n"
		figgy = figgy .. "keybinds {\n"
		for k, v in pairs(menu.options) do
			for k1, v1 in pairs(v) do
				for k2, v2 in pairs(v1) do
					if v2[2] == TOGGLE then
						if v2[5] ~= nil then
							if v2[5][2] == KEYBIND then
								local toggletype = "|" .. tostring(v2[5].toggletype)

								if v2[5][1] == nil then
									figgy = figgy
										.. k
										.. "|"
										.. k1
										.. "|"
										.. k2
										.. "|nil"
										.. "|"
										.. tostring(v2[5].toggletype)
										.. "\n"
								else
									figgy = figgy
										.. k
										.. "|"
										.. k1
										.. "|"
										.. k2
										.. "|"
										.. tostring(v2[5][1].Value)
										.. "|"
										.. tostring(v2[5].toggletype)
										.. "\n"
								end
							end
						end
					end
				end
			end
		end
		figgy = figgy .. "}\n"
		figgy = figgy .. "colorpickers {\n"
		for k, v in pairs(menu.options) do
			for k1, v1 in pairs(v) do
				for k2, v2 in pairs(v1) do
					if v2[2] == TOGGLE then
						if v2[5] ~= nil then
							if v2[5][2] == COLORPICKER then
								local clrz = ""
								for k3, v3 in pairs(v2[5][1]) do
									clrz = clrz .. tostring(v3) .. ", "
								end
								figgy = figgy .. k .. "|" .. k1 .. "|" .. k2 .. "|" .. clrz .. "\n"
							end
						end
					end
				end
			end
		end
		figgy = figgy .. "}\n"
		figgy = figgy .. "double colorpickers {\n"
		for k, v in pairs(menu.options) do
			for k1, v1 in pairs(v) do
				for k2, v2 in pairs(v1) do
					if v2[2] == TOGGLE then
						if v2[5] ~= nil then
							if v2[5][2] == DOUBLE_COLORPICKER then
								local clrz1 = ""
								for k3, v3 in pairs(v2[5][1][1][1]) do
									clrz1 = clrz1 .. tostring(v3) .. ", "
								end
								local clrz2 = ""
								for k3, v3 in pairs(v2[5][1][2][1]) do
									clrz2 = clrz2 .. tostring(v3) .. ", "
								end
								figgy = figgy .. k .. "|" .. k1 .. "|" .. k2 .. "|" .. clrz1 .. "|" .. clrz2 .. "\n"
							end
						end
					end
				end
			end
		end
		figgy = figgy .. "}\n"

		return figgy
	end

	local function LoadConfig(loadedcfg)
		local lines = {}

		for s in loadedcfg:gmatch("[^\r\n]+") do
			table.insert(lines, s)
		end

		if lines[1] == "bitchbot v2" then
			local start = nil
			for i, v in next, lines do
				if v == "toggles {" then
					start = i
					break
				end
			end
			local end_ = nil
			for i, v in next, lines do
				if i > start and v == "}" then
					end_ = i
					break
				end
			end
			for i = 1, end_ - start - 1 do
				local tt = string.split(lines[i + start], "|")

				if menu.options[tt[1]] ~= nil and menu.options[tt[1]][tt[2]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]] ~= nil
				then
					if tt[4] == "true" then
						menu.options[tt[1]][tt[2]][tt[3]][1] = true
					else
						menu.options[tt[1]][tt[2]][tt[3]][1] = false
					end
				end
			end

			local start = nil
			for i, v in next, lines do
				if v == "sliders {" then
					start = i
					break
				end
			end
			local end_ = nil
			for i, v in next, lines do
				if i > start and v == "}" then
					end_ = i
					break
				end
			end
			for i = 1, end_ - start - 1 do
				local tt = string.split(lines[i + start], "|")
				if menu.options[tt[1]] ~= nil and menu.options[tt[1]][tt[2]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]] ~= nil
				then
					menu.options[tt[1]][tt[2]][tt[3]][1] = tonumber(tt[4])
				end
			end

			local start = nil
			for i, v in next, lines do
				if v == "dropboxs {" then
					start = i
					break
				end
			end
			local end_ = nil
			for i, v in next, lines do
				if i > start and v == "}" then
					end_ = i
					break
				end
			end
			for i = 1, end_ - start - 1 do
				local tt = string.split(lines[i + start], "|")

				if menu.options[tt[1]] ~= nil and menu.options[tt[1]][tt[2]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]] ~= nil
				then
					local num = tonumber(tt[4])
					if num > #menu.options[tt[1]][tt[2]][tt[3]][6] then
						num = #menu.options[tt[1]][tt[2]][tt[3]][6]
					elseif num < 0 then
						num = 1
					end
					menu.options[tt[1]][tt[2]][tt[3]][1] = num
				end
			end

			local start = nil
			for i, v in next, lines do
				if v == "textboxs {" then
					start = i
					break
				end
			end
			if start ~= nil then
				local end_ = nil
				for i, v in next, lines do
					if i > start and v == "}" then
						end_ = i
						break
					end
				end
				for i = 1, end_ - start - 1 do
					local tt = string.split(lines[i + start], "|")
					if menu.options[tt[1]] ~= nil and menu.options[tt[1]][tt[2]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]] ~= nil
					then
						menu.options[tt[1]][tt[2]][tt[3]][1] = tostring(tt[4])
					end
				end
			end

			local start = nil
			for i, v in next, lines do
				if v == "comboboxes {" then
					start = i
					break
				end
			end
			local end_ = nil
			for i, v in next, lines do
				if i > start and v == "}" then
					end_ = i
					break
				end
			end
			for i = 1, end_ - start - 1 do
				local tt = string.split(lines[i + start], "|")
				if menu.options[tt[1]] ~= nil and menu.options[tt[1]][tt[2]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]] ~= nil
				then
					local subs = string.split(tt[4], ",")

					for i, v in ipairs(subs) do
						local opt = string.gsub(v, " ", "")
						if opt == "true" then
							menu.options[tt[1]][tt[2]][tt[3]][1][i][2] = true
						else
							menu.options[tt[1]][tt[2]][tt[3]][1][i][2] = false
						end
						if i == #subs - 1 then
							break
						end
					end
				end
			end

			local start = nil
			for i, v in next, lines do
				if v == "keybinds {" then
					start = i
					break
				end
			end
			local end_ = nil
			for i, v in next, lines do
				if i > start and v == "}" then
					end_ = i
					break
				end
			end
			for i = 1, end_ - start - 1 do
				local tt = string.split(lines[i + start], "|")
				if menu.options[tt[1]] ~= nil and menu.options[tt[1]][tt[2]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]][5] ~= nil
				then
					if tt[5] ~= nil then
						local toggletype = clamp(tonumber(tt[5]), 1, 4)
						if menu.options[tt[1]][tt[2]][tt[3]][5].toggletype ~= 0 then
							menu.options[tt[1]][tt[2]][tt[3]][5].toggletype = toggletype
						end
					end

					if tt[4] == "nil" then
						menu.options[tt[1]][tt[2]][tt[3]][5][1] = nil
					else
						menu.options[tt[1]][tt[2]][tt[3]][5][1] = keyz[tonumber(tt[4])]
					end
				end
			end

			local start = nil
			for i, v in next, lines do
				if v == "colorpickers {" then
					start = i
					break
				end
			end
			local end_ = nil
			for i, v in next, lines do
				if i > start and v == "}" then
					end_ = i
					break
				end
			end
			for i = 1, end_ - start - 1 do
				local tt = string.split(lines[i + start], "|")
				if menu.options[tt[1]] ~= nil and menu.options[tt[1]][tt[2]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]] ~= nil
				then
					local subs = string.split(tt[4], ",")

					if type(menu.options[tt[1]][tt[2]][tt[3]][5][1][1]) == "table" then
						continue
					end
					for i, v in ipairs(subs) do
						if menu.options[tt[1]][tt[2]][tt[3]][5][1][i] == nil then
							break
						end
						local opt = string.gsub(v, " ", "")
						menu.options[tt[1]][tt[2]][tt[3]][5][1][i] = tonumber(opt)
						if i == #subs - 1 then
							break
						end
					end

				end
			end

			local start = nil
			for i, v in next, lines do
				if v == "double colorpickers {" then
					start = i
					break
				end
			end
			local end_ = nil
			for i, v in next, lines do
				if i > start and v == "}" then
					end_ = i
					break
				end
			end
			for i = 1, end_ - start - 1 do
				local tt = string.split(lines[i + start], "|")
				if menu.options[tt[1]] ~= nil and menu.options[tt[1]][tt[2]] ~= nil and menu.options[tt[1]][tt[2]][tt[3]] ~= nil
				then
					local subs = { string.split(tt[4], ","), string.split(tt[5], ",") }

					for i, v in ipairs(subs) do
						if type(menu.options[tt[1]][tt[2]][tt[3]][5][1][i]) == "number" then
							break
						end
						for i1, v1 in ipairs(v) do


							if menu.options[tt[1]][tt[2]][tt[3]][5][1][i][1][i1] == nil then
								break
							end
							local opt = string.gsub(v1, " ", "")
							menu.options[tt[1]][tt[2]][tt[3]][5][1][i][1][i1] = tonumber(opt)
							if i1 == #v - 1 then
								break
							end
						end
					end
				end
			end

			for k, v in pairs(menu.options) do
				for k1, v1 in pairs(v) do
					for k2, v2 in pairs(v1) do
						if v2[2] == TOGGLE then
							if not v2[1] then
								for i = 0, 3 do
									v2[4][i + 1].Color = ColorRange(i, {
										[1] = { start = 0, color = RGB(50, 50, 50) },
										[2] = { start = 3, color = RGB(30, 30, 30) },
									})
								end
							else
								for i = 0, 3 do
									v2[4][i + 1].Color = ColorRange(i, {
										[1] = { start = 0, color = RGB(menu.mc[1], menu.mc[2], menu.mc[3]) },
										[2] = {
											start = 3,
											color = RGB(menu.mc[1] - 40, menu.mc[2] - 40, menu.mc[3] - 40),
										},
									})
								end
							end
							if v2[5] ~= nil then
								if v2[5][2] == KEYBIND then
									v2[5][4][2].Color = RGB(30, 30, 30)
									v2[5][4][1].Text = KeyEnumToName(v2[5][1])
								elseif v2[5][2] == COLORPICKER then
									v2[5][4][1].Color = RGB(v2[5][1][1], v2[5][1][2], v2[5][1][3])
									for i = 2, 3 do
										v2[5][4][i].Color = RGB(v2[5][1][1] - 40, v2[5][1][2] - 40, v2[5][1][3] - 40)
									end
								elseif v2[5][2] == DOUBLE_COLORPICKER then
									if type(v2[5][1][1]) == "table" then
										for i, v3 in ipairs(v2[5][1]) do
											v3[4][1].Color = RGB(v3[1][1], v3[1][2], v3[1][3])
											for i1 = 2, 3 do
												v3[4][i1].Color = RGB(v3[1][1] - 40, v3[1][2] - 40, v3[1][3] - 40)
											end
										end
									end
								end
							end
						elseif v2[2] == SLIDER then
							if v2[1] < v2[6][1] then
								v2[1] = v2[6][1]
							elseif v2[1] > v2[6][2] then
								v2[1] = v2[6][2]
							end

							local decplaces = v2.decimal and string.rep("0", math.log(1 / v2.decimal) / math.log(10))
							if decplaces and math.abs(v2[1]) < v2.decimal then
								v2[1] = 0
							end
							v2[4][5].Text = v2.custom[v2[1]] or (v2[1] == math.floor(v2[1]) and v2.decimal) and tostring(v2[1]) .. "." .. decplaces .. v2[4][6] or tostring(v2[1]) .. v2[4][6]
							-- v2[4][5].Text = tostring(v2[1]).. v2[4][6]

							for i = 1, 4 do
								v2[4][i].Size = Vector2.new((v2[3][3] - 4) * ((v2[1] - v2[6][1]) / (v2[6][2] - v2[6][1])), 2)
							end
						elseif v2[2] == DROPBOX then
							if v2[6][v2[1]] == nil then
								v2[1] = 1
							end
							v2[4][1].Text = v2[6][v2[1]]
						elseif v2[2] == COMBOBOX then
							local textthing = ""
							for k3, v3 in pairs(v2[1]) do
								if v3[2] then
									if textthing == "" then
										textthing = v3[1]
									else
										textthing = textthing .. ", " .. v3[1]
									end
								end
							end
							textthing = textthing ~= "" and textthing or "None"
							textthing = string_cut(textthing, 25)
							v2[4][1].Text = textthing
						elseif v2[2] == TEXTBOX then
							v2[4].Text = v2[1]
						end
					end
				end
			end
		end
	end
	function menu.saveconfig()
		local figgy = SaveCurSettings()
		writefile("bitchbot/".. menu.game.. "/".. menu.options["Settings"]["Configuration"]["ConfigName"][1].. ".bb", figgy)
		CreateNotification('Saved "' .. menu.options["Settings"]["Configuration"]["ConfigName"][1] .. '.bb"!')
		UpdateConfigs()
	end

	function menu.loadconfig()
		local configname = "bitchbot/".. menu.game.. "/".. menu.options["Settings"]["Configuration"]["ConfigName"][1].. ".bb"
		if not isfile(configname) then
			CreateNotification('"'.. menu.options["Settings"]["Configuration"]["ConfigName"][1].. '.bb" is not a valid config.')
			return
		end

		local curcfg = SaveCurSettings()
		local loadedcfg = readfile(configname)

		if pcall(LoadConfig, loadedcfg) then
			CreateNotification('Loaded "' .. menu.options["Settings"]["Configuration"]["ConfigName"][1] .. '.bb"!')
		else
			LoadConfig(curcfg)
			CreateNotification(
				'There was an issue loading "'
					.. menu.options["Settings"]["Configuration"]["ConfigName"][1]
					.. '.bb"'
			)
		end
	end

	local function buttonpressed(bp)
		if bp.doubleclick then
			if buttonsInQue[bp] and tick() - buttonsInQue[bp] < doubleclickDelay then
				buttonsInQue[bp] = 0
			else
				for button, time in next, buttonsInQue do
					buttonsInQue[button] = 0
				end
				buttonsInQue[bp] = tick()
				return
			end
		end
		FireEvent("bb_buttonpressed", bp.tab, bp.groupbox, bp.name)
		--ButtonPressed:Fire(bp.tab, bp.groupbox, bp.name)
		if bp == menu.options["Settings"]["Cheat Settings"]["Unload Cheat"] then
			menu.fading = true
			wait()
			menu:unload()
		elseif bp == menu.options["Settings"]["Cheat Settings"]["Set Clipboard Game ID"] then
			setclipboard(game.JobId)
			CreateNotification("Set Clipboard Game ID! (".. tostring(game.JobId)..")")
		elseif bp == menu.options["Settings"]["Configuration"]["Save Config"] then
			menu.saveconfig()
		elseif bp == menu.options["Settings"]["Configuration"]["Delete Config"] then
			delfile("bitchbot/".. menu.game.. "/".. menu.options["Settings"]["Configuration"]["ConfigName"][1].. ".bb")
			CreateNotification('Deleted "' .. menu.options["Settings"]["Configuration"]["ConfigName"][1] .. '.bb"!')
			UpdateConfigs()
		elseif bp == menu.options["Settings"]["Configuration"]["Load Config"] then
			menu.loadconfig()
		end
	end

	local function MouseButton2Event()
		if menu.colorPickerOpen or menu.dropbox_open then
			return
		end

		for k, v in pairs(menu.options) do
			if menu.tabnames[menu.activetab] == k then
				for k1, v1 in pairs(v) do
					local pass = true
					for k3, v3 in pairs(menu.multigroups) do
						if k == k3 then
							for k4, v4 in pairs(v3) do
								for k5, v5 in pairs(v4.vals) do
									if k1 == k5 then
										pass = v5
									end
								end
							end
						end
					end

					if pass then
						for k2, v2 in pairs(v1) do --ANCHOR more menu bs
							if v2[2] == TOGGLE then
								if v2[5] ~= nil then
									if v2[5][2] == KEYBIND then
										if menu:MouseInMenu(v2[5][3][1], v2[5][3][2], 44, 16) then
											if menu.keybind_open ~= v2 and v2[5].toggletype ~= 0 then
												menu.keybind_open = v2
												menu:SetKeybindSelect(
													true,
													v2[5][3][1] + menu.x,
													v2[5][3][2] + 16 + menu.y,
													v2[5].toggletype
												)
											else
												menu.keybind_open = nil
												menu:SetKeybindSelect(false, 20, 20, 1)
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	local function menucolor()
		if menu.open then
			if menu:GetVal("Settings", "Cheat Settings", "Menu Accent") then
				local clr = menu:GetVal("Settings", "Cheat Settings", "Menu Accent", COLOR, true)
				menu.mc = { clr.R * 255, clr.G * 255, clr.B * 255 }
			else
				menu.mc = { 155, 155, 255 }
			end
			menu:SetColor(menu.mc[1], menu.mc[2], menu.mc[3])

			local wme = menu:GetVal("Visuals", "Interface", "Watermark")
			for k, v in pairs(menu.watermark.rect) do
				v.Visible = wme
			end
			menu.watermark.text[1].Visible = wme
		end
	end
	local function MouseButton1Event() --ANCHOR menu mouse down func
		menu.dropbox_open = nil
		menu.textboxopen = false

		menu:SetKeybindSelect(false, 20, 20, 1)
		if menu.keybind_open then
			local key = menu.keybind_open
			local foundkey = false
			for i = 1, 4 do
				if menu:MouseInMenu(key[5][3][1], key[5][3][2] + 16 + ((i - 1) * 21), 70, 21) then
					foundkey = true
					menu.keybind_open[5].toggletype = i
					menu.keybind_open[5].relvalue = false
				end
			end
			menu.keybind_open = nil
			if foundkey then
				return
			end
		end

		for k, v in pairs(menu.options) do
			for k1, v1 in pairs(v) do
				for k2, v2 in pairs(v1) do
					if v2[2] == DROPBOX and v2[5] then
						if not menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 24 * (#v2[6] + 1) + 3) then
							menu:SetDropBox(false, 400, 200, 160, 1, { "HI q", "HI q", "HI q" })
							v2[5] = false
						else
							menu.dropbox_open = v2
						end
					end
					if v2[2] == COMBOBOX and v2[5] then
						if not menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 24 * (#v2[1] + 1) + 3) then
							menu:SetDropBox(false, 400, 200, 160, 1, { "HI q", "HI q", "HI q" })
							v2[5] = false
						else
							menu.dropbox_open = v2
						end
					end
					if v2[2] == TOGGLE then
						if v2[5] ~= nil then
							if v2[5][2] == KEYBIND then
								if v2[5][5] == true then
									v2[5][4][2].Color = RGB(30, 30, 30)
									v2[5][5] = false
								end
							elseif v2[5][2] == COLORPICKER then
								if v2[5][5] == true then
									if not menu:MouseInColorPicker(0, 0, cp.w, cp.h) then
										if menu.colorPickerOpen then

											local tempclr = cp.oldcolor
											menu.colorPickerOpen[4][1].Color = tempclr
											for i = 2, 3 do
												menu.colorPickerOpen[4][i].Color = RGB(
													math.floor(tempclr.R * 255) - 40,
													math.floor(tempclr.G * 255) - 40,
													math.floor(tempclr.B * 255) - 40
												)
											end
											if cp.alpha then
												menu.colorPickerOpen[1] = {
													math.floor(tempclr.R * 255),
													math.floor(tempclr.G * 255),
													math.floor(tempclr.B * 255),
													cp.oldcoloralpha,
												}
											else
												menu.colorPickerOpen[1] = {
													math.floor(tempclr.R * 255),
													math.floor(tempclr.G * 255),
													math.floor(tempclr.B * 255),
												}
											end
										end
										menu:SetColorPicker(false, { 255, 0, 0 }, nil, false, "hahaha", 400, 200)
										v2[5][5] = false
										menu.colorPickerOpen = nil -- close colorpicker
									end
								end
							elseif v2[5][2] == DOUBLE_COLORPICKER then
								for k3, v3 in pairs(v2[5][1]) do
									if v3[5] == true then
										if not menu:MouseInColorPicker(0, 0, cp.w, cp.h) then
											if menu.colorPickerOpen then
												local tempclr = cp.oldcolor
												menu.colorPickerOpen[4][1].Color = tempclr
												for i = 2, 3 do
													menu.colorPickerOpen[4][i].Color = RGB(
														math.floor(tempclr.R * 255) - 40,
														math.floor(tempclr.G * 255) - 40,
														math.floor(tempclr.B * 255) - 40
													)
												end
												if cp.alpha then
													menu.colorPickerOpen[1] = {
														math.floor(tempclr.R * 255),
														math.floor(tempclr.G * 255),
														math.floor(tempclr.B * 255),
														cp.oldcoloralpha,
													}
												else
													menu.colorPickerOpen[1] = {
														math.floor(tempclr.R * 255),
														math.floor(tempclr.G * 255),
														math.floor(tempclr.B * 255),
													}
												end
											end
											menu:SetColorPicker(false, { 255, 0, 0 }, nil, false, "hahaha", 400, 200)
											v3[5] = false
											menu.colorPickerOpen = nil -- close colorpicker

										end
									end
								end
							end
						end
					end
					if v2[2] == TEXTBOX and v2[5] then
						v2[4].Color = RGB(255, 255, 255)
						v2[5] = false
						v2[4].Text = v2[1]
					end
				end
			end
		end
		for i = 1, #menutable do
			if menu:MouseInMenu(
					10 + ((i - 1) * math.floor((menu.w - 20) / #menutable)),
					27,
					math.floor((menu.w - 20) / #menutable),
					32
				)
			then
				menu.activetab = i
				setActiveTab(menu.activetab)
				menu:SetMenuPos(menu.x, menu.y)
				menu:SetToolTip(nil, nil, nil, false)
			end
		end
		if menu.colorPickerOpen then
			if menu:MouseInColorPicker(197, cp.h - 25, 75, 20) then
				--apply newcolor to oldcolor
				local tempclr = Color3.fromHSV(cp.hsv.h, cp.hsv.s, cp.hsv.v)
				menu.colorPickerOpen[4][1].Color = tempclr
				for i = 2, 3 do
					menu.colorPickerOpen[4][i].Color = RGB(
						math.floor(tempclr.R * 255) - 40,
						math.floor(tempclr.G * 255) - 40,
						math.floor(tempclr.B * 255) - 40
					)
				end
				if cp.alpha then
					menu.colorPickerOpen[1] = {
						math.floor(tempclr.R * 255),
						math.floor(tempclr.G * 255),
						math.floor(tempclr.B * 255),
						cp.hsv.a,
					}
				else
					menu.colorPickerOpen[1] = {
						math.floor(tempclr.R * 255),
						math.floor(tempclr.G * 255),
						math.floor(tempclr.B * 255),
					}
				end
				menu.colorPickerOpen = nil
				menu:SetColorPicker(false, { 255, 0, 0 }, nil, false, "hahaha", 400, 200)
			end
			if menu:MouseInColorPicker(264, 2, 14, 14) then
				-- x out
				local tempclr = cp.oldcolor
				menu.colorPickerOpen[4][1].Color = tempclr
				for i = 2, 3 do
					menu.colorPickerOpen[4][i].Color = RGB(
						math.floor(tempclr.R * 255) - 40,
						math.floor(tempclr.G * 255) - 40,
						math.floor(tempclr.B * 255) - 40
					)
				end
				if cp.alpha then
					menu.colorPickerOpen[1] = {
						math.floor(tempclr.R * 255),
						math.floor(tempclr.G * 255),
						math.floor(tempclr.B * 255),
						cp.oldcoloralpha,
					}
				else
					menu.colorPickerOpen[1] = {
						math.floor(tempclr.R * 255),
						math.floor(tempclr.G * 255),
						math.floor(tempclr.B * 255),
					}
				end
				menu.colorPickerOpen = nil
				menu:SetColorPicker(false, { 255, 0, 0 }, nil, false, "hahaha", 400, 200)
			end
			if menu:MouseInColorPicker(10, 23, 160, 160) then
				cp.dragging_m = true
				--set value and saturation
			elseif menu:MouseInColorPicker(176, 23, 14, 160) then
				cp.dragging_r = true
				--set hue
			elseif menu:MouseInColorPicker(10, 189, 160, 14) and cp.alpha then
				cp.dragging_b = true
				--set transparency
			end

			if menu:MouseInColorPicker(197, 37, 75, 20) then
				menu.copied_clr = newcolor.Color
				--copy newcolor
			elseif menu:MouseInColorPicker(197, 57, 75, 20) then
				--paste newcolor
				if menu.copied_clr ~= nil then
					local cpa = false
					local clrtable = { menu.copied_clr.R * 255, menu.copied_clr.G * 255, menu.copied_clr.B * 255 }
					if menu.colorPickerOpen[1][4] ~= nil then
						cpa = true
						table.insert(clrtable, menu.colorPickerOpen[1][4])
					end

					menu:SetColorPicker(true, clrtable, menu.colorPickerOpen, cpa, menu.colorPickerOpen[6], cp.x, cp.y)
					cp.oldclr = menu.colorPickerOpen[4][1].Color
					local oldclr = cp.oldclr
					if menu.colorPickerOpen[1][4] ~= nil then
						set_oldcolor(oldclr.R * 255, oldclr.G * 255, oldclr.B * 255, menu.colorPickerOpen[1][4])
					else
						set_oldcolor(oldclr.R * 255, oldclr.G * 255, oldclr.B * 255)
					end
				end
			end

			if menu:MouseInColorPicker(197, 91, 75, 40) then
				menu.copied_clr = oldcolor.Color --copy oldcolor
			end
		else
			for k, v in pairs(menu.multigroups) do
				if menu.tabnames[menu.activetab] == k then
					for k1, v1 in pairs(v) do
						local c_pos = v1.drawn.click_pos
						--local selected = v1.drawn.bar
						local selected_pos = v1.drawn.barpos

						for k2, v2 in pairs(v1.drawn.click_pos) do
							if menu:MouseInMenu(v2.x, v2.y, v2.width, v2.height) then
								for _k, _v in pairs(v1.vals) do
									if _k == v2.name then
										v1.vals[_k] = true
									else
										v1.vals[_k] = false
									end
								end

								local settab = v2.num
								for _k, _v in pairs(v1.drawn.bar) do
									menu.postable[_v.postable][2] = selected_pos[settab].pos
									_v.drawn.Size = Vector2.new(selected_pos[settab].length, 2)
								end

								for i, v in pairs(v1.drawn.nametext) do
									if i == v2.num then
										v.Color = RGB(255, 255, 255)
									else
										v.Color = RGB(170, 170, 170)
									end
								end

								menu:setMenuVisible(true)
								setActiveTab(menu.activetab)
								menu:SetMenuPos(menu.x, menu.y)
							end
						end
					end
				end
			end
			local newdropbox_open
			for k, v in pairs(menu.options) do
				if menu.tabnames[menu.activetab] == k then
					for k1, v1 in pairs(v) do
						local pass = true
						for k3, v3 in pairs(menu.multigroups) do
							if k == k3 then
								for k4, v4 in pairs(v3) do
									for k5, v5 in pairs(v4.vals) do
										if k1 == k5 then
											pass = v5
										end
									end
								end
							end
						end

						if pass then
							for k2, v2 in pairs(v1) do
								if v2[2] == TOGGLE and not menu.dropbox_open then
									if menu:MouseInMenu(v2[3][1], v2[3][2], 30 + v2[4][5].TextBounds.x, 16) then
										if v2[6] then
											if menu:GetVal(
													"Settings",
													"Cheat Settings",
													"Allow Unsafe Features"
												) and v2[1] == false
											then
												v2[1] = true
											else
												v2[1] = false
											end
										else
											v2[1] = not v2[1]
										end
										if not v2[1] then
											for i = 0, 3 do
												v2[4][i + 1].Color = ColorRange(i, {
													[1] = { start = 0, color = RGB(50, 50, 50) },
													[2] = { start = 3, color = RGB(30, 30, 30) },
												})
											end
										else
											for i = 0, 3 do
												v2[4][i + 1].Color = ColorRange(i, {
													[1] = {
														start = 0,
														color = RGB(menu.mc[1], menu.mc[2], menu.mc[3]),
													},
													[2] = {
														start = 3,
														color = RGB(
															menu.mc[1] - 40,
															menu.mc[2] - 40,
															menu.mc[3] - 40
														),
													},
												})
											end
										end
										--TogglePressed:Fire(k1, k2, v2)
										FireEvent("bb_togglepressed", k1, k2, v2)
									end
									if v2[5] ~= nil then
										if v2[5][2] == KEYBIND then
											if menu:MouseInMenu(v2[5][3][1], v2[5][3][2], 44, 16) then
												v2[5][4][2].Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
												v2[5][5] = true
											end
										elseif v2[5][2] == COLORPICKER then
											if menu:MouseInMenu(v2[5][3][1], v2[5][3][2], 28, 14) then
												v2[5][5] = true
												menu.colorPickerOpen = v2[5]
												menu.colorPickerOpen = v2[5]
												if v2[5][1][4] ~= nil then
													menu:SetColorPicker(
														true,
														v2[5][1],
														v2[5],
														true,
														v2[5][6],
														LOCAL_MOUSE.x,
														LOCAL_MOUSE.y + 36
													)
												else
													menu:SetColorPicker(
														true,
														v2[5][1],
														v2[5],
														false,
														v2[5][6],
														LOCAL_MOUSE.x,
														LOCAL_MOUSE.y + 36
													)
												end
											end
										elseif v2[5][2] == DOUBLE_COLORPICKER then
											for k3, v3 in pairs(v2[5][1]) do
												if menu:MouseInMenu(v3[3][1], v3[3][2], 28, 14) then
													v3[5] = true
													menu.colorPickerOpen = v3
													menu.colorPickerOpen = v3
													if v3[1][4] ~= nil then
														menu:SetColorPicker(
															true,
															v3[1],
															v3,
															true,
															v3[6],
															LOCAL_MOUSE.x,
															LOCAL_MOUSE.y + 36
														)
													else
														menu:SetColorPicker(
															true,
															v3[1],
															v3,
															false,
															v3[6],
															LOCAL_MOUSE.x,
															LOCAL_MOUSE.y + 36
														)
													end
												end
											end
										end
									end
								elseif v2[2] == SLIDER and not menu.dropbox_open then
									if menu:MouseInMenu(v2[7][1], v2[7][2], 22, 13) then
										local stepval = 1
										if v2.stepsize then
											stepval = v2.stepsize
										end
										if menu:modkeydown("shift", "left") then
											stepval = v2.shift_stepsize or 0.1
										end
										if menu:MouseInMenu(v2[7][1], v2[7][2], 11, 13) then
											v2[1] -= stepval
										elseif menu:MouseInMenu(v2[7][1] + 11, v2[7][2], 11, 13) then
											v2[1] += stepval
										end

										if v2[1] < v2[6][1] then
											v2[1] = v2[6][1]
										elseif v2[1] > v2[6][2] then
											v2[1] = v2[6][2]
										end
										local decplaces = v2.decimal and string.rep("0", math.log(1 / v2.decimal) / math.log(10))
										if decplaces and math.abs(v2[1]) < v2.decimal then
											v2[1] = 0
										end
										v2[4][5].Text = v2.custom[v2[1]] or (v2[1] == math.floor(v2[1]) and v2.decimal) and tostring(v2[1]) .. "." .. decplaces .. v2[4][6] or tostring(v2[1]) .. v2[4][6]

										for i = 1, 4 do
											v2[4][i].Size = Vector2.new(
												(v2[3][3] - 4) * ((v2[1] - v2[6][1]) / (v2[6][2] - v2[6][1])),
												2
											)
										end
									elseif menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 28) then
										v2[5] = true
									end
								elseif v2[2] == DROPBOX then
									if menu.dropbox_open then
										if v2 ~= menu.dropbox_open then
											continue
										end
									end
									if menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 36) then
										if not v2[5] then
											v2[5] = menu:SetDropBox(
												true,
												v2[3][1] + menu.x + 1,
												v2[3][2] + menu.y + 13,
												v2[3][3],
												v2[1],
												v2[6]
											)
											newdropbox_open = v2
										else
											menu:SetDropBox(false, 400, 200, 160, 1, { "HI q", "HI q", "HI q" })
											v2[5] = false
											newdropbox_open = nil
										end
									elseif menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 24 * (#v2[6] + 1) + 3) and v2[5]
									then
										for i = 1, #v2[6] do
											if menu:MouseInMenu(
													v2[3][1],
													v2[3][2] + 36 + ((i - 1) * 21),
													v2[3][3],
													21
												)
											then
												v2[4][1].Text = v2[6][i]
												v2[1] = i
												menu:SetDropBox(false, 400, 200, 160, 1, { "HI q", "HI q", "HI q" })
												v2[5] = false
												newdropbox_open = nil
											end
										end

										if v2 == menu.options["Settings"]["Configuration"]["Configs"] then
											local textbox = menu.options["Settings"]["Configuration"]["ConfigName"]
											local relconfigs = GetConfigs()
											textbox[1] = relconfigs[menu.options["Settings"]["Configuration"]["Configs"][1]]
											textbox[4].Text = textbox[1]
										end
									end
								elseif v2[2] == COMBOBOX then
									if menu.dropbox_open then
										if v2 ~= menu.dropbox_open then
											continue
										end
									end
									if menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 36) then
										if not v2[5] then

											v2[5] = set_comboboxthingy(
												true,
												v2[3][1] + menu.x + 1,
												v2[3][2] + menu.y + 13,
												v2[3][3],
												v2[1],
												v2[6]
											)
											newdropbox_open = v2
										else
											menu:SetDropBox(false, 400, 200, 160, 1, { "HI q", "HI q", "HI q" })
											v2[5] = false
											newdropbox_open = nil
										end
									elseif menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 24 * (#v2[1] + 1) + 3) and v2[5]
									then
										for i = 1, #v2[1] do
											if menu:MouseInMenu(
													v2[3][1],
													v2[3][2] + 36 + ((i - 1) * 22),
													v2[3][3],
													23
												)
											then
												v2[1][i][2] = not v2[1][i][2]
												local textthing = ""
												for k, v in pairs(v2[1]) do
													if v[2] then
														if textthing == "" then
															textthing = v[1]
														else
															textthing = textthing .. ", " .. v[1]
														end
													end
												end
												textthing = textthing ~= "" and textthing or "None"
												textthing = string_cut(textthing, 25)
												v2[4][1].Text = textthing
												set_comboboxthingy(
													true,
													v2[3][1] + menu.x + 1,
													v2[3][2] + menu.y + 13,
													v2[3][3],
													v2[1],
													v2[6]
												)
											end
										end
									end
								elseif v2[2] == BUTTON and not menu.dropbox_open then
									if menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 22) then
										if not v2[1] then
											buttonpressed(v2)
											if k2 == "Unload Cheat" then
												return
											end
											for i = 0, 8 do
												v2[4][i + 1].Color = ColorRange(i, {
													[1] = { start = 0, color = RGB(35, 35, 35) },
													[2] = { start = 8, color = RGB(50, 50, 50) },
												})
											end
											v2[1] = true
										end
									end
								elseif v2[2] == TEXTBOX and not menu.dropbox_open then
									if menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 22) then
										if not v2[5] then
											menu.textboxopen = v2

											v2[4].Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
											v2[5] = true
										end
									end
								elseif v2[2] == "list" then
									if #v2[5] > v2[6] then
										for i = 1, v2[6] do
											if menu:MouseInMenu(v2[8][1], v2[8][2] + (i * 22) - 5, v2[8][3], 22)
											then
												if v2[1] == tostring(v2[5][i + v2[3] - 1][1][1]) then
													v2[1] = nil
												else
													v2[1] = tostring(v2[5][i + v2[3] - 1][1][1])
												end
											end
										end
									else
										for i = 1, #v2[5] do
											if menu:MouseInMenu(v2[8][1], v2[8][2] + (i * 22) - 5, v2[8][3], 22)
											then
												if v2[1] == tostring(v2[5][i + v2[3] - 1][1][1]) then
													v2[1] = nil
												else
													v2[1] = tostring(v2[5][i + v2[3] - 1][1][1])
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
			menu.dropbox_open = newdropbox_open
		end
		for k, v in pairs(menu.options) do
			for k1, v1 in pairs(v) do
				for k2, v2 in pairs(v1) do
					if v2[2] == TOGGLE then
						if v2[6] then
							if not menu:GetVal("Settings", "Cheat Settings", "Allow Unsafe Features") then
								v2[1] = false
								for i = 0, 3 do
									v2[4][i + 1].Color = ColorRange(i, {
										[1] = { start = 0, color = RGB(50, 50, 50) },
										[2] = { start = 3, color = RGB(30, 30, 30) },
									})
								end
							end
						end
					end
				end
			end
		end
		menucolor()
	end



	local function mousebutton1upfunc()
		cp.dragging_m = false
		cp.dragging_r = false
		cp.dragging_b = false
		for k, v in pairs(menu.options) do
			if menu.tabnames[menu.activetab] == k then
				for k1, v1 in pairs(v) do
					for k2, v2 in pairs(v1) do
						if v2[2] == SLIDER and v2[5] then
							v2[5] = false
						end
						if v2[2] == BUTTON and v2[1] then
							for i = 0, 8 do
								v2[4][i + 1].Color = ColorRange(i, {
									[1] = { start = 0, color = RGB(50, 50, 50) },
									[2] = { start = 8, color = RGB(35, 35, 35) },
								})
							end
							v2[1] = false
						end
					end
				end
			end
		end
	end

	local clickspot_x, clickspot_y, original_menu_x, original_menu_y = 0, 0, 0, 0

	menu.connections.mwf = LOCAL_MOUSE.WheelForward:Connect(function()
		if menu.open then
			for k, v in pairs(menu.options) do
				if menu.tabnames[menu.activetab] == k then
					for k1, v1 in pairs(v) do
						for k2, v2 in pairs(v1) do
							if v2[2] == "list" then
								if v2[3] > 1 then
									v2[3] -= 1
								end
							end
						end
					end
				end
			end
		end
	end)

	menu.connections.mwb = LOCAL_MOUSE.WheelBackward:Connect(function()
		if menu.open then
			for k, v in pairs(menu.options) do
				if menu.tabnames[menu.activetab] == k then
					for k1, v1 in pairs(v) do
						for k2, v2 in pairs(v1) do
							if v2[2] == "list" then
								if v2[5][v2[3] + v2[6]] ~= nil then
									v2[3] += 1
								end
							end
						end
					end
				end
			end
		end
	end)

	function menu:setMenuAlpha(transparency)
		for k, v in pairs(bbmouse) do
			v.Transparency = transparency
		end
		for k, v in pairs(bbmenu) do
			v.Transparency = transparency
		end
		for k, v in pairs(tabz[menu.activetab]) do
			v.Transparency = transparency
		end
	end

	function menu:setMenuVisible(visible)
		for k, v in pairs(bbmouse) do
			v.Visible = visible
		end
		for k, v in pairs(bbmenu) do
			v.Visible = visible
		end
		for k, v in pairs(tabz[menu.activetab]) do
			v.Visible = visible
		end

		if visible then
			for k, v in pairs(menu.multigroups) do
				if menu.tabnames[menu.activetab] == k then
					for k1, v1 in pairs(v) do
						for k2, v2 in pairs(v1.vals) do
							for k3, v3 in pairs(menu.mgrouptabz[k][k2]) do
								v3.Visible = v2
							end
						end
					end
				end
			end
		end
	end

	menu:setMenuAlpha(0)
	menu:setMenuVisible(false)
	menu.lastActive = true
	menu.open = false
	menu.windowactive = true
	menu.connections.mousemoved = MouseMoved:connect(function(b)
		menu.windowactive = iswindowactive() or b
	end)

	local function renderSteppedMenu(fdt)
		if cp.dragging_m or cp.dragging_r or cp.dragging_b then
			menucolor()
		end
		menu.dt = fdt
		if menu.unloaded then
			return
		end
		SCREEN_SIZE = Camera.ViewportSize
		if bbmouse[#bbmouse-1] then
			if menu.inmenu and not menu.inmiddlemenu and not menu.intabs then
				bbmouse[#bbmouse-1].Visible = true
				bbmouse[#bbmouse-1].Transparency = 1
			else
				bbmouse[#bbmouse-1].Visible = false
			end
		end

		menu.lastActive = menu.windowactive
		for button, time in next, buttonsInQue do
			if time and tick() - time < doubleclickDelay then
				button[4].text.Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
				button[4].text.Text = "Confirm?"
			else
				button[4].text.Color = Color3.new(1, 1, 1)
				button[4].text.Text = button.name
			end
		end
		if menu.open then
			if menu.backspaceheld then
				local dt = tick() - menu.backspacetime
				if dt > 0.4 then
					menu.backspaceflags += 1
					if menu.backspaceflags % 5 == 0 then
						local textbox = menu.textboxopen
						textbox[1] = string.sub(textbox[1], 0, #textbox[1] - 1)
						textbox[4].Text = textbox[1] .. "|"
					end
				end
			end
		end
		if menu.fading then
			if menu.open then
				menu.timesincefade = tick() - menu.fadestart
				menu.fade_amount = 1 - (menu.timesincefade * 10)
				menu:SetPlusMinus(0, 20, 20)
				menu:setMenuAlpha(menu.fade_amount)
				if menu.fade_amount <= 0 then
					menu.open = false
					menu.fading = false
					menu:setMenuAlpha(0)
					menu:setMenuVisible(false)
				else
					menu:setMenuAlpha(menu.fade_amount)
				end
			else
				menu:setMenuVisible(true)
				setActiveTab(menu.activetab)
				menu.timesincefade = tick() - menu.fadestart
				menu.fade_amount = (menu.timesincefade * 10)
				menu.fadeamount = menu.fade_amount
				menu:setMenuAlpha(menu.fade_amount)
				if menu.fade_amount >= 1 then
					menu.open = true
					menu.fading = false
					menu:setMenuAlpha(1)
				else
					menu:setMenuAlpha(menu.fade_amount)
				end
			end
		end
		menu:SetMousePosition(LOCAL_MOUSE.x, LOCAL_MOUSE.y)
		local settooltip = true
		if menu.open or menu.fading then
			menu:SetPlusMinus(0, 20, 20)
			for k, v in pairs(menu.options) do
				if menu.tabnames[menu.activetab] == k then
					for k1, v1 in pairs(v) do
						local pass = true
						for k3, v3 in pairs(menu.multigroups) do
							if k == k3 then
								for k4, v4 in pairs(v3) do
									for k5, v5 in pairs(v4.vals) do
										if k1 == k5 then
											pass = v5
										end
									end
								end
							end
						end

						if pass then
							for k2, v2 in pairs(v1) do
								if v2[2] == TOGGLE then
									if not menu.dropbox_open and not menu.colorPickerOpen then
										if menu.open and menu:MouseInMenu(v2[3][1], v2[3][2], 30 + v2[4][5].TextBounds.x, 16)
										then
											if v2.tooltip and settooltip then
												menu:SetToolTip(
													menu.x + v2[3][1],
													menu.y + v2[3][2] + 18,
													v2.tooltip,
													true,
													fdt
												)
												settooltip = false
											end
										end
									end
								elseif v2[2] == SLIDER then
									if v2[5] then
										local new_val = (v2[6][2] - v2[6][1])  * (
												(
													LOCAL_MOUSE.x
													- menu.x
													- v2[3][1]
												) / v2[3][3]
											)
										v2[1] = (
												not v2.decimal and math.floor(new_val) or math.floor(new_val / v2.decimal) * v2.decimal
											) + v2[6][1]
										if v2[1] < v2[6][1] then
											v2[1] = v2[6][1]
										elseif v2[1] > v2[6][2] then
											v2[1] = v2[6][2]
										end
										local decplaces = v2.decimal and string.rep("0", math.log(1 / v2.decimal) / math.log(10))
										if decplaces and math.abs(v2[1]) < v2.decimal then
											v2[1] = 0
										end

										v2[4][5].Text = v2.custom[v2[1]] or (v2[1] == math.floor(v2[1]) and v2.decimal) and tostring(v2[1]) .. "." .. decplaces .. v2[4][6] or tostring(v2[1]) .. v2[4][6]
										for i = 1, 4 do
											v2[4][i].Size = Vector2.new(
												(v2[3][3] - 4) * ((v2[1] - v2[6][1]) / (v2[6][2] - v2[6][1])),
												2
											)
										end
										menu:SetPlusMinus(1, v2[7][1], v2[7][2])
									else
										if not menu.dropbox_open then
											if menu:MouseInMenu(v2[3][1], v2[3][2], v2[3][3], 28) then
												if menu:MouseInMenu(v2[7][1], v2[7][2], 22, 13) then
													if menu:MouseInMenu(v2[7][1], v2[7][2], 11, 13) then
														menu:SetPlusMinus(2, v2[7][1], v2[7][2])
													elseif menu:MouseInMenu(v2[7][1] + 11, v2[7][2], 11, 13) then
														menu:SetPlusMinus(3, v2[7][1], v2[7][2])
													end
												else
													menu:SetPlusMinus(1, v2[7][1], v2[7][2])
												end
											end
										end
									end
								elseif v2[2] == "list" then
									for k3, v3 in pairs(v2[4].liststuff) do
										for i, v4 in ipairs(v3) do
											for i1, v5 in ipairs(v4) do
												v5.Visible = false
											end
										end
									end
									for i = 1, v2[6] do
										if v2[5][i + v2[3] - 1] ~= nil then
											for i1 = 1, v2[7] do
												v2[4].liststuff.words[i][i1].Text = v2[5][i + v2[3] - 1][i1][1]
												v2[4].liststuff.words[i][i1].Visible = true

												if v2[5][i + v2[3] - 1][i1][1] == v2[1] and i1 == 1 then
													if menu.options["Settings"]["Cheat Settings"]["Menu Accent"][1]
													then
														local clr = menu.options["Settings"]["Cheat Settings"]["Menu Accent"][5][1]
														v2[4].liststuff.words[i][i1].Color = RGB(clr[1], clr[2], clr[3])
													else
														v2[4].liststuff.words[i][i1].Color = RGB(menu.mc[1], menu.mc[2], menu.mc[3])
													end
												else
													v2[4].liststuff.words[i][i1].Color = v2[5][i + v2[3] - 1][i1][2]
												end
											end
											for k3, v3 in pairs(v2[4].liststuff.rows[i]) do
												v3.Visible = true
											end
										elseif v2[3] > 1 then
											v2[3] -= 1
										end
									end
									if v2[3] == 1 then
										for k3, v3 in pairs(v2[4].uparrow) do
											if v3.Visible then
												v3.Visible = false
											end
										end
									else
										for k3, v3 in pairs(v2[4].uparrow) do
											if not v3.Visible then
												v3.Visible = true
												menu:SetMenuPos(menu.x, menu.y)
											end
										end
									end
									if v2[5][v2[3] + v2[6]] == nil then
										for k3, v3 in pairs(v2[4].downarrow) do
											if v3.Visible then
												v3.Visible = false
											end
										end
									else
										for k3, v3 in pairs(v2[4].downarrow) do
											if not v3.Visible then
												v3.Visible = true
												menu:SetMenuPos(menu.x, menu.y)
											end
										end
									end
								end
							end
						end
					end
				end
			end
			menu.inmenu = LOCAL_MOUSE.x > menu.x and LOCAL_MOUSE.x < menu.x + menu.w and LOCAL_MOUSE.y > menu.y - 32 and LOCAL_MOUSE.y < menu.y + menu.h - 34
			menu.intabs = LOCAL_MOUSE.x > menu.x + 9 and LOCAL_MOUSE.x < menu.x + menu.w - 9 and LOCAL_MOUSE.y > menu.y - 9 and LOCAL_MOUSE.y < menu.y + 24
			menu.inmiddlemenu = LOCAL_MOUSE.x > menu.x + 18 and LOCAL_MOUSE.x < menu.x + menu.w - 18 and LOCAL_MOUSE.y > menu.y + 33 and LOCAL_MOUSE.y < menu.y + menu.h - 56
			if (
					(
						menu.inmenu and
						not menu.intabs and
						not menu.inmiddlemenu
					) or menu.dragging
				) and not menu.dontdrag
			then
				if menu.mousedown and not menu.colorPickerOpen and not dropbox_open then
					if not menu.dragging then
						clickspot_x = LOCAL_MOUSE.x
						clickspot_y = LOCAL_MOUSE.y - 36 original_menu_X = menu.x original_menu_y = menu.y
						menu.dragging = true
					end
					menu.x = (original_menu_X - clickspot_x) + LOCAL_MOUSE.x
					menu.y = (original_menu_y - clickspot_y) + LOCAL_MOUSE.y - 36
					if menu.y < 0 then
						menu.y = 0
					end
					if menu.x < -menu.w / 4 * 3 then
						menu.x = -menu.w / 4 * 3
					end
					if menu.x + menu.w / 4 > SCREEN_SIZE.x then
						menu.x = SCREEN_SIZE.x - menu.w / 4
					end
					if menu.y > SCREEN_SIZE.y - 20 then
						menu.y = SCREEN_SIZE.y - 20
					end
					menu:SetMenuPos(menu.x, menu.y)
				else
					menu.dragging = false
				end
			elseif menu.mousedown then
				menu.dontdrag = true
			elseif not menu.mousedown then
				menu.dontdrag = false
			end
			if menu.colorPickerOpen then
				if cp.dragging_m then
					menu:SetDragBarM(
						clamp(LOCAL_MOUSE.x, cp.x + 12, cp.x + 167) - 2,
						clamp(LOCAL_MOUSE.y + 36, cp.y + 25, cp.y + 180) - 2
					)

					cp.hsv.s = (clamp(LOCAL_MOUSE.x, cp.x + 12, cp.x + 167) - cp.x - 12) / 155
					cp.hsv.v = 1 - ((clamp(LOCAL_MOUSE.y + 36, cp.y + 23, cp.y + 178) - cp.y - 23) / 155)
					newcolor.Color = Color3.fromHSV(cp.hsv.h, cp.hsv.s, cp.hsv.v)
					local tempclr = Color3.fromHSV(cp.hsv.h, cp.hsv.s, cp.hsv.v)
					menu.colorPickerOpen[4][1].Color = tempclr
					for i = 2, 3 do
						menu.colorPickerOpen[4][i].Color = RGB(
							math.floor(tempclr.R * 255) - 40,
							math.floor(tempclr.G * 255) - 40,
							math.floor(tempclr.B * 255) - 40
						)
					end
					if cp.alpha then
						menu.colorPickerOpen[1] = {
							math.floor(tempclr.R * 255),
							math.floor(tempclr.G * 255),
							math.floor(tempclr.B * 255),
							cp.hsv.a,
						}
					else
						menu.colorPickerOpen[1] = {
							math.floor(tempclr.R * 255),
							math.floor(tempclr.G * 255),
							math.floor(tempclr.B * 255),
						}
					end
				elseif cp.dragging_r then
					menu:SetDragBarR(cp.x + 175, clamp(LOCAL_MOUSE.y + 36, cp.y + 23, cp.y + 178))

					maincolor.Color = Color3.fromHSV(
							1 - ((clamp(LOCAL_MOUSE.y + 36, cp.y + 23, cp.y + 178) - cp.y - 23) / 155),
							1,
							1
						)

					cp.hsv.h = 1 - ((clamp(LOCAL_MOUSE.y + 36, cp.y + 23, cp.y + 178) - cp.y - 23) / 155)
					newcolor.Color = Color3.fromHSV(cp.hsv.h, cp.hsv.s, cp.hsv.v)
					local tempclr = Color3.fromHSV(cp.hsv.h, cp.hsv.s, cp.hsv.v)
					menu.colorPickerOpen[4][1].Color = tempclr
					for i = 2, 3 do
						menu.colorPickerOpen[4][i].Color = RGB(
							math.floor(tempclr.R * 255) - 40,
							math.floor(tempclr.G * 255) - 40,
							math.floor(tempclr.B * 255) - 40
						)
					end
					if cp.alpha then
						menu.colorPickerOpen[1] = {
							math.floor(tempclr.R * 255),
							math.floor(tempclr.G * 255),
							math.floor(tempclr.B * 255),
							cp.hsv.a,
						}
					else
						menu.colorPickerOpen[1] = {
							math.floor(tempclr.R * 255),
							math.floor(tempclr.G * 255),
							math.floor(tempclr.B * 255),
						}
					end
				elseif cp.dragging_b then
					local tempclr = Color3.fromHSV(cp.hsv.h, cp.hsv.s, cp.hsv.v)
					menu.colorPickerOpen[4][1].Color = tempclr
					for i = 2, 3 do
						menu.colorPickerOpen[4][i].Color = RGB(
							math.floor(tempclr.R * 255) - 40,
							math.floor(tempclr.G * 255) - 40,
							math.floor(tempclr.B * 255) - 40
						)
					end
					if cp.alpha then
						menu.colorPickerOpen[1] = {
							math.floor(tempclr.R * 255),
							math.floor(tempclr.G * 255),
							math.floor(tempclr.B * 255),
							cp.hsv.a,
						}
					else
						menu.colorPickerOpen[1] = {
							math.floor(tempclr.R * 255),
							math.floor(tempclr.G * 255),
							math.floor(tempclr.B * 255),
						}
					end
					menu:SetDragBarB(clamp(LOCAL_MOUSE.x, cp.x + 10, cp.x + 168), cp.y + 188)
					newcolor.Transparency = (clamp(LOCAL_MOUSE.x, cp.x + 10, cp.x + 168) - cp.x - 10) / 158
					cp.hsv.a = math.floor(((clamp(LOCAL_MOUSE.x, cp.x + 10, cp.x + 168) - cp.x - 10) / 158) * 255)
				else
					local setvisnew = menu:MouseInColorPicker(197, 37, 75, 40)
					for i, v in ipairs(newcopy) do
						v.Visible = setvisnew
					end

					local setvisold = menu:MouseInColorPicker(197, 91, 75, 40)
					for i, v in ipairs(oldcopy) do
						v.Visible = setvisold
					end
				end
			end
		else
			menu.dragging = false
		end
		if settooltip then
			menu:SetToolTip(nil, nil, nil, false, fdt)
		end
	end

	menu.connections.inputstart = INPUT_SERVICE.InputBegan:Connect(function(input)
		if menu then
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				menu.mousedown = true
				if menu.open and not menu.fading then
					MouseButton1Event()
				end
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
				if menu.open and not menu.fading then
					MouseButton2Event()
				end
			end

			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode.Name:match("Shift") then
					local kcn = input.KeyCode.Name
					local direction = kcn:split("Shift")[1]
					menu.modkeys.shift.direction = direction:lower()
				end
				if input.KeyCode.Name:match("Alt") then
					local kcn = input.KeyCode.Name
					local direction = kcn:split("Alt")[1]
					menu.modkeys.alt.direction = direction:lower()
				end
			end
			if not menu then
				return
			end -- this fixed shit with unload
			menu:InputBeganMenu(input)
			menu:InputBeganKeybinds(input)
			if menu.open then
				if menu.tabnames[menu.activetab] == "Settings" then
					local menutext = menu:GetVal("Settings", "Cheat Settings", "Custom Menu Name") and menu:GetVal("Settings", "Cheat Settings", "MenuName") or "Bitch Bot"

					bbmenu[27].Text = menutext

					menu.watermark.text[1].Text = menutext.. menu.watermark.textString

					for i, v in ipairs(menu.watermark.rect) do
						local len = #menu.watermark.text[1].Text * 7 + 10
						if i == #menu.watermark.rect then
							len += 2
						end
						v.Size = Vector2.new(len, v.Size.y)
					end
				end
			end
			if input.KeyCode == Enum.KeyCode.F2 then
				menu.stat_menu = not menu.stat_menu

				for k, v in pairs(graphs) do
					if k ~= "other" then
						for k1, v1 in pairs(v) do
							if k1 ~= "pos" then
								for k2, v2 in pairs(v1) do
									v2.Visible = menu.stat_menu
								end
							end
						end
					end
				end

				for k, v in pairs(graphs.other) do
					v.Visible = menu.stat_menu
				end
			end
		end
	end)

	menu.connections.inputended = INPUT_SERVICE.InputEnded:Connect(function(input)
		menu:InputEndedKeybinds(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			menu.mousedown = false
			if menu.open and not menu.fading then
				mousebutton1upfunc()
			end
		end
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode.Name:match("Shift") then
				menu.modkeys.shift.direction = nil
			end
			if input.KeyCode.Name:match("Alt") then
				menu.modkeys.alt.direction = nil
			end
		end
	end)

	menu.connections.renderstepped = game.RunService.RenderStepped:Connect(renderSteppedMenu) -- fucking asshole ðŸ–•ðŸ–•ðŸ–•

	function menu:unload()
		self.unloaded = true

		for k, conn in next, self.connections do
			if not getrawmetatable(conn) then
				conn()
			else
				conn:Disconnect()
			end
			self.connections[k] = nil
		end

		game:service("ContextActionService"):UnbindAction("BB Keycheck")
		game:service("ContextActionService"):UnbindAction("BB PF check")

		local mt = getrawmetatable(game)

		setreadonly(mt, false)

		local oldmt = menu.oldmt

		if oldmt then
			for k, v in next, mt do
				if oldmt[k] then
					mt[k] = oldmt[k]
				end
			end
		end

		setreadonly(mt, true)

		if menu.pfunload then
			menu:pfunload()
		end

		Draw:UnRender()
		CreateNotification = nil
		allrender = nil
		menu = nil
		Draw = nil
		self.unloaded = true
	end
end

local avgfps = 100

-- I STOLE THE FPS COUNTER FROM https://devforum.roblox.com/t/get-client-fps-trough-a-script/282631/14 ðŸ˜¿ðŸ˜¿ðŸ˜¿ðŸ˜¢ðŸ˜­
-- fixed ur shitty fps counter
local StatMenuRendered = event.new("StatMenuRendered")
menu.connections.heartbeatmenu = game.RunService.Heartbeat:Connect(function() --ANCHOR MENU HEARTBEAT
	if menu.open then
		if menu.y < 0 then
			menu.y = 0
			menu:SetMenuPos(menu.x, 0)
		end
		if menu.x < -menu.w / 4 * 3 then
			menu.x = -menu.w / 4 * 3
			menu:SetMenuPos(-menu.w / 4 * 3, menu.y)
		end
		if menu.x + menu.w / 4 > SCREEN_SIZE.x then
			menu.x = SCREEN_SIZE.x - menu.w / 4
			menu:SetMenuPos(SCREEN_SIZE.x - menu.w / 4, menu.y)
		end
		if menu.y > SCREEN_SIZE.y - 20 then
			menu.y = SCREEN_SIZE.y - 20
			menu:SetMenuPos(menu.x, SCREEN_SIZE.y - 20)
		end
	end
	if menu.stat_menu == false then
		return
	end
	local fps = 1 / (menu.dt or 1)
	avgfps = (fps + avgfps * 49) / 50
	local CurrentFPS = math.floor(avgfps)

	if tick() > lasttick + 0.25 then
		table.remove(networkin.incoming, 1)
		table.insert(networkin.incoming, stats.DataReceiveKbps)

		table.remove(networkin.outgoing, 1)
		table.insert(networkin.outgoing, stats.DataSendKbps)

		--incoming
		local biggestnum = 80
		for i = 1, 21 do
			if math.ceil(networkin.incoming[i]) > biggestnum - 10 then
				biggestnum = (math.ceil(networkin.incoming[i] / 10) + 1) * 10
				--graphs.incoming.pos.x - 21, graphs.incoming.pos.y - 7,
			end
		end

		local numstr = tostring(biggestnum)
		graphs.incoming.sides[2].Text = numstr
		graphs.incoming.sides[2].Position = Vector2.new(graphs.incoming.pos.x - ((#numstr + 1) * 7), graphs.incoming.pos.y - 7)

		for i = 1, 20 do
			local line = graphs.incoming.graph[i]

			line.From = Vector2.new(
				((i - 1) * 11) + graphs.incoming.pos.x,
				graphs.incoming.pos.y + 80 - math.floor(networkin.incoming[i] / biggestnum * 80)
			)

			line.To = Vector2.new(
				(i * 11) + graphs.incoming.pos.x,
				graphs.incoming.pos.y + 80 - math.floor(networkin.incoming[i + 1] / biggestnum * 80)
			)
		end

		local avgbar_h = average(networkin.incoming)

		local avg_color = menu:GetVal("Settings", "Cheat Settings", "Menu Accent") and RGB(unpack(menu.mc)) or RGB(55, 55, 255)

		graphs.incoming.graph[21].From = Vector2.new(
			graphs.incoming.pos.x + 1,
			graphs.incoming.pos.y + 80 - math.floor(avgbar_h / biggestnum * 80)
		)
		graphs.incoming.graph[21].To = Vector2.new(
			graphs.incoming.pos.x + 220,
			graphs.incoming.pos.y + 80 - math.floor(avgbar_h / biggestnum * 80)
		)
		graphs.incoming.graph[21].Color = avg_color
		graphs.incoming.graph[21].Thickness = 2

		graphs.incoming.graph[22].Position = Vector2.new(
			graphs.incoming.pos.x + 222,
			graphs.incoming.pos.y + 80 - math.floor(avgbar_h / biggestnum * 80) - 8
		)
		graphs.incoming.graph[22].Text = "avg: " .. tostring(round(avgbar_h, 2))
		graphs.incoming.graph[22].Color = avg_color

		graphs.incoming.sides[1].Text = "incoming kbps: " .. tostring(round(networkin.incoming[21], 2))

		-- outgoing
		local biggestnum = 10
		for i = 1, 21 do
			if math.ceil(networkin.outgoing[i]) > biggestnum - 5 then
				biggestnum = (math.ceil(networkin.outgoing[i] / 5) + 1) * 5
			end
		end

		local numstr = tostring(biggestnum)
		graphs.outgoing.sides[2].Text = numstr
		graphs.outgoing.sides[2].Position = Vector2.new(graphs.outgoing.pos.x - ((#numstr + 1) * 7), graphs.outgoing.pos.y - 7)

		for i = 1, 20 do
			local line = graphs.outgoing.graph[i]

			line.From = Vector2.new(
				((i - 1) * 11) + graphs.outgoing.pos.x,
				graphs.outgoing.pos.y + 80 - math.floor(networkin.outgoing[i] / biggestnum * 80)
			)

			line.To = Vector2.new(
				(i * 11) + graphs.outgoing.pos.x,
				graphs.outgoing.pos.y + 80 - math.floor(networkin.outgoing[i + 1] / biggestnum * 80)
			)
		end

		local avgbar_h = average(networkin.outgoing)

		graphs.outgoing.graph[21].From = Vector2.new(
			graphs.outgoing.pos.x + 1,
			graphs.outgoing.pos.y + 80 - math.floor(avgbar_h / biggestnum * 80)
		)
		graphs.outgoing.graph[21].To = Vector2.new(
			graphs.outgoing.pos.x + 220,
			graphs.outgoing.pos.y + 80 - math.floor(avgbar_h / biggestnum * 80)
		)
		graphs.outgoing.graph[21].Color = avg_color
		graphs.outgoing.graph[21].Thickness = 2

		graphs.outgoing.graph[22].Position = Vector2.new(
			graphs.outgoing.pos.x + 222,
			graphs.outgoing.pos.y + 80 - math.floor(avgbar_h / biggestnum * 80) - 8
		)
		graphs.outgoing.graph[22].Text = "avg: " .. tostring(round(avgbar_h, 2))
		graphs.outgoing.graph[22].Color = avg_color

		graphs.outgoing.sides[1].Text = "outgoing kbps: " .. tostring(round(networkin.outgoing[21], 2))

		local drawnobjects = 0
		for k, v in pairs(allrender) do
			drawnobjects += #v
		end

		graphs.other[1].Text = string.format(
			"initiation time: %d ms\ndrawn objects: %d\ntick: %d\nfps: %d\nlatency: %d",
			menu.load_time,
			drawnobjects,
			tick(),
			CurrentFPS,
			math.ceil(GetLatency() * 1000)
		)
		lasttick = tick()
		StatMenuRendered:fire(graphs.other[1])

		local logsstr = "[DEBUG LOGS]\n"
		for i, v in ipairs(reverse_table(NotifLogs)) do
			logsstr = logsstr.. v.. "\n"
			if i >= 13 then break end
		end
		graphs.other[2].Text = logsstr
	end
end)

local function keycheck(actionName, inputState, inputObject)
	if actionName == "BB Keycheck" then
		if menu.open then
			if menu.textboxopen then
				if inputObject.KeyCode == Enum.KeyCode.Backspace then
					if menu.selectall then
						menu.textboxopen[1] = ""
						menu.textboxopen[4].Text = "|"
						menu.textboxopen[4].Color = RGB(unpack(menu.mc))
						menu.selectall = false
					end
					local on = inputState == Enum.UserInputState.Begin
					menu.backspaceheld = on
					menu.backspacetime = on and tick() or -1
					if not on then
						menu.backspaceflags = 0
					end
				end

				if inputObject.KeyCode ~= Enum.KeyCode.A and (not inputObject.KeyCode.Name:match("^Left") and not inputObject.KeyCode.Name:match("^Right")) and inputObject.KeyCode ~= Enum.KeyCode.Delete
				then
					if menu.selectall then
						menu.textboxopen[4].Color = RGB(unpack(menu.mc))
						menu.selectall = false
					end
				end

				if inputObject.KeyCode == Enum.KeyCode.A then
					if inputState == Enum.UserInputState.Begin and INPUT_SERVICE:IsKeyDown(Enum.KeyCode.LeftControl)
					then
						menu.selectall = true
						local textbox = menu.textboxopen
						textbox[4].Color = RGB(menu.mc[3], menu.mc[2], menu.mc[1])
					end
				end

				return Enum.ContextActionResult.Sink
			end
		end

		return Enum.ContextActionResult.Pass
	end
end
game:service("ContextActionService"):BindAction("BB Keycheck", keycheck, false, Enum.UserInputType.Keyboard)

if menu.game == "Phantom Forces" then --SECTION PF BEGIN
	local client = {}
	local legitbot = {}
	local misc = { adornments = {} }
	local ragebot = { flip = false, teleportpath = {path = nil, last = tick(), current = 1}}
	local camera = {}
	menu.crosshair = { outline = {}, inner = {} }
	for i, v in pairs(menu.crosshair) do
		for i = 1, 2 do
			Draw:FilledRect(false, 20, 20, 20, 20, { 10, 10, 10, 215 }, v)
		end
	end

	local gunicons = {
        ["1858 CARBINE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABHUlEQVR4nNXUTyuEURQG8N/LSEiSv7GzseMjkI/B3sqSvY/hYxBJsZCVwUIRamRnMyl/R2ia1+K+Y2YxmsHL5Knbvfd07j3Pec7pRHEcSwkjGMVSla0dByhW2frQg1sU8JZC7IkoxURacY1BRImtiEwN3wfcIMYmnn8avFaQr6IFk5jDkIrCbVjAPHI4w4lQiWPcpRD7A9UV6cAAhpO9v+pePndiJSE1jRlMoVdQN48dvGAVu3hKk/BniOI4XsQyur75Rw6H2BKUvhd6/9UfJUFIJMI5xht8k8cG9oRe30/2Arrx+As86yIjtEShjt8p1pOVRSmxtwvKl9GUJAgVGcOlyqQp4UIgnMU2rppDr3FkMIs1Yd5ncSS0yr/CO58sURmvjH21AAAAAElFTkSuQmCC", 50, 9},
        ["1858 NEW ARMY"] = {"iVBORw0KGgoAAAANSUhEUgAAACkAAAAPCAYAAAB5lebdAAABhUlEQVR4nM3VPWsVQRTG8d9efAVFBG0kpBIFtRRsAgpWphAsLIKVIH4E/Qo2phU7LawUG8HCSlEUJOlEsVKITUgUBV8iV3ksZoV1c+PdEO/FPwwMZ2bOPDzn7GyVxBCOYg7b8RST+Njasw378BDPEXxGf1jyIZzF7aqDyFM4j9NYwa4NXrxuuoiEuzgzYi2/+YL7zcCmDoe24sCQPfN18in0Oorp4yreDMg13wx0EXkDh+v5N6U329zBFSxhT2ttCU/wAm/xCR/wEosd7l+z3JO4hOM40ogHX+vkuxvxR1hWXF/GPcWp93jVRch6Rc7gmm4fyBwe1CIfK07/e5I0x4kkP7OafpLXSWaTTCU5mOR6kqp1fiSj2ZM7cdOfjb+CC3iGY1hQ+kvtXqenYaM0RV5UerHJLG7V85PYj73YoTT+eKgt3ZJkYUCZp1vWT9R7R17iQeU+h4m2fqXMTd6N3LUBVEkq5Q071Fr7gc3jl7SanvJPbgukPLr/BT1cXmPt+ziF/I1fmt1T3HjM+CIAAAAASUVORK5CYII=", 41, 15},
        ["AA-12"] = {"iVBORw0KGgoAAAANSUhEUgAAACcAAAAPCAYAAABnXNZuAAABdElEQVR4nM3Vv0odQRQG8J9iKgXjDQQ7DVgknU1ICKkkWFmk0MoulT5BCh8hL5A8gyDYpEkr5A9RbIKVhSIIFjfR/FFvNJNizoXNYszuXgl+MMyZmbNnvv327DlSSmqOuymlzQbPVRlLxXW/+niAhYq+Qxiv6HsHU8WNATxDH44qBBjBQxzjZwX/OXTwDoP/8H2Mm8WNvpRSqnDJ/8JnWcFDsnLXCaeY7i6um3In+NRdVFXuGz5iD0/lRL8M51iX87iD73HxcdgdfMWZ/AnP8SXiv+0GuUi5s2D/Hh9i3ooAMIvlsNewH/YUboX9CzdibowB7AaBLpmNeLu/ofhXz4jkxRs8Cbsfw3KC90RurIb/MF6F/RqjaOERyl+g1Su5uhX8Rco4TCndLp29TH/ifq8do26HmC+odlA6a5fWrUZqFVCX3Cp2sH3B2ZWTq1uEF2OexHO5na3IZaOMkea0Mpp2iM0YE7gnV/U1/JAVbMu1sSf8Bjx4QyzAKlIYAAAAAElFTkSuQmCC", 39, 15},
        ["AG-3"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAALCAYAAAA9St7UAAABjUlEQVR4nL3UPU8VURDG8d/CqqgJ+BJDwLcYOqJiiDbGQkyM34HCxljYWNlY+Q38CDZWVBAa6NTE2kKlI6iFmqDeoBEJKK7FmRvXl724dyP/ZLNzzj5zzszsnJMVRaEmp7Efj+o6NuAhLnYS5DUWu46zuIw+fEQ/spKmXZXy3DqmauxTZhOfMIbDeF0lzIqimMQ8Wh0WHMMchroMqAmfsQs3pC74Xvo2JBVvR1ak3prBcofFRnGhQTAF3kkVfo9hrOILDmEldPtCtwd78QZHY+5V6MpnYQAv0Z/jHq5tEchB3MH52GykRhLHpBY8gw2p1XZHUptStddDuzM0vVLbf42E7v+WwB/kfv1VVXzAzbAP4DZuxXgxNm5FgKs4V/L9hoV4/hu5dJjq0MKsn4lcwXE8wEmsScm1GcTbZmFuTQ/uduE3Ee92P2cYj/GS1B5tBpsE+K/kOlxpFWS4GvY8nv9Fs4wjYW9LIj1d+JzCibAfV2jKN+C2/ZG6PJVuokuYrtC8kG6ZZ3jSXWj1+AH54FX7iZqi9gAAAABJRU5ErkJggg==", 50, 11},
        ["AK103"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAAB0ElEQVR4nLXVPWuUQRAH8N+d52sQTUS4gGinZSpBBBsb0SLkQwg2gljoZ7ASsbCxEbGSCDYWWogWCr5Uoo0h0eRAFCHxDaMk3ljsJvfk4fBevPvDMjuzs7vPzPyf2UpE6AN7cQFbOvhVstyTRw1/8AKbS77zmCnZFvC2ZLuMO3iy4aKIuNThYz7iBr5kfRI3savDvn/hK5ol2yM0sJz13TiIKXwr+E1hVQp6Ze28SnRXkh9SFnfiUJaDxmNslyqzhglsxfOs78M46tiWbVew3G0g3WLFRsrM4o2UiFGclKj1EO9Ke1/jXpsz6xIrSJRexA6pIj/XvaIzmhHxISKeRcR0RJyJiPnC+t2IOB4RIuJaRKwW1s5lu4ioRsRoRIwUbAMbNfySytmQfq4FvM+ykcfvUpYmsT9n+zo+54zfwgGcyn7jhT1NLLXJ+EBQk8rUC7024UieT9tIh6d4qRXIxP9+YLeo6i0IOIyxPL/fZv1VYX5M4vXQUe1jz4ksl7S6SREPtCg0gvN93NEz+glkTmrFM1IHKuM7rhb0s1LLHioqg+2+6xiTGsbaezOHo/g0jMvoryLdYBGntV7vWa1XeCioDfHs21IrruOi9jQcGP4COQMMvMuv7DoAAAAASUVORK5CYII=", 50, 13},
        ["AK105"] = {"iVBORw0KGgoAAAANSUhEUgAAAC4AAAAPCAYAAACbSf2kAAABwElEQVR4nL3Wu2sUURTH8c9uooKFIOIjguCrEJQ0NjY2RtIoQQTBzjJ/gjbWgoKt/gPaidiImKiF2gVtxCeSqPho4iNGjWKyFmcGbsZxM86sfmHYc7nn3vubMz/O3Van01GT1TiOBbTQh3yzhSRuZ/NtrMNXbMA87mJ5yd5X8QUrsQKnMIrJPKEfRyqIvI13yXgE57CxwtpuHBIvXGREvCCswit8TxNanWoln8NFPBBij2FtTbEpM6LyKX2isvfxIzvnAL6JLzmDW1WF/29O4AlmhVX2ZDF8wmRd4dNYk4zf4CkeYT0OF/IPCqvNYhC7hRWu4GUhd15UtSvdhM/hBaaS57X4jBOZ0E1Z7gVcxiXsF7ZKrbQdz5cS8zf0YywTM1V43i6xNvfmTZzEMmzFM5zGmSR3l38gfLjGui3YnMXjkjaVcacw3its0TPaNdcNJfF4yfyExT4dKslpRF3h+7Lfj7hXMv9T9P6cQc17/iLqCm8Jjz/0ex/OuV4452jNs8oFNLzytwlblDEgbrz8ZnyMneISaUzdisMHfxZNdKWxZLxD9POe0ER4Fc4m8XvxJ6snNLFKVa7hBs7jc682/QW/sHjrCuQ/hgAAAABJRU5ErkJggg==", 46, 15},
        ["AK12"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABtUlEQVR4nL3Vz4tOURzH8dczHiNqhAgbaWpsxXL+ASmSlWyYrZ34I5Riwx/AwkZJSZSm2MgkC81GslGkZkZjZsiP0eNrcc7tua7b47mTO+/6ds+93/Pj+z3fzzm3ExEaMIbrWMYrfPlH/07lfQ/mULfovdz/54B5H+AqpquOLg7nCfZic8U/X5l0EmcGx75mlvQT/IavmKj0eYZe3eBORCxie0vBNeGaFHzBFO7jkxT8KE7hjbTBBS/xriuVukjkFxawG++zzWZfYD+O5PceXmfr4jh+YFP2z2JGqvYw+n0oyapgGgdy0EvYKFXqMxZL/VawLCKeROJxRFyMiJ0RMR4RYxGhYhPR53tEHI2IbRGxIX97WvLfqRnfmhUVgUfSYfqYrY6yBG/jBbbk3ZrKFZvM/oNDVOG/MYK3kg53STfRIE6W2jckGX7Iz5tSYgXj0gWyPjQs4UyWTS8idtT4t0bEakleZ9dLWiMN8z6Hy7jrzwNXsCJdkQUn1ri/jelEsx/iMFzAldxexT79c9gaTSsyDLf0r9FRnG9hjb9oI5E5KZmCY1JCrdJGInAJz3EahySJtcpvOtqVG6/0I4sAAAAASUVORK5CYII=", 50, 13},
        ["AK12BR"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABoElEQVR4nL3VO2tVQRTF8d+N9xLwGXyAIrEI2AhWwc4PIXZ+AEH8BlaaJpZWWtha2ViJoIKvSkNIq/gqjPiKmqeFSLIszhw8Xm/IjYn+YThzZs8e1qy9OaeVxDrYhktYxCSW0H1Aqzx7rR/EByz3OLuFlVXOqjmHMdzuTm5jtMz3Y2tXfKaIrjmO0z1EbAbxp/BuruNHr0AryRx2bbKomn7E1VwsOs7gvMrUASyoKtjBWTzHp0beU7xv46PfL7KIHZgt8yeN2AFVVWo+4y224Ci+Y7DEFvAY34qItZgsOfcxj504jOmisY1rKmO+NPJmMCvJo1RMJRlPMpxkNMm+JLrGkSQrZf9yklNJOklaZW0iv3jWI/+fjXajTDdwtzgwvYprzVa5h4cYLk6OYQ+OlfhIcXWhj2psmAFV2RRBE2vsP9GYX8Y7vFa12AXV5Wo6OLkZIvsiye4kI0mG+ijhg0brHOoR355kvrHnZZLB/9FaA/haXJ3r495XcAcv8KZHfAlXG++vsHdjVvdHK+v7IdZ0rPI9xxBuYhy3/k7W+vkJAjiOxDLReeUAAAAASUVORK5CYII=", 50, 10},
        ["AK12C"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB2ElEQVR4nM3Wv2tUQRDA8c/lzh9JwB8giIWFooKVINiLhZUI6l8g2NgIYm8rForaCDYi2FpIChUhplAwQkQDghaKP/BHjBBOg54kYSx2jzwvOfLu4YFfWNiZN7Mzsztv36tFhApcwU+0MJF1xYVqhfly+hp24iPms65esH2JyY6Yx3EYR5ZLqIHteb4xj07eYaEgr8PJ7Nsv5gvrz6KJOdzr5lCLiGZO7n9iHDekDQwM4SheSBtb5BN+NPBF90Ja0k5MF3Q1bOshqZBaaA5rrNx2MCB1SrsTBjGFQ3jVsf5DzDTwFbvyouM4i73ZaATvpeNtsznrVmf5Al7javabwCgO5Oe/sXXleksxJL2bS2ifCIzhGu7n0Y0pqZAdWf6OJ3newlN8KNivxRZ87j3vJSxbBOkIp/L8kb9bqBu7LRYxiXN4I10U09iHxx0+e3pIthIN6SZYJbXKWAmf4vX3TOr9mQ6b5x3yQdytlGFZIqLXcT0WOd3FZjAivhXsZiNiU4VYpcdAhdpPYD8u4k4Xm1+4XJCHcaZCrNLUKn7Zy7Aeb7Ehyws4htv9CFblRMrSxKWCXMdNi38S/5Z+9m1E1CNiJL8ncxFxql+x+tlabYZxC+fxoF9B/gAcy5p3z7j4hwAAAABJRU5ErkJggg==", 50, 14},
        ["AK47"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB4klEQVR4nLXWzYvNURzH8dcdkyyIwZSVEE1CWUnyUGZjYaE8LVAaf4O1v0GZYmWhPGwkDytFVsxGDTbKU0kieahhPN6Pxe9MruvOg3vvvOt0Tud8v+d8P+f77fc7tSTaZBm2ojZD+35sLOMVeIFFLex+4iJeNcx9xNMWtoM4iiO9Mwyimc04h9Vt+kNdFexbDJT+AzZgG76X1ot52I7nTXssxA2oJTkzzYHvcRdfsBjrsB9rOxAxwTi+YgG+lcAX4h3uNNitVIm9Unwm2FX6kVo6qK0uUscnRFVGwxhrWO/FfHxWZW6C5arSvt1Oab3GiOo25pW56yWA+ziAPtUNTnAZx1VZ3YmluIWXRUDHTCekjicYxT3cxMOydg27y/gCHuEB1qvSvwY9ZX0VnpXx+W4E/g/5m3qSB0lOJtmTpC+JSdrp4nMjyeJi25dkSZI5Sc427T0wxV4dN0lGkwwn2Zekf4aOPUlelQB3TWIz2CTk6mwLaadtKcF9SDJ3CrGjTWKGZktIz/TF15JNpX+k+mS2oo4h/GiYO4UdbZ45NR3cwrIka2Zgd6IpK+NJDnY7I7Vk1n8jc3AJexvm3qheBWMtPdqg3dL6H37hkD+f3eCYLopg+v9It/iGw3is4X3UTX4DquzM63GDCPgAAAAASUVORK5CYII=", 50, 14},
        ["AK74"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB6ElEQVR4nL3VO2tUQRTA8d+G+CZiwGJFfKGRFIJgI0QFG7USQQQVIb2fwMavIIidhZ1WKmIrGjExvg1YKBqSRgxEUBIf+CDosZhZdt24N8lu1j8Md+bMmTmvuTOliNAES3ASy+epX85tDdZhDJv/oXcPj+pkbzFaJzuK3ThTEZSaCGQVruPQQhfWMYRl2IEH2IQNUpA/a2w9RX/d2mOYwc2KoBQRF9FdYHAML9CB7ejDwRaDKGJINZAuqXJP8CPLVmCPlISp7NtAKSJG0dNGxyr8lpIBgeks+4Rf+IxnuJvlsrPl/K0cr30YRwkf8AWTCw1kCgPYgl1ZNozn0tk+jiN1a/pxA99xAu9xXzXDi0LnHPPvpCyN4A4eS9k7gFtZ5yXOSz/lRnzLDpfy/FZ8zf0ri+T3bCJiNKp8jIhrEXE6InoiQoPWl/UnImJtRHTntjoilkbEcM2egwX7LFrrlG6MSznjI6rns4jD+XtVOqf1DEqXAuyVqjLeUsbnoskMvMrZ3t9gvjf+5nK7K9Ixd6iz6FJ9CN800HmN2zXjU6pVbAvNPIgVypgsmN8m3fEr83hCevymmzVYRDMVqVAUBOkhPVszXo9zLdgrpJVA5sMFPMz9GSn4UmP1FvgPV2NvRAxFxM522vkDiYU2tM7CwnkAAAAASUVORK5CYII=", 50, 14},
        ["AKM"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAByklEQVR4nL3VzYuNYRgG8N9hRPIxvhL5iBkLSoxiNdmyUKLE0s6S8gfM/yDZoFmwkIkpJVmPBcIkUcwsqJlYTONjfEeXxXnV22nmOM6cM1fdvb33fT3PdV/389RTSaJJdGMX5jXI78IGdGIdXmHVNLz3GKjJPcfbabgXcRN3OhpsohYHcAVrmlwPvapmfmArXmO+6oAO4XvB+6xq4nDBLeMJvkAlySX8riP4EQ/wVXWSO3BcdbqzxVSh3VnoVLAMT1VN/sX+ouHHpVwHjmAY5yqZxd1qIabwS/UURnG1pr4QSzFSylXQg/sYa8bICJ7haCk3gHd4ibNFU9tK9b6iuU+qpzmBexj/T+2ZkX9jPMm1JKeSbEkiSSXJoxKnN0lXURtKcr5mj8tFrW0xnZHRJP1JTibprrP4dsG/kKQzyYoiVhdGH5b2nEiyqN1GhosJnkiyvsGFS5J8K5rcPgPnTM2A+tptpJk4VjT3og5nZZLJkpGfSfa0y0ijj1kt9hbf4TqcSZwu/S/AIDY1qVkfs5jCxiSbG+AN1lyxsSQ9rT6RStL2Z2Q5hrCzlLuLg60UmQsjsBa3sA8fsBtvWikwV0ZgMfpxA9dbvfkfBORvDGB21QAAAAAASUVORK5CYII=", 50, 14},
        ["AKU12"] = {"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAPCAYAAABwfkanAAAB6UlEQVR4nLXWz4uNURgH8M+duSYjl+GGMikWUpIkCwtloUw2FjYWs7CzsPc/2FhZUFYskDJFyUKmLJUoGwkzSiPSNIQZLuaxOOc2r7d7x7g/vnV6z3nO8zzn+XnOW4kIHeA8fuIXHqGopJK/rWhF+g7MZD1l/nlMYg4H8Lp4eLUDg9fjDFZ3ILtSfMcURlptViUPZ/Emzz9hQ4FnEZ/zvJYV9dNg2Z4n2I2zeIcGFjBdiYgGxqVULGd0HZektPYb3/AcG7ENqzJ9DrOViFjAcBvhYRyXnNqHu1Kt3Szw3MErXMMm3MPbfFgTu/BRcnwxDxi0VO+/paA119P5uyfvNTL/lIhYiAiFMRgRRyPiSkTMRMTViBjL9CbP41jCxYg4FhFDETGSaRPxNw6WzuhqVCLiR/amjpM4gWc5crelTi5iXY7akFRKh/E17w1gLXaWsnEal9tk879RzYdP5nTcwH6pEdphLMvAC8nBMsqOHtJjo0fx3lKd/QtHCvOnbXheSh2/tYVM1xjIyldqMEzgvvSwPGzDE3hQWI9ibycGttbeeUPUI6K2zP54qRnP9bIRexaAEmpS2a3J6w/YLr12XWGgWwXL4AtuFdZbcKoXivtpNOnHqpnKeWzuhdJ+lkcT16Xb5IJ0v3eNPxBaj7M/EmAxAAAAAElFTkSuQmCC", 45, 15},
        ["AN-94"] = {"iVBORw0KGgoAAAANSUhEUgAAADEAAAAPCAYAAABN7CfBAAAB00lEQVR4nMXWv2sUQRTA8c/FOz2jIIrBgNgKIqiIoILYWdj5q7NRRERs0/gf2NiksbCyTyOCheRiYaeCgoLgryKiiPE3Mf4ieRY7kmPdu9tL9vALw86bN+/Ne7tvZ6YWEUrSwD7sxhN8KGtYwBr8TP0aIj0X8BwfO9idxdX8YL2Pha/gTB/zl8op3CkYX4uT2IMd+IYNGKtFxDWs7uG4gSOVhdmdB/79ygfQxCP8wjDeYhPe1CJiTu8kBslvzFksq9f43qbfKgt6AufwJe+gnpx0S+IpLmMXzreNT+AWPuM0DufsxjEq+4+GMYOXspp/gWepPy17u53YidlkU0xEzEYx9yPiREQMRYSIGEvjXyPiQkRsi4i9STceEfM5++NJN/AmIuZyi7ci4lDB5JtJfyPJIxGxPrUtEXHxfyXxt5xW4Tou4W7BB1uJg6nfSs+ZNv0n/MjZrOtSIpVSx1G8ktVoJ/bL9nYWk8jzLiePLC+08tQxVWJeA/ewGY87zMknMbqMuPqi7GE3mVpTtg0WMZ2Tty81qH6pRflrRy9WyLbCZpLfyw6jhaoW6MRQhb7m8bBN3ijb4wdOlUmQlVw7xyr2X0g/F8AyTMnuWK3Ublfsv5A/SBySI+YtT1UAAAAASUVORK5CYII=", 49, 15},
        ["ARM PISTOL-ALT"] = {"iVBORw0KGgoAAAANSUhEUgAAAC4AAAAPCAYAAACbSf2kAAABtklEQVR4nNXWPWgUQRjG8d9eLgYRFawEFSUoNjZ+FCksFKy0UXvRxt5GQVMKQoqUgq2lhTa2WtgkNrGxMKJEERsJSoKcBj94LWZP7ta53O3lRPzDsLvvvDPvs8/ODFtExH280p8Wbg6QV+U8HmAf3g4xHiZwHI/bgSIiVrFtyAlzPMeH8n4vDmAFr/Gm5lyBAg3cwaN2x98QXpeQXqx6D2vYhP24gLl2RxERa9Kn+B9oYRGbm/jm3woPLOl2+qvkNhzEHmmZLOMzxoqImMfUCAQ8LIs9wyfJjGvY3WfcF2xZp/8uDpVz/d6cImIqIlZjY8xExHhEqLTZTO6liLgdEUfLdiYzrm9r4ikO47p0ZPWigZPSLu/kI27gZx9n2yziBRbK58kBx3XRLK9LuDxA/gq2Z2I50RM4W4ktY4d0nk+W9ccHEVql2T+li7FMrJfTV3S72cIxvKtZM0ujZn5O+I9MbCemK7EZIxJNfeG5L5QTfgtbO57fY7ZmrXXZqOPfpXXbyRFcrMSuSsfeyKi7xuelH7IF6WR44k/Hp3Ub8hL3hhXYiyIiRj3nLpzDaZyQ/i9OjbrIL+XD/twN05nXAAAAAElFTkSuQmCC", 46, 15},
        ["ARM PISTOL"] = {"iVBORw0KGgoAAAANSUhEUgAAACsAAAAPCAYAAAB9YDbgAAABmklEQVR4nL3Vv2sUURAH8M95hyIo0UKDwVIQLCQBC8HKv8BCYmVh6R8REAVtLCwtFETQ1l7FX6hFtBAiClrZaIJVTM7EcNw9i7eLy97e5d5u8AsDM/PmzXxneDvbCiHMmwyPsTZhLNzAQxzEV/QS7ub4g83caIUQ1rC/RiJYxo8RZ8cwVTNvjmu4khudhsmOZFIHP3FPnHi34F/HFu7iEGbRJk52C7trFvwfCFhFuyN20YTsLwwy/QBaE95bxdNM7/r3pgfiRM/jGZ7kOTt4jnMNyH7CmUxfwD5M49I2977hwoizU3iPN3ibO1shhBNYzIqkoouj4nSLmMWHku+quE1eYY/Y4M2UYh18xlncwsyY2MOGG/pYQXQv7pd865jDCo6jL661NIQQJpUHYRivK+Jul2K+hxBOJtQZKbsS+mpX+AYlex6XC3YfF7GUOMNKNCXbL+hTuFM6v44XqaRGIYVsVWyRbE/ciUU8SmY0Bil/sO2ewYb4Ec7htLgrv9SnNoymZJdLdg/vMtlxpJD9LU7qZUFWdpzRGPwFoGrg1hC6LbEAAAAASUVORK5CYII=", 43, 15},
        ["AS VAL"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAAB/klEQVR4nLXWzYvNURgH8M9ljPFOyk7IAiVNFmpQNBYWykZZWFlY2vMH2LCgrGZDyD9gIUpWRhQ1SixFSCJvM8Zr92txfpo7v5lp7tyZ+dbp/s5zznOe1+85t5HELLAZ+/EbS6pfWIRRLKtkP7BxEv0tWI5VGMLpDnw4hv7GLALZhzuK09PhuxJUHU0sqMmG8XcGfnRjWRc24YuSwV/VwRvwBn+q+Rqsxlpsw8FKr50goGsKeT0IWNHmmRMMPMB7xWloYAfe4hMW4nM1RpVSwsPaWSMtZ6ww3vnFLd+/8BSP8dHEZHRUEUleJGkkUY31Sd4lOVnN1yU5k+RJkqEk95PcSHI5STMFf5OcT9Jb6QxkPJpJTlTri1pszdnownO0EuU1XmI7LqAfF9GnkLY1E0eV3h/BT6VFu5XK/URPtbeBm3g3g0zPCAuwsibbpNwkB/AIO3HJ+CBgjzECX8cAvlayqzhb279xrpyeFEk+J9ma5FCSa0keJjmepGeacp5taZ3dtbXFlawVx+ajpf6PRpJBpeSvcAt328zBoFKVpvIOjNTWe/DNGJnP4dRsEz8VurC3Q93/Dr40MQgKR56ht5r3dWinLUx1v7eDKwqJPyhca06y556xQHYp1/LwLGxOjfns2ySHazw5Mp8cmZcEVViqPH6Dyt+Z28ojOOf4ByC7Nc+GCt/WAAAAAElFTkSuQmCC", 50, 13},
        ["ASP BATON"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAACCAYAAAAaRY8cAAAAMklEQVR4nGP8////WwYGBhYGBgY+BvLBZwYGhpMU6L/NwMDwiUy93xgYGH4zUWD5oAIA3Q0Jetjcu8gAAAAASUVORK5CYII=", 50, 2},
        ["AUG A1"] = {"iVBORw0KGgoAAAANSUhEUgAAACsAAAAPCAYAAAB9YDbgAAAB4UlEQVR4nK3WO2gVQRQG4O/Gi0bEB0lhESvFJkpKG8EmpSCIYDqbNBaK1oKFdsFCESsbIWDhA0QIIiLa2FpoiKYwEoIQUBM1ilHzOBY7S5Zlb7ivH4bZ/c+Zc3b+OTOztYjQJkZxqcR9wr8K3yWcajdRjnoHYxfxscQNoIbJAteDgziEqQ7yqXWgbBW24CbOoRh4F85iP+7hZTvB6+jFGM7LVOkGlvGlgt+HF3iEp4lbxc8GcVawjt+o1yJiCoNd+sh2MIsPDWz5x87iTy26XAdNYk22ikdkdf+tmUF12e7d2kbCv3iCedmSX8Tugn0Uv3Adz/EK35PtKI7hdUsZI2Iu2sO1iJDatohYSPxSRNyPiJ2JHy/45e1B8t1RYWvYejaZx1fMYRxDSaWysjmuok+2vIM4Lds0xzFREbs39f2dKrseEbcioi8pk89spuR3O/EDEbGauGclNe5ExPYKlaaTf3+nyl6RnZOLJfXmS34HUj8iO1/hbsG+J41frsiRK7vWgq6VN1ij0+G9bGPkOJz6oQI3U3gewcMGscZkF0XVRBqiFhFnbMw08BifK3wv4EaJ24uTGE7vKzZqewGXtajepmihZobLx0FEnGil5jptrfzITOIHpvEGb/Gua6o1gf/niwh4NmNiowAAAABJRU5ErkJggg==", 43, 15},
        ["AUG A2"] = {"iVBORw0KGgoAAAANSUhEUgAAAC4AAAAPCAYAAACbSf2kAAAB8klEQVR4nL3WT4hNYRgG8N89M7gsZiFpNJli1KXZiY2GBWVxi1KUouwkZWNjQWhiYTULsmDLQpMUZSeWCqWU/6WYhoxkxr+LOBbfuebMde695869PPX1nvN+73nf5zzn/b7vFOI41iZ2oII7eNMk9jD6sL/dot3tJsBDLMMQFmIP1uEH5mTYd3iMa3gx26KFRPHVOI75s02UQiQQXI8y3qbmluIVDmArdgsvUcUHZLVAAUV8w2SV+DAOYW4HSP8PjKNSiDvQ5G3gl/CFzgtr5LJsxWP8xHdB9e5/TfwjJrAAvQmBMXxN5sawApsFJXMjwus2iD3CWqF3izhXMz+KAWzADSxCP0pYgykMoqfVwpEgfzNM4laG/wLuCspF2JT4n2InhpP7Mk7hfZ38i/PRnUaj7fAlTgs7xFmsxO0GBU8K6sIJXErNbcSZjBpLElvMyfcP6hEfwRF8SfkmMuJ6E9uDfcn1Z1xJxZTwTFhctehP7FQesmlkEb+Ogxn+8aR4V8q3KrFbTJ8BV/EpFbMLF+vUj3IzrUEW8b46sRU8FxSsoiS00kDKF2F5ct0lHG5H6+TchnlmHkK5UIjjeMjMHnsinG5ZGMX2Gt+gsFuUGzxzr1ViTRHHcSvjWPw39raYoyOj1Z+s+8JP0oPUuNlhLXPhN0TD/Cfdw9YjAAAAAElFTkSuQmCC", 46, 15},
        ["AUG A3 PARA"] = {"iVBORw0KGgoAAAANSUhEUgAAACUAAAAPCAYAAABjqQZTAAABuUlEQVR4nM3Vz4tOURzH8dcd48fjRxNqkNnIQspCVmJtY2NhY2EjG/kDsEH8D5YaZSGKSJSyI03ZkC2P1BBGTDLGr3ws7p1xezzPzJ2nWXjX6Xw73++953O+55zvKZJYJJbhKF7gGT7VfEXNrk94ButxEpOzwZWoAnuxok9BW3AOmzomL7qH/8PHStysqI24iP19CurFLwzOE/MV3/ED19DGSJFkEkOLLKgffuIsNgz6PwTBAzzH0yLJtP7PEtzCK0xgGw7XfA+VZ63AKO7hPnZjH75gRy2+wFtJXqZ/7iZpJVG1EzVfO8nparyV5Hotbs4230Ecx1rlFR/C9g7/O0xX9ghOVfYY9vh7/Q9UGW1Gj0x9SHI8ydIk5+fI1J3aCi/Xxo91rP5qktVNM9VN1HiSrR2BR5J87iLqceVfk2SqGvuWZF3t2+Ekl5oKSmKgS/ImlVW5zih24gZu18aXVP0urKzsJ8piOMMhXGm8dcriNqa8ijM86hHbxsHKnqqJgOX4jYFK4E1lQYQWLixE1Mwzs1DayqflDTb384O56LZ9TXhf9cOav2+Nma8k9OK1MksTWKUsgovGH0jxzXyX+j5jAAAAAElFTkSuQmCC", 37, 15},
        ["AUG A3"] = {"iVBORw0KGgoAAAANSUhEUgAAACsAAAAPCAYAAAB9YDbgAAAB40lEQVR4nMXWz4tOURgH8M8dP0JMo4QmWWEos5HEQmgUUiglsmL+BmtLK5YWxMpikjSWdrJgZWb8KDbMLCyIoYxpGPJYnDN13e47c98x8a2n55zveZ5zv+9zn3PuW0SEBcQ9dOJAw/hBnGi6+eL29bTcpw8H8Sb7chWKbDOIbNtwBPfxa66HFLmyXTiPJfMUexa9FTFFi9g6PME+TM4WVETEIVzDxnYV/iV+YqI0H8YX/Mjzbql47/AMm4tY4KZtAzPVH5eEPsT70voqqb0mpMr3/k+xH/Eat3GlSUKH9Mvmi2GpX/uknh2trB+XqncRV7EFizK3QTpgexs/LSLGYm5MR8RoDX8sImTrjoipzI9ExLnMiYiBiFheihURS3PsUIVvabNdXeO4i2+4jJ24U4lZWxrfwDKpF09KrxjWSQdnqpLblX1n08K2EnsTF/CpxNXdFuuz34XDefyoJBTOYKAmd1P2EzVrteio4QbRXxEKb2tie7I/XeJuVWL240FN7kyh5vwYVBPKWNMidgxfsbLEbc++p8RNY3Ueb8WrFoJe4hQ+N9SqiIijWFHihvz5Gst4jN2l+XdJfD921MRP4hI+NBU0K5qexGzXa26EPW3uMW9r94/MiPT5e46neCG1xz/Bb86uexoVUGNgAAAAAElFTkSuQmCC", 43, 15},
        ["AUG HBAR"] = {"iVBORw0KGgoAAAANSUhEUgAAADEAAAAPCAYAAABN7CfBAAACDUlEQVR4nLXWO2uUQRQG4Gc1qy6KEu8oCGqTgPYWNqKFgrWXH+AFhCjWotgoiJhK8AekNIWVgiKxULERNAZsVLzgLfFCNDGSsGMxs2bYfCab3fWFYWbeOWe+c+Y758yUQghawCm8w4M0X4IJLMR3dGAKF/Aal1v52L/Q0aL+HSxGFzbhIioYw4dMbgMeo4p+0aG2oRRCKOM8jrdpz6W4jqcZV8EvHMEKnEAtBMbxO5MtY7JgXMOyxP3VKYUQBrGtPfY3hIBSNn+EbixvQHcUi/AcI/iE4VJoMSmawISYO6dxA2+TYWMN6q8X822iRnTgvRiz88UX3MIwfuJMtvYQvejEJVzFkBgGozgrht3LJF8fMrPh4wwmhPAmzI1qAbc/hCC17owfCiGcTPyOEEJPJldrUyGEmwV8U2226vRC/MX9GMC9uvXx1C9IJ13T2S5WITgkltcclaSzsrGDnxtFTkziHK6YrgCrCuTWpX4fdqVxn2kHymI4fa7T2yom9o/mTJ6JIid6cK2O+yZeWrn82tQfzri+bLxXzJl6lFNfLVhrCkVOVAq4qljONmbc5tR31RnVKZ70QRwt2OsVDqT92oJSCGGnWPKINfy+rHxluI092fwuduOYaYdyDCj+E21HaR7XRK/4VqphBGvabVAzWDAP2cG6+WpsaaMtTWM+D8BBfBUvrWd4ovFb9r/iD1BPGUL5VqhSAAAAAElFTkSuQmCC", 49, 15},
        ["AUTO 9"] = {"iVBORw0KGgoAAAANSUhEUgAAAB0AAAAPCAYAAAAYjcSfAAABPklEQVR4nL3UPUtcQRjF8d8uuwYiKVTWQlzBRkk6Y5UUAVPapQvJJ7HTzsoqYG3hV4gG89JKlmAZEQKGVCoqmBgtlMdids1wUUHXm383Z+6dM8+cZ6YSETI+YAR72MEPzOHE9YxhGNuZ1ovjbDyKASxiqpKZNvEFgzjLfviKoxtMX6CBjUzrw2E2/o0ePMFaJSKamMVjPLth8W74iSrqWBIRgxHxPv4PrYhQwwP8ko60VtjhjpTNHym3/vsoO890GW+yuQW8wzhW25trSU0yIzXZbfmL73llE4UPGlIWQ1IW51J3z2P/DoaXdCp9im+FuWns+nfsPVhH6JJOpW8L+hZWul38Oqp4iNcF/VNZhh3TV1JuOQdlm768Qt8t23RSauUOp/hYpmklIh5JV6De1jalJ7E0qnieGcLnMg3hAkvWtlcmHbfCAAAAAElFTkSuQmCC", 29, 15},
        ["AWS"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABHElEQVR4nMXTsUpcYRDF8d/qEhWxEkQWQTAGMUKKVKnS2MXSR7Cy9SGshDxBLKxMo5YWQlJoUgVCithskY2VlUVEFHFPinurZdds9or+YaqZM9+Z4ZtaEhVYw4ceuQbmcFzlgX6pDTjIO7zFK/zoUdNAHX8Gs/ZfpJZkBTNY7kie430X0Tg+YvEBjVzhSwV9aklamFQYfCqaeFGlQf0f+TY2cITn2McQ1hVfagHbHZpr7OFEcR+Xffi47d9yD5K0klylO+0k40kkGUlyk+RbkpdJ5pO8SXLQoflV1j9q1DGKsXKuTWxhFrvlxr/iFEt4hkP8LOub2MFnnOE3WpW3OwB1hfFPGMYdLsp4jVVMYRoTijv63tFj75G83stfjl3YXlWyhK8AAAAASUVORK5CYII=", 50, 8},
        ["BANJO"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAABIUlEQVR4nN3WMUujQRDG8d8boqAochaCYGljfWghiCBoc1hfc2IvXH2NVqeFWFlY+TkEv4BgYWdznYVg4IiF3R2oj0UQXoKGJKJJ/MPAPgwzu8sOM1skUWIcW1jDHEbwB2c4xLV+JcmzfUtSz+v8T/IrSVGK6Rt7XqwnuW9xiTK/e33ol6xIMoErfGn3EbGI83crky6o4Kf2LwEFdt647xI2uow9btK7GK1itYtkq7ho4R/DUAt/Ffv42uG+sxjGd5xiHjP4USS5xWSHCfuBaFQHGqU1qBRlUcUlljtM8k9jrnw0sxrz7RInWMAKbiTZbrPtljnpYas9atIHSUYHsf1Oo1bSU6hXcIdNPLSZaE9vZ0itSf/F46f5ohTJ5/g0PgGQZbQmy/b+pgAAAABJRU5ErkJggg==", 50, 14},
        ["BASEBALL BAT"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAACCAYAAAAaRY8cAAAAS0lEQVR4nM3OOwqAMABEwUlQUVTi/Stv5FmsLGMTQYJNOl+17Ac25Jx3HLi00WEtekPAjAE9lqr/ZG9GTJX3tY1IHx9Syc7YcPzX3MgVBvHSNhaEAAAAAElFTkSuQmCC", 50, 2},
        ["BEOWULF ECR"] = {"iVBORw0KGgoAAAANSUhEUgAAACwAAAAPCAYAAACfvC2ZAAABv0lEQVR4nLXWv48NURQH8M/w/MrGJmQLkfiVrGYL0YiGhEIl4Q/gf1BJFBLR6VWUQii3ZiOiUCCEKERkC4pHgbWxll3vHcW97Ji3nnlvnm9ykjv3/JhzvnPuPVNEhAbYj2942STIKpjEKVysKloNAy9hAicwjusN443hMNbh+WoGRQOGL2FKSnQn9uA2nmEZa7MsYDbbLmMRnbz+gi4+Yz7H3Iw7OCMR0pPwxyGSDWytadvFmgHiFniNu1LCC2WDFrbUDFYNXBfFALZvJPbnpLyWsL5s0LSH6+ApbuFATiTwHV9zcvN5r40b0hf5K4oYrInf4onUp21ctlL0jywbKz4H8XCAd/RH/BtzEXE1Ig5FRBERSvIu2zyKiNMRMR4R7yv++yo+jaRlpdHL6Egn9RqmpZNdxV5/HrxZbNPb351REPsbEdEtsfEiIs5GxPYa1U5nn25ETJX2L1QYnhw1wx9wM7P5uGadR3Eyr6/gVUnXrtjukq6p0SAixoao9EFmbzEiJiq6IxWGz4+S4WEn3Q4cx26cq+g24RM25OcZHBuSzx40Gc39cF/6JyDdt7+GQGP8r8Exk2Pfy9J3GAyCn1DyDO+30BjQAAAAAElFTkSuQmCC", 44, 15},
        ["BEOWULF TCR"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAABx0lEQVR4nL3Wv29OURjA8c/bvrQEibQhIhITkf4Bfqw2f4FIJEQwWInJYDAYTRYWk4VFTLRDYxCLRCTUUJJSIaJSSVstHsO5jdPbt+99e/u23+Qk9zznnOfnee69jYiwRq7gEd6uVVELTuIlxqo29nTBWG8XdKzEbmztZGOzpoGDOIu/OIe9+CYlJgp5j/+J+lPIn2MCjQr9RzGI8xiXqtKWRkRMor/Nnnf4mc03YwgDVcpb8GLRbiaLYh6WB9iPSUxjBr+ytQFcwAHMNbGnwvjhwsgIvkuBzK/C+WmpIvAD27GpmJedK7MFn/Glhb7Zwq85zIvEWEQ8iYjfsZTXEbEjIpTG9eiMiYjYVzq7PyIORcRQROxsobvWaOIr+nBcukJ3sFBEer/IQJmbRSZvZJl9jGNSvyzyQOqJnA9tKlCbpnQvhzGFu3jTwbkZvM/mV3EPp3A7k/d1x81qmrgoBdIq8yvRi8vF8ycp+EEpGTnlaqwfNe/kpawPzmTyZkQsZGu3utUDVaPOoV0RMVU4OtxifTwLZHSjAqnzZZ/FNTyUXgxlRrPnI9hWw8bqWYfsnI6lnNiIitT9RWnHU3zEs2K8Wgcby/gH8jbLOOESHgwAAAAASUVORK5CYII=", 50, 14},
        ["BFG 50"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABWElEQVR4nMXUv0vVYRTH8dc3b5ZpZC3lUIKLINHi6N/R4B+QTu7N4daug3+C0tTQGIgKDkFTQRimqEMgopbJtU7D+V66onjzfq37hsP3+cJ5nud8zo+niAht0oVHOMEeDjCKVxgsfa5jCH0IvGv3slYUFYQM42O5/oY6DnEfW7iDXnSXPvWm9ZVTq7B3GxOyIoFJzMvgr2EEc1JwH35WirQFRUSsYQNvKpzzBI/xyx9hdSzKanXjSArax218xw0psAefS/sbvuJH0//dIir0Vgd5iSUUMmnPGkI+SYU1OcC7eIh1zMh22ZetNHzOwe/xXFajXS5TkTM0ZuRAlr4ft7CCKbyWpR/AMRbwATexis1y/4R8uTpGQ8gDGchbPJXBNrNTfsdkP69iGsu4p8MiQCSzETEaES6woYjYjYiNiBhs4fvfrSYzeuT0K3Ae43JOXuDLP87vpfkNyofv/8tF7+MAAAAASUVORK5CYII=", 50, 10},
        ["BOTTLE"] = {"iVBORw0KGgoAAAANSUhEUgAAADEAAAAPCAYAAABN7CfBAAAA5ElEQVR4nO3WP05CQRDH8c9TYqFnEDR2XkIOQu1ZvAGU3kCNFMYzSEJiaMTKBG0ogEJNXsha7COBgiBQuI/47TaZmd1fZudPFkKAMzRQRxVj9PGAewwtcoAaTnFS+NRwXpy/cDhnP8I7BujhqYjZwdSWZCGEJi6xt8Rmime84UgUfIz9bS8XhbRxg0d8bxIkC0UqEmCCa1zhYx3HlETM+MQt7sTvPFnlkKKIeXK84kWs0VltXqAr1t0gdRG/Id8FEUs7Uqn4F5EIeeWvX7CC0nantedESpnYeGJX0LIDuxMl32J/AFNeaeJY2r1GAAAAAElFTkSuQmCC", 49, 15},
        ["BRASS KNUCKLE"] = {"iVBORw0KGgoAAAANSUhEUgAAABIAAAAPCAYAAADphp8SAAABc0lEQVR4nI3TsWoVYRAF4O8uIngJomJjMCRlGjEqBBRBURB8AAkEVJJCVCzSWZjGF9BCIZLSzlcQTOUDiCIpbFUUCzUQCEI4FndW1usGHBiWOefMP/Pv2ZVET57bA5fkbB/e6I+bONqDH8GNvoYGMz34JK714As43oPPNLiNiR7y5H9iE7jTYIiVMXITFzDdwaYL2xzTruBAgy0sd4gz2MFVo6s8qFwobAenO/plbEkym+RnkqVy5FGSQceRjcq2HiR5Utql6p1tsIj7+ITHOIZ0Jn6obCNGjq7jc/Uu7iviWYne49XYOxj4N07hcg2Hh+1BbXzDFF5gA3O4VNwa3lQ9Vdo/W7autVPnq96thi+4aOTW18J2SzPf2Xg4SDKHW0buHTL6cq/gdc+V4Dxe4jl+4CDWB0nGhWs19d4eBz01+iPu/oV2bB0mWU3yPcl2kutJmg7fFLZdmtXqkcT4RvtxopOH8bE2mKyrvMPbev5qG38DD4zt9GPY6RcAAAAASUVORK5CYII=", 18, 15},
        ["C7A2"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABtklEQVR4nMXWO2sVQRTA8d/1LqiND9B0ESPYRAsjchsbBfEj2NrZKH4GUwjiB9DCxlYEay0EQfFJLkgI+IwSIUFFFCXRxOSOxYy43Ozl7kPxD4ednTl7zsw5Z2a2FULQgC/4igl8amJoAHtxBUeGKW5o4OQstmIUIw3sDGIEO/C+jHKG85hFwNMCnQXM9/UdxikxI9twBy/TWD7FGaawD6tYEzMY8CPJTyyn5woWU7uDccyVWUgrhDCLsTLK/4ke3hb0r4hB2YL5DN/xBm3s6lN+hxkxKp9xW4zmBC6WnEgXBytM/Bs+JJ/78QCX8ahgIYvYiV4mpruLjQULOYYXBc4e4xBODJnUVZzBgSRtcV+u4SFei4FZxtIQW4P4SCyt59iNa9gjRmBazMSMWMeDWMJm3MB1bMel3PgkztWcYCUy3MQFcVOPiWVWhg42pfar9N1qkiz1NzrbKxFCqCPtEMJUiDwLIWS5sbnwh8ma9itL3XvktLiBezgpZuE3+eNyvKb9ytRdSFu8H+5Zf5rcz7WPNvBRiVbDX5QijuNW7r2DJ3/bST/ZcJXK3BXLq5vaC//Axzp+Ac7nBz2s99AmAAAAAElFTkSuQmCC", 50, 13},
        ["CANDY CANE"] = {"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAPCAYAAABwfkanAAABZ0lEQVR4nNXWsWoUURQG4G/CFmo2G0VIF1KFQAQLg2IhpPMRArGySJPGPqmTPIKFaO0DCJpXEFGxEURimhBI5cZs2AjBY7Fn4Sak2IVdhvxwmHP/e878/wxz594qIowYk2hhKuP2FXkL02gm18q+Ozl/Cw3s4z1eYq8vUBWmp/JGlwUnky8FWy6aaBaCjVE9fYG/eIFXfdM/MI9qDGKjxhreVBHRxY0aDPxGGycZHfzJaGMCT/Cw6OlisZENg5o+z/pSsJPX4+TayZ0m3y6MlPWDYhPbmd/E8yoi1jGboseFWCfN9fkTnA0hNkp8xKPMP1Vj+HuMA9t6bxw6E3U6GQJHRd68LqbvFvnpdTBd4Wkx/jmOjWAYLGAF3/AFB1fUbOFxMX5X90LcwUYxPsRnfNXbYZdxv5jv4p6IqDM+xOD4FxGrEaHub/p8wLozPMNbLh6Y6sIMlvAgYwlzeoek79jFa/zqN/wHqCb0Y2EfwxkAAAAASUVORK5CYII=", 45, 15},
        ["CHOSEN ONE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAACCAYAAAAaRY8cAAAAT0lEQVR4nM3PoQ2AQBREwTkBVSBwVEAfVEEtCDqkARzJGTDkY0iOUMGNfFmzKSJmLIpAwonrbR02ZLTqs6eIGDB9Ysb9GzboMWJVDtbieADxkRHkoyqOkQAAAABJRU5ErkJggg==", 50, 2},
        ["CLEAVER"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAAAuUlEQVR4nO3UMWpCURBG4e8+mxSCjc+AILYGJCSlYIyLcDtp0giWrijYmCatO0iTRWQsfI1FQIxXn+CBgSmGmfM3kyLCldHAM6Z4xQTrVMMgd2hXdY+y6ks84gUt/GCGJyxTRAyxRP/8znsUdsLNA+c/MUIX3ykiNnjIJJebL3TQSxHxi3RhoX9TYHVpiVOQIqLEAj18VLXBMV+ggTHmGJxG8TByfa03vOdY/BfFOY/l5BakbtyC1I0tOzomc2n0nSwAAAAASUVORK5CYII=", 50, 13},
        ["CLEMENTINE"] = {"iVBORw0KGgoAAAANSUhEUgAAACsAAAAPCAYAAAB9YDbgAAABc0lEQVR4nM2WPUscURSGn41iNiL+AkkQUfyoLQULbWLA2i6VXdr8AgshioWl2mhjqRa2NhaCQbS021WEwAomu1q4qz4Ws+JlnMUJuM6+cOCeO4c7z7ycMzM5dRA4BPaBVWAHqNGKUvPqkc/6o86r/SqtFE+LL2rJl/qtzqqdWYOGsKiT6l0CsOqluqQOtwos6s8GsKH21e9m4HZODVt4CFgAvqZo93/AXL3+LdUG/ADOgDKQBwaAlTgsQBdwDPSlPPwQKAAPRA8Q6gaoBvkdUInVlIH7IB8HZhLus9aesHkNHPwH7Gg9mqEqcEpkQnsS7AjwLeVhFWAZKAICf2PX465VidwOdRXLx4FfwEUdtABsA8V4E/eoZymG7F7dVceaNEwD6rT6KdwPC7rV41cgL4w+GL3NnPpG8bT4qO41AKypW+qU2pYFZAibUzcSIM/rLn7OEjAOuxgA3qqb6oT6IWu4eOTUE6CD6I9rHSilfBO8ux4BVoQAWAGhrhYAAAAASUVORK5CYII=", 43, 15},
        ["CLONKER"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABYklEQVR4nNXVzUocQRQF4K8lYMa/MTAKBgIhuxAC7gQfQH0JwScR3KkLX0DiLnGbLJNNXBohCK7MJu78N+AiIkmwXFTJtMMMjNUDkgMNfW/Rt8+pOvdWEUKQiQEsYQoTaOBZbrGqeJL53SQ+4HVLvoHzKoRykSOkjm30p/gPjvCrlOuEwfQMYbQUD6e6d/FIyt3FozjAGvbbFS6StZ6L9vjehZAGztJ7wPskpN7m50OluBe2u8EnrOBbeaEIISxgHRfYEHf1NwqxD67xF7VEbA6vekCqKrawjM9EIScYf0xGFbGL1T7xuP53hCKEMI93uNTZWv/wVLTWLF4+BtsWfBWt9YVms09gDHtdFGjX7IfuT6FOU6mvIvkbfBSbfae8UGRciHUciydEHASn4v0xk947oaY5Xkc0hXYz8X6K4/dHu8I5QuAtNvGmJT+Iq5yCVZErhLi7i5gWrVnDix7xejBuASoAVAF0wMlOAAAAAElFTkSuQmCC", 50, 12},
        ["COLT LMG"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB30lEQVR4nL3Vz4uNYRTA8c+drgVj5NdGfmRlI9SwUiQiaZStbCVlI/8AZWNnZy2F1GzZaMZmhCFZiUKUhZlGzKCLmTvH4n0077z3uve+d8Z869R53vec857znPM+TyUilKSCZ9iMV3iLz/iEiaSP40nZwAWO4gTOdmJc7eID+9Gf9GOyoopclRX5Gj/Ss15cx7uc3Xc8Lvj+wkq8xECnSVUi4kqnxokBbE/6eEpmXswk37CjZGyYxQO8kRV/sYlNHT1Jr6JeiS5mawmYxDRW4VHS89RxSLZhwxjrZrQ64a5sNE6ndRV9LexnZB2En7iAUZzDEFZgNdZgebLbiQ84QjZa7ToynYINp+QmcAPbUEtJ78HWnM9uPM+tq1jW4huXMZVbf0nytYleaxohmjMTEUMRcSYi1kWEgrxIdjcjohoRpwr+/U18WsmmkvYNkh+tWTzEHQxi7B+7dxy7ZONwC1tkR3CeqaJTGz6WtG8kIp5GxPmI2NhB5b0R8T7t+rXCu8lcRw4udIfLSlmHkxHxOyJqEdFXeDeSK+TSUhfS075n87iNtdhn7pT5y/2cfnghU9INlVi8a2Sv7B8j+3/Wy+6DJaFsR1oxai7xKg4sYuy2LOaFOIN72IARjSfZf+UPY2o8Vu7ICHMAAAAASUVORK5CYII=", 50, 14},
        ["COLT SMG 635"] = {"iVBORw0KGgoAAAANSUhEUgAAAB8AAAAPCAYAAAAceBSiAAABaUlEQVR4nMXTz4uNURgH8M+9vQxNTE0WbGyU2YiNBaUUNf+AsrO0UBbKyk62JHt/BMqOsiILG5QyKQtDhpoppMFcX4tzyjXN3HfeO2q+dTrPeX6e5znf00tiDDzBLizgIz7VfQGf8RSLI+LPYFGSrut0kkEK9q9h35vkSkuO40lmG5zFT7xYdbse3uL3kG4a59Gv5xtYWhU3Vf1mcAjf8aPavqHBJK710n3uczjYMWYtfGjwFcHuIcMAX/Coyg+VDqdxqSVp8B47sGeE3/UG97GCc0OGVzi8TtBRZaS9dewrOKE85aQy9gEmFDL2sRPLKnEeJ3mZ5GaSy0mOtRBmrsbdTTKT5E7+Ymmj5G0wiwc4guctI6WMfl+VX+MX3iikmsBVbKv60Rjjq92qHb5Lsn1I/6zqpzaaq996u39xABeqfFF517HRdPQ/hWXM495mCqNz57eV73Nys4XHKU4h0vxWFf9v2NLifwBur2bP2wW9HAAAAABJRU5ErkJggg==", 31, 15},
        ["CRANE"] = {"iVBORw0KGgoAAAANSUhEUgAAABMAAAAPCAYAAAAGRPQsAAAAsklEQVR4nO3TPUoDURTF8d+EMWgjWrmEELBwA+7Byj24DfcgLsBFuJDUIWnSWKtoVI6FVwzDBDJgJf7h8L7uO+++4jRJdDjCGRZ4whvWGOEV790L37Q1NjgoPdZ6gjn2qq4ps318lLmav+C5xQNucFqHd7gos9W2LnpYSXKVZJREaZzkPsnlxt5OanHbeWGNJaYDumLj333MftNsMP9mf93sGIc48ZXD3emJxXV+OB8Sp09OyY4hBg1cSAAAAABJRU5ErkJggg==", 19, 15},
        ["CRICKET BAT"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAGCAYAAACB1M0KAAAAgElEQVR4nM3TvQkCURRE4e/Jooj4B1uA+RZiGTYi2IP12IlgBQbqgphdE42MdC/qiYdhBmZKREig4IBFhtmbHLGsEowqrP2mBNRYlYjYocENY1wwxQkznDFBixGuGD70A/Qx/272F/a9BJOUbXaklISPPKe16Z7nY7YZRfiDs98By3wc4fma3AQAAAAASUVORK5CYII=", 50, 6},
        ["CROWBAR"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAAAk0lEQVR4nNXSPwrBYRzH8dfPIjeQYuEORmUwkrJZbG5iMrqIAygZrMriAAwkkwM8Bj2Lkj+Dn+d1gs/72zcLIfTQwRYr7CQoCyFAGVMMccQcG4T8pr3l7H78SwyJ2pigmceqL13RfwyJamig8NNJn6tghsOzkJQs0Eo9pIg9Tv/+Oq8MUMI49ZARulin/Fp1VLGEGyOxKRfVq1bPAAAAAElFTkSuQmCC", 50, 9},
        ["CUTTER"] = {"iVBORw0KGgoAAAANSUhEUgAAACIAAAAPCAYAAACBdR0qAAABPUlEQVR4nLXUsUscQRQG8N9GLwQRiQmx8T8ICEkhhAMbm1gk/4C9ECNYirWdjb2kshUEQyBgmcY6ELFTgk0KhUMxR8ixvhQ3F84jbvZk94PHvjf73sw337yZLCLUgEV8xM+yBQ/qYIEMQ+2wLiKP0R6mYLQGEs9w/Y/xabzCE5zhC379/RsRVdtSRDT64omI2ImITtzGeUQs9/KyiPiMqZK77SQbK8i5wELyx3GImYL8Taxn0b02eRocKUmoCDmukt9IZIoQmO8R2cAjrFVA5D7Yr1ORMmr08KO/R26whVndc32JVrImXqRFcjwsmLTXI2/wqSSRdh235n36Po/y+Fb1g9bE1+Qf46hk3W7VaqwMxK8jIv+PGqcRMVm1Ip2B+ADv8PuO/BO8RauOJ34QH3SbfxVzeIrv2MM2LuEPYkKR10ZxY1YAAAAASUVORK5CYII=", 34, 15},
        ["DARKHEART"] = {"iVBORw0KGgoAAAANSUhEUgAAACkAAAAPCAYAAAB5lebdAAABjUlEQVR4nNXWT0uVQRQG8N9rN0ipILsLWykItjUoWxnUoo2r1rWoXR/BbW1dmKs+RDsXBdpCCkEIAi2EFoqJYGnRxj+V2nHxTt3b9b1q6Av2wGEOc+bMPHPmnJnJIkLJyHAD9zGAaYwlmcGBBLKSSZ5LRLqa2D/jpRrpT0WDyiZZxeohxwbeycmO4nXNElGmVONvPIiIpxExFwdjNCK6I+JPJFtxDUuYLzGSVXxNejduJ7mF8wX+3zFUwRU8R4c85E/wCBfxBadS/ybakvMazhbo67iMdvnR3W1YtF+ehzexk/qmMIGPiUsfvqXNrWI+i4gpXG+YbBmXsIXT/0iyFS2YRQ8qdfOuYBFX7cVk8vmAV3jz25BFxCbOFDiVhR356eyHn/JK70K0yO+tRiyndiu1gY06+1oTfR2/kj6L7YZ5V/C2CbFnGMRD9KIzrSuLiF68UMvJYTx2tJy8gPe4h5E6InfszUnyAtk3Jznh1f1f3ZNl4VhenEozj2PCDyw44W83xb+g8URq2iF+Qbv3DaP4pXIShgAAAABJRU5ErkJggg==", 41, 15},
        ["DBV12"] = {"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAPCAYAAABwfkanAAAByUlEQVR4nLXWvWsUQRzG8c+dSXxBJCCKhYVGkCCmE0FsE5CUlv4dNtbWYiE2VmJnrWITsFGigoj4gpjCRoIagyQaA3l7LHaPbI7L5XK5+8LAb/aZ+e0zMz9mt5bELqjhPubxET+aNGhOWH1+spy73KTBS8yVcR1/cLhFPrUkI2V8Aoea9LlycoNzeLTNgvbKKgaxgUUMK8y3NL2AI30yshseY7aMx3AJ93BacUJreIKzA/hpq+kVDClWu4q3FW0YFyr9f/hVJhzBOvaV2ipe40CHppcr8Rd8K+Ml/FacwF8sSvI8BZ+S3EkymmQ8yZkkQ0lU2miStXL8WpJrSY6V2vckr7LJSpL9TfN70ho7DQ/xDJ/L1oo5mzU2g2kcL3fhARZwsdQHMYp3He50x9Qrpo/ixQ7jJzFQxrfxVXGLzOMGpprGj/XG5lbquIUJ3FXUZDsmK/GbJm1dsYBqjst7NdiSXdbT9SSzSZaSHNxmzHSlrmf6UdPdTKonOd9Gv5mtnOq16XoXh7OBD2305roe7+IdbenG9E5MK+7TBld7/YJ+mF7B00p/QvGL0DP6YZrizm4wgCu9TF7L7v7yOmVQ8QmfUizgfS+T/wfEDAK1oC5O4QAAAABJRU5ErkJggg==", 45, 15},
        ["DEAGLE 44"] = {"iVBORw0KGgoAAAANSUhEUgAAABoAAAAPCAYAAAD6Ud/mAAABKklEQVR4nK3TQSuEURTG8d+MkSk2FnbCwkY2FjbKZsoH8AVk5wso38BGslQie3vZscXSAslCE2KkFJMyg2sxr0zvzGuGeZ+6dTr3Of3vufeeTAhBTBs4xSX6cRHlJ1CM4lccoqG4icaxmoslV7DQRjHco4oPvKMniqvI4xMllNGTiToaQA63yLQJakc3uEY+q9ZBEespQ2AQU+jK4gz7mE0ZUq/tHApqj/+AOXQnmHexh3lMYhE7eGsBKaMqhFC/lkNzHYcQpiPPUAhhM1bXcmVj9KuEU91hOIpLOG/RRYPi37uQ4KvgBTNqs3X0V9D394YxnGj+RiN+hvVfqr+6pQTIA546gcRBMwmeAzynBRpVG65m6usUUg/K/+LZShN0jjU8xvYr6E0D9AXA3pDZrXRslAAAAABJRU5ErkJggg==", 26, 15},
        ["DEAGLE 50"] = {"iVBORw0KGgoAAAANSUhEUgAAABoAAAAPCAYAAAD6Ud/mAAABF0lEQVR4nL2UoUsEQRSHvz0viVkspgP/hQsiYrtoMdusYhU0CVaD/ZJgt5oEg0EwKKKCQcQoiJ7owvoZbg6W4eZ0dfUHj9mZeew37zePyVRKyoAucAHcAfPAWNgrgLPwnQPHwBMwwXAVIa8NbKGWY9dqeh+x96Hmg0kWKmoBb8B94nS/VgNYA66B/b+CALdN4Ia+33M/+EGP/j2M0guwjbqsrqgb6nPC70LdUzvqgfqqLqqN6I6TES+sJ0BH6mzImVR3vgsYRCMq8zFRfg5Ml6yo3DTNaN5J5F2GcQkYBw6rgsrltUPvxzqpatNX1q3SfxlinVY+/RANQBmwkMg5rxM0A0z9ByjuvrJ6dYKugE3gYQikVQfoE6lqjTYJGXlDAAAAAElFTkSuQmCC", 26, 15},
        ["DRAGUNOV SVDS"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAHCAYAAABKiB6vAAABW0lEQVR4nK3SvWqUQRjF8V/CKjFaRAW1iKIIqdNob6HgZ2kRAqkFL8BOvIRgo5BLSBkheAFG0CKQJgixUlyE+LVZEjVwLOYtJsuuG3T/MLzvA+eZOc/MGUuih0mcq+rP2KnqG7jY23QIzuMIdrE3RNvBu6ruYq2P7joWMN/Cc3zBN/zGJTysxEt4gwllyMfN/yjYw3dM4StOYRunsdn4gTNYxVZP/3Szx82xJDt40mxIubUTlbiLfdzHtX80vIo2xhuD20P0H/DWwUEo6aiZwDH8kKSdRJ81meRekqUka0kWk9xO8iyF/SRPk1xt9BeSHE0ym2QrB5kfcMbIVqtnwrO4izvKc7/EIjYqzZXqlh/huBKJNn5hHXN4XfXMDHmB/6aFk1hWctnBCh7g04CeW813RYldt49mHe+VTG/i1cgcD6Cl3N4GPg4wVTOu5LuDF3/R/cTlURg8LH8A7IDlsCBMiSEAAAAASUVORK5CYII=", 50, 7},
        ["DRAGUNOV SVU"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABs0lEQVR4nL3Uv2tUQRAH8M8zx/kjxpAiKIqIFmKhWKiFBsTGRrAQW0GwFKwUsRZtbAX/Au0kRpuAIFHQLoU/wVYiIkbRBA1yp67FTvC4vNzhyyNfGHZ35s3M+87ObJFSUhG7cB6/4vwYs9iJgyFb8QAv8QlDaCDhbtXEZShWQGQvXlX0/YOBqonL0FiB7xyuxL6FKYzgMg7jXuiP4xKeyze0Tr6RWlGklEZxA4M1xNuCMXzGU/zGEbzGfB/fAczIBVqPZ7gftqM4IRd+CBfxPWxNtIuU0jhO1UCC3DJretjmMIw2fsZ+Qb6hQXnOvsT32+Q5msFJnOmINS8XaZHIzQYO1USC5Uks2kZivzYENsTawke8i/N77A5ZkAltD9umrtgbi1Rt2n9Y2ornMCG31yR24BuuyRW/hdH4oSrYr3ymm5guM0zK/bgczuICDnTpG/ga8kEmAo8i2Wa5pariRU9rWoqxlJIe0kwp7Snxuxr24ZRSO3R3+sSqTbp7+on8WvRCC2/lyndiX6zH/GuBh33rXBO6W+v6f/hOya/Om5Dp0M/itjwPq0akc9jHcXq1EteNv5A2BF7pvrjaAAAAAElFTkSuQmCC", 50, 12},
        ["EXECUTIONER"] = {"iVBORw0KGgoAAAANSUhEUgAAAB4AAAAPCAYAAADzun+cAAABbElEQVR4nLXVsWsUURDH8c+eB4KI4RQEEbEIAUkXK/8BsQj2CqnS2VgIVoH06ZLKImkCgRDExk4Qwb9AYqWRkCIQhBg0UULQSybFe8J67C6Xu/iDZXnzhvm+eTszW0SEBt3DW6xht8Gvg23sYB13sZntBfYwhtt4jPdFDfghRvAMEzjAlaYTnlE/WjUbH/AoQ+FiQ5BfA4C/9YLHsYyPmCzZLzQE+T4AeKVdWkxhHtcqHI9wuSbIHm5hBm/6BG+UwfdroPBbKp4qeCe/X+JLn2B/r/oSHjT4Xc3Q1zjMsK50zcdSBe/3CwURISJmo15bEfEiItay7/WIWIyIVl4P9LRxA88rzrQu9eVXPMFstnfxDidnyrBHRUQs4GnF3qRULNPSt+tIQ+AnlvBnWPBGDljWLm6Wgt+RWuqzlPHQaldASRVazujTecDKqptcq+cN6lUREV3/TqYtjKLx7zGsWngl9eKJNCTm/jcUTgGHOrFGuXB0YgAAAABJRU5ErkJggg==", 30, 15},
        ["FAL 50.00"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABl0lEQVR4nLXVzYtIYRQG8N8do0byMT4WigUyk7/AnsiCsrBjJx8liQX5IxRNs7BhZzPK0grJxlIaJJJIZkFjmsTMMI/Ffadu0wx3bjNPnc499z3Pueec933PrZLogI04i2M4jJ6WvC2YwDb0tuTM4Afu4yReLOiVZCmyJkl/kpdJZtMNi/FmktxL8jHJSJJPxZ5u+NxdLLcqyXH8REqnNxQ9J/2NdzuxtWUnu2Ac6zDZ0P2N9XeYxeYiMIXpKsloITxWb/s4vhe5iiG8L6QzOI83GOyQ6Dn0qY/WYvilbuwcpvC5PI8UvQrrGz6pkgwV40JjYRA3sV19PifUha3GDgzjNz7gCo4U3hhG8RWHsKkRc3yevazoVXf7YLH7cA1HcRFPW8Q4UfQkTuGhOuE9eNLw6zRV2qIHX7AbB/BMvZX7/L+ICtfV0wtOF/5a9e6NLX+6/0CS/WWSPEiyq+X0qpLcbkyT4QV8BuZNpW8tY3eSXrzFLVxSX7RW9eMG/mAvLq9Ek5eCKt1+iG0wgEd4hdd4jjsr9bG/36imFGTzFhEAAAAASUVORK5CYII=", 50, 10},
		["FAL 50.63 PARA"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABl0lEQVR4nLXVzYtIYRQG8N8do0byMT4WigUyk7/AnsiCsrBjJx8liQX5IxRNs7BhZzPK0grJxlIaJJJIZkFjmsTMMI/Ffadu0wx3bjNPnc499z3Pueec933PrZLogI04i2M4jJ6WvC2YwDb0tuTM4Afu4yReLOiVZCmyJkl/kpdJZtMNi/FmktxL8jHJSJJPxZ5u+NxdLLcqyXH8REqnNxQ9J/2NdzuxtWUnu2Ac6zDZ0P2N9XeYxeYiMIXpKsloITxWb/s4vhe5iiG8L6QzOI83GOyQ6Dn0qY/WYvilbuwcpvC5PI8UvQrrGz6pkgwV40JjYRA3sV19PifUha3GDgzjNz7gCo4U3hhG8RWHsKkRc3yevazoVXf7YLH7cA1HcRFPW8Q4UfQkTuGhOuE9eNLw6zRV2qIHX7AbB/BMvZX7/L+ICtfV0wtOF/5a9e6NLX+6/0CS/WWSPEiyq+X0qpLcbkyT4QV8BuZNpW8tY3eSXrzFLVxSX7RW9eMG/mAvLq9Ek5eCKt1+iG0wgEd4hdd4jjsr9bG/36imFGTzFhEAAAAASUVORK5CYII=", 50, 10},
		["FAL PARA SHORTY"] = {"iVBORw0KGgoAAAANSUhEUgAAAB8AAAAPCAYAAAAceBSiAAABlUlEQVR4nL2Uv0tcURCFv923CYiIBgyIGgVNlUZsRAL+gIBlwCak0t6/ICmFFBYpRAKKjXUgdjZpAiGghZUiSURS6CI2QQQVNRK/FO8K6+Pu010wBy7cO/PmnJn7Zi4qaqNaVt+F832sJ+qh2nttKwHvgX6gE3gFtAIF6sNT4BL4DZxW2LuBNuARMA+MA6cF1TqF8nBEWkBzxLcGjAEn9yWeB4ELICmRZtnyH8UXgTMgQZ2zNvzNsbepTepztUNdV7fUHnVUfV3ZhEXgHNjPyfSyYn8A7Fb5rggsAMfAauB8QNpsZeA7sHcjImTxWJ1Sp6vcxB/1Y6hoJoxMDG+9OV47wf7MyPhlDYm6XEG2pw6pb9QNdVPtVr9EhK/U9gzf1+AbvE28qC5lyF6oXab/rE9dUQ/UXxHxckRgSd1Xh/PEC+p8hmw2EpCYXnsMP2MCeet68yFD9ENtyAn8FhHfrlW8FPpuFngITAAJMBlmsRpivtqf5Ew27erLO2T9OVL5Tq2VF6zvdf0EdAAb4TwAjJDO+J3xD3mTbSbom+uYAAAAAElFTkSuQmCC", 31, 15},
        ["FAMAS"] = {"iVBORw0KGgoAAAANSUhEUgAAACgAAAAPCAYAAACWV43jAAAB0klEQVR4nMXUz4tOYRQH8M878zavQmnKgkxkIaWXYmtBkYj/wg41ZWXFamLF3p6lhcKGWCgbk/ErFppGTWj8GF6GGWOOxfOMruuaH/ctvnW7557vc89znnO+52lEhJo4jgvoxXd8xjSm8A1fsz2NL5jBJ/zAR8yhg0ncwIuqTRpdJHgLezGBlzVjNNCWklyP2T9WRETd524kbO8ihogYynEGqvgmLuNAIecrGEJgJfoqTj6FFdneILV3IQyihbc4hAd4I8mgldf0VJY4Ip5jyyIb/AscxnVJmz0YQG8jImYlof9PRH7uSd1Zi80Yb6qf3AQu4iHW4BQ21ozVwSZ8KBPNmgEfYz9eF3zrcDrb5/Aee3BfqsoxnJRaWMZYVXIgqjEaEYMRsS8iLpW4TkS0S9PWHxHvMj8XETvyv/N8T0QcrDPlxQqO46l0N53FzezfXTrTMB6VfEfRn+1rGPH79O8sxFsWmlLpn+GOJNSqFszjiXRBl3EkvwPnsz1T4PtK30vHEsp8ptDekQq+ERGTmR+r4NsRsbpOeyOi+nIsn2ERfpUkDzhR4rZKkukss26/UHeKi+hgm6SzFnZlfwujeNVN8KUmOIbbuLrAmuFuEvkbfgLCvN9GPBQiawAAAABJRU5ErkJggg==", 40, 15},
        ["FIRE AXE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAABPklEQVR4nNXVSyuEYRQH8N+45NoIUS4LKcpWSlZKlJ2SknwSGx/AF7BgY6t8CiWKlS8gC0Wm3GbcjcX7TPOaZmpcwvuv03nP/32e0/k/t5PK5/MSiB6sYxGPUPOn5XwPc1grBEkWAktIkXwhXeiEuj8u5LMYxDTGY9wIdv+7kDTmsYxJPKGlZMysIGQLbzgPP7owhL4QZ0MCyCGDS1wEnwn8VfA53OAOz2FutoqiG9AfbAxTwRpjY+rLzOslOlozoufst3CD1zJ8+xfz3REJWcVGIM+xgyOc4hbNqEWr6GJ1BB//TqMtWKtodSsh/cWCK+GKSMhmKPQW23j5geT1IkGFVW7y8YhUiwfcx+JHHCgee7iGVMI6+wT2SrgTDCetj6yU4QawnKQdGcWh0MlLsJ+kHVnAMc4U2wHRne5+BzbzQJPooZf9AAAAAElFTkSuQmCC", 50, 14},
        ["FIVE SEVEN"] = {"iVBORw0KGgoAAAANSUhEUgAAABYAAAAPCAYAAADgbT9oAAABD0lEQVR4nLXSTytEYRTH8c+9Rv6WkIUs2WrKfmoWysY7sPEilC07O2t/XoKNNZI3ICk7sbJSSgYzqGMxd2oa18hcfnU6T52n73PO7zlJRMAepnGIc8W0g/UkIqo4LQjrVCPF0h9Doe+/wHeppre96ANPeMV7lmvYwnwSEWWsYBVTOYBjzGEbdYxjDRXcYggDeMsiQU1EtGI3vqoREaMRsRkRadvdjbZzbiTZus3gGoMd3dZRRT/GcI9ZjGC/m0+lLC/nQOEiA7/gIfP1ElfdoNBq/SDHhoiIyk8jd7MizUac6HizhknND/m1UizkQOGsV2gLvPhN7aRXaAtc/qZ2VARcwo2mn89ZPGpuwXAR8Cccv8rWqd2QmgAAAABJRU5ErkJggg==", 22, 15},
        ["FRAG"] = {"iVBORw0KGgoAAAANSUhEUgAAAAsAAAAPCAYAAAAyPTUwAAAA0klEQVR4nI2SMWoCURRFz4zaSSC9lRY2NlaKRfrgErIBi4CltQtwF1Y2gtO4AAMpsgaFWAhCmlRhCJ4UmcGvqOOBV93z+ZfHQyWYZ//5VdfqOMxDsaS+eco8lGOOvAB1bpDLVaALLIAkyPcndvbFUH1Um+okqJGoPTXKO9cyeaYevMyHWo/UEVADXm/1Bd5j4AdoF4gAnRiIsikiyuX0DjmNgQqwuUNel4Fd9qCIFeqD2le3V9ammqqt8DZ66vcF8aAOzg8JtaFO1U/1S12qT3n+BxKfG6GUHtoVAAAAAElFTkSuQmCC", 11, 15},
        ["FRYING PAN"] = {"iVBORw0KGgoAAAANSUhEUgAAAB8AAAAPCAYAAAAceBSiAAAA7UlEQVR4nNWVPUpDQRRGD75BELFRxMLC0kpIoWtQxM4NBJIqNmndQMgObIONuAGxcgPWNoLiT8wSYqHx2OSBBJQ38yaFH9xmmMNpLt9FJePsqGfqnfqujtQbtaUuzf7PJS3Uvvrl73lR9+Yhv/xD+jNjdTenvFNRXOZBXckhD+owUq56orJAvRwAmwlcEyAAG8ByBFgAW8Ai0EoQAzSA4wCcAlfABbBaAXwC9oF7oJ0oD8B6ALrTh7UIcBs4BCaJ8g/gte7CHSUsm+ptjoW7Bt4SuAFQW/4J9CKZR+Ac+P8NV7Xbn51Tt5cTddW+AYZBqQeVEH41AAAAAElFTkSuQmCC", 31, 15},
        ["G11K2"] = {"iVBORw0KGgoAAAANSUhEUgAAACgAAAAPCAYAAACWV43jAAABKElEQVR4nM3Vuy5FQRTG8d85FCQuiUKiJrQSiYhGQsEDUCupFN5BR6NU8BAKHVGIJ0CiIEFQ6cgRYin2JI77YY7LP5nM3mvN+vY3O3MREerQJiJi6IN8OSKWvqNdVh86MMq7ei0YSOO+RCkiRtBZw9j+9KHzqlg3JtGEZpziPuWaUtvAMdpwiS3sfsXgDoZrLfgGy55P6jPWcZGeb37DYA4L9VqDP8XUfzfYW0bDX7v4gNtGxU78KU5wmFF/VoqIdk/nVzPmEFjEQ4p3oTXF26oErjGNmfS+jTvsoYIjrGQYVI9bZDyeGI+IwapcT65+Y9bsCmZTX8GV4g8Opv7ivaJaKUVETn0f9hVLZBNjuYZeknvMzFdpbGdqvUmuwTWsKjbPQb6d1zwC+CMsNCrWQC8AAAAASUVORK5CYII=", 40, 15},
        ["G3"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAALCAYAAAA9St7UAAABaUlEQVR4nL3UPUscURTG8d/qiAoLmyZaWKRSG0FIkSIhiGiTQpJPkG9h48ewFyVNCosUgVRJkxQJqURLsRDFqEV8Ib5tomNx74CZ3ZWZEf3DcJkz55z7PJx7p5amqZI8wnP8wO+yxRX5hDdodkpICjYawSwaqOMVPuLX3fS1cInjXOwfhjEtGGpLgg9RXCcaeIruXHympMgUtZI1GReYxF4uXkcP1NI0XcH4PQuBK3RVrF3FEXZz8QY2UU+0umzHMdZvvI+ht6CIWSygD+cFazL6Y90W/t6WmGC/TbwpXObP+IKfwlnNeIn3GBJM7uOPMOYzPMHjmFvDQUkDGYXrEuH8pcL4MuFfcXJL3be4yRAWsSyYHcU2lvA65g6Ukl6RBPOY034ynRiLD+wI03gRexzmeg3eWWUBEmESZXkb1ybeab2EN+/dgxip+heZiuuGVhP8b+TBjlYVnmECpx2+7wom1/C94h6luAbtLU9JNGp1kwAAAABJRU5ErkJggg==", 50, 11},
        ["G36"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB6ElEQVR4nL3VO2hUQRTG8d+uMQkYNIgKxvgqFCwEEQJqaxobLS0UBAsbG4tYCVqqtZ1YJIgsItgKMa1E8FWpKX2DEVFDXE18HIuZ6HVd4+bG5A/DzO7MmTnnO2fmViJCSbbhcUnbXbhd9uBmtJW024caJlHP+1Ql565hKb7jKzpyX0Ul2x/FFQyVdbyRuQbSg8M4jhW5FXmHviZ2n/Epj2t4gDHsx0t0Flod45IQy/AC9zAym2OViLguKfYs95P4gqm8aR/WYTO2YElLIc+PD5IoXVIgb3BBymg9r1mJ7jz+1oadWCuVQDOWY1BS9Rz6/7/ff1DM9qrcv5WErhfWdOMjptvwSlK8GT3YLmWhA70lHbsv3Z2Zl6UT7ZjIvzfgtVQFf+OSFExTKhExgr0YwFNJgbpUo8/xSFKikdM4IZXhmFTHW7GnYd1ZnCoEsTBExM1ITETEwYioRIQW2uVsNxgR/fm/MxExFb/T1eJ+82pV6amEI7jaonK7cSiPh/Ae6zEqvURFVs9b7VaIiNGIeDiH6KsRcSerPdxkfk1DRg4sVkZu4OQcYu/160U532R+XLpbMzTemYWhpALtEXFslvlaISN3FysjZZjGxVnmhwvjHdhU8pyWKRvIv7glfTsGsBFPFuicn/wATdwxlPjWUp4AAAAASUVORK5CYII=", 50, 14},
        ["G36C"] = {"iVBORw0KGgoAAAANSUhEUgAAACYAAAAPCAYAAACInr1QAAAB8ElEQVR4nLXVzauNURQG8N/hupebMEAikVs+y2c3mUiEMrxlJB8TGUkmpvwFBqaUkoGJUiZXKUoZSEImlIHkI5Krq3ze+xi8+/DinJxzylOrd++91l57rWetvd9GEj1iO5bjLCa62DcDz7AJz9sZ9fUY1C6MIliFj5hS/N3FN/SrAp7EdHzCIObhMw7jVNH/hUYPjA3iJE600H3Dlj/WxtAo40l8wRtcwTjO1WwfFp1Gkh1lczv0YxaWYBh7MbvTLAq+4xVm4j2uYzPWlUAHit0tbG0GNlYOOqCieExVovHi8AiWFYdrVKX7n3iMeZLcT4W+JFrIodr4aP4/didZ30hyA9uwAk9K1ItUt2YOhlTNG1UpphVZrSpHJ7isavQXtbX5eFv8DmChqndHMCHJaIn0RpILSY4n2ZNkbhsGmzJUy/J8yXRnCwau/sNPUxpJ1jbnfZhay2AfXnbIwrHyfYhLuIOluI2NheWmvhPkN9skN5NMJtnQYWaSrEzytTCyP8nsJIuS9CdZnORujbGLXfj9KZLcKY662Xi1HPo8ybQW+gu1wB71EtgUnMbBDummeuEfqJ6WM6pH9U/cq41XqS5Rd+glm/xq/gVtdMP5HSO9MNYrnuJ1G909vKvNd3XrvNef+L8wgWv4gIuqm9oVfgDr8cpHGQRouwAAAABJRU5ErkJggg==", 38, 15},
        ["G36K"] = {"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAPCAYAAABwfkanAAACKklEQVR4nK3Wz4vVVRgG8M91ZmzMNH9gmrkJEV0EKigIigi1qV1Qbt1IMCBZC9Gl4EZo179Q6dIIcSGKmxJhNlYui8ZEaPzBoNaUU93HxTnXuc6MM3Pvdx544Xzf8z7nvOc57znn20qiAd7BrT65+/FDP8RWg6RP4xOM4/9qr+AnfIchPMVAtTZalRscxDA+x5NeJh7sI9lNOIITeBVvzuifwLraXtXlDyaxEr/hGL7FdXz9krna+FJZ/HO0kpycJ8F2JazGZuxQFBqYh/MyPK1Jw5+4h7eVBU7UMf/BGzVmCr/iM2WRqzs5tZKM18B9uF0Hn8JfNehdfIQxrMGpPhJuggksV0rvLqZaSUaxBxvwYA7SoUr6pcbcaJDAPUXlDjbhj9peruzmWFf/EH7Hge5BBvGotnfiKl7HbmxVDtdwl49ppYdxHGsXkexjZZu/wn+LiO9gKz6d5U1yKQV3klxJMpJke5JWEgvYxcq9lOR4ko1JzmQ2ji5irLlsKMn6mf5B0zfIfXys1NBisAfv1/Y5/I0VVckL+LAr9nYP6nbjXzyc5U1yraqxqwcFWkm+r7wf6/eq2rcxybYZSo/0qfScNqjcmz/jZg8KHFZeNPhCuYM7D8S4cqAnlXuc6fOwNEjyQZItPa52b5LRJGO17uaK6exEktxaSqWbkJctUFJnu5JuJ3lrqZJe1mCT2uYvqcszvt9rMNcLaPLDtBBeUx6i8/jGi49GIzwDdb6ek0arAxsAAAAASUVORK5CYII=", 45, 15},
        ["GB-22"] = {"iVBORw0KGgoAAAANSUhEUgAAABwAAAAPCAYAAAD3T6+hAAABUUlEQVR4nK3UPUtcQRQG4GeXBSVIAgYLSZUmBCRFCoOCrV0Ka+3FIhD8ESlEEJI0FnaGKFgEf4DZwmBno5WEVGoRIaRLFNSTYmfx5jp3ZeW+cOB8zbxnzpmZRkQs46EOGniNUb1xhOOkP8J4IfYXWzhP9jq+dYONiIg7Ns/hLT4kfRJ7PXJP8LNrtO5B1i/+4HeRcAVDyR7GTPK38b20uIU5TGMq+R5nSHbwI+mfsNsNNDIdfY6v8nNcwBu8T0SDWExFX6ScY2wgP6qIyMlG5PExIpZKuZsVe2Slma2CsQr/FQ5KvgcVuVnkLs0EXmT8v3CGEcwn3xM802nteWbNbWSO/aWine/6aV2VlC/NS+zrfABFXOGpm8d+bxRn2MJqhgy26yArE87iVUXeWh1k+G+G7YrZnUZEs475lZ/FSEVNh7iu64BFws+4zOQM1EUG/wAKREZ/zXo9+wAAAABJRU5ErkJggg==", 28, 15},
        ["GLOCK 17"] = {"iVBORw0KGgoAAAANSUhEUgAAABQAAAAPCAYAAADkmO9VAAAA7UlEQVR4nK3Tr0pEQRgF8N9eZQ2aFN/AYLBYrYLNpPgCFl9Bk48gYtksgj6ACGajIAgWETGLLAYNpmPZCxedvbB/DnwwzDdzvnMOM50kGzjDlcmwg3NJTjJFVOhMqKyJfoVL3E2JcKaTBLp4wsqQg0d4wTK2cK3srC9JXReFSD6TnCZZa5w7aKz/VdVgXy1MfMAhtlENFHbbPNeWl/A+uNTEMb4w29h7xM1QxoHU3SGvYK7NXpvlzcKsN/y02SuhwgL2Cr3eqGQ14T4WC73XcQgluS9k95FkftT86gzXC3Oe8T2OwPrr/cXtOGTwC3lWNDiscuQ8AAAAAElFTkSuQmCC", 20, 15},
        ["GLOCK 18"] = {"iVBORw0KGgoAAAANSUhEUgAAABQAAAAPCAYAAADkmO9VAAAA6UlEQVR4nK3RPUpDURQE4C/P30orEawtbMwCLMXWVreQFdiJra2QKr2CnV1wAS5AEURsrEQEXYCIY6EPQrx5kJ+BA5d7DjNn5rSS7KCLS9OhjWtJupkhqim3GsZHhXPczIiwaiWBJdxjc8TgCR6wjl300SrMvUlS10UhkvckZ0naA3Odgfe/Gsxwq6B4h2PsYw4bWGjyXFtewyuGj3SETywPifRHMv6teliw+51kvslek+W9gtYjvprslVBhFQeFXm9cspqwg5VC73kSQkluC/m9JFkcN786w+2CzpPf646NCqeF/6tJyOAHPB00BQ9CloEAAAAASUVORK5CYII=", 20, 15},
        ["GROZA-1"] = {"iVBORw0KGgoAAAANSUhEUgAAAB8AAAAPCAYAAAAceBSiAAABv0lEQVR4nJ2UvWsVQRTFf6tPIipRMCGIiChBUDD4AbGxMURJJ9iJoIUfhZUK/gk2NiIoltomhRBsA9ZWIfiwsFAUSWHziIkGYl5+FnvXjI/dl3UvXGbm3LPnMDt3JlNpGFPAI2ABWASWgaUYl4EVYAIYAB6WCbSaOofhSWAc6FZwMmCwSqAFzADfgH3AnprGg8ApYDvwChgt4awCG8C5Et02cLkFXAR+A8M1jXvjILCjorYXWAM+AG8CGyPf9IlM7ZDvuklsANu24KySn3svz1YIVEXRjVmCvQO+kjfVGvALeJDU2+Q7/QzsJ2/IZ8Au4DtwHXgNvERdV3+qU+pZdVQdUXerqCv+G1cCT7Od1J+ok4GfVs/HfGfUr8X6AOqceqtEsMgz6vtE/EUJZz5qs+oR9Wjk4YRzKDj3CqzKsDfvJ+YddTipDandqN3tozEUnDsFtlWzFDEd5wt5cz5NahNsNtNcH41O9FCnAOqaLwKPk/VV4EbMJ2P8Anzso9Elv26fCiCz/vM6AMwDx2O9Dtwm/yM3Q/xSXTGg9pkXOab+SM6/qx77T42/2eSjC+pSmD9vatzUvLi/b918CxrlHxyykmaYSfikAAAAAElFTkSuQmCC", 31, 15},
        ["GROZA-4"] = {"iVBORw0KGgoAAAANSUhEUgAAACkAAAAPCAYAAAB5lebdAAAByElEQVR4nL3WPWtUQRQG4GfjwqoorhIIGkgIqKVVQNBGwcLKStDGSvwJorWdjT8gNhb+ArEQ3E78KCWgERvFgEGLxM2uRqNyLGaWjZf98u7iC8Odlzkz8875mDuViDAGjuMemniHTXxBG638beJi5tfLbFIdR2EWdgKX8XCA3W78KrtJFTek00P9H+YewUl8x3mc62PXxFGs41EZkZWIaGMVx7CrzCJ4itN9xlYkL77K/VnslxzUlsQv4zC+YgvT+IFv2K5ExEfMYKqkwMgLbw+wqWFPyfVVpXwpK5Akcm9ug/AA85jLtjXdQnuDs/iQ+zXJ+y3Zk53yfok1KQQbutW5gEt5YgdLuC3l25YUliVc22FzBzfxU8rZadzPY/NS/r/N8wcjItYjYjUi6hGhRzsVEc/jb9zqYXdlx/iLiFiMiLk8thAR+/qsP7RNZY9c0K3wIp7h7tDTpjuzg6tS6Fo4qHt3lkI1ixyGzQLvdQt0rqA1vJZydSIYtWA2CvxQgdexmPsNExTI6CI/F/hMgZ/R/Xs1xhHUC6OK/FTgswW+IuXteyncE0VlxAdGRQr5gczbUoh/T1pQL4z6wAg8kaq1gcf+k0D4A0358UBFsaTkAAAAAElFTkSuQmCC", 41, 15},
        ["HATTORI"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAECAYAAADMHGwBAAAAnUlEQVR4nLXOS2pCURAE0HMlfmIUNCCuKzvI0py5hywkOHYBOvEXBdtJDx5BHhfFgqYKquiqEhEq0cG1NvwgCj4xTW7qNv4pEfGNeUVJD6sW/w1jdDHK/Af6GOIdg9T99HqZ7eaoScWOCzbYYo0FliUijlnwapxwzDvhgL8Gb/M2d7ipd/eel4j4wqxiyAC/Lf4lS87Y/xt5qPj/FG6GtjGY12SQPQAAAABJRU5ErkJggg==", 50, 4},
        ["HAVOC BLADE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABpElEQVR4nLXVu2tVQRDH8c/1QRQNKFgZRLGwVhHSCtZqZWejpYWNNqKi/gMWAQsF0UJtg4gSotiLL0QjCIJEBAmRGImPGEJ+FmcvHJJcb3Jz84Xl7JwzO7OzZ2a2kcQqsBGDeIBr2INZ/MZfTOPPf9ZvRh/24zG+tXPYKIGsxSHs6mDTn/AEzRPZh6s4WOQf6MWaRdbO4JcqyKliYxK7sRVzZTzCdQwVeSFJ+pOMZGWMJrmf5FWSuRXaavI+yUCx17Q5muRikr4k6kOSmSRDXXLeTZ4mOdni22ySh0mOJelJopEkOI47HaRVO8ZxoSafxzCeF3kvjuJKTecStrewVy/oRnlO4EwzkAGcXtmeW/K9Nt+iKvTpIveoGsPkPJ2GhWTe+zHcxS28k+RUkp9dSIWxVGm6FKaSTJQUWQ4zSQaTHEmyPrUaaXatHTihannt6MW6mjyCm/iCTbiMs0uwsxze4LbqD4wvptAMpJtsK85e4BwOqO6Pj2X+ARtUh/dMVSdzeIt+fMYNVTu+p0qd1+2crkYgvWWzh/GyQxs78VV1zyyJfxkRnYFvaWCLAAAAAElFTkSuQmCC", 50, 10},
        ["HECATE II"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABu0lEQVR4nL3VT4jNURQH8M+b+cmfMv6FopAFGlHDStnJRoqNxE4WktlY21gpG0UWw1JNWSglFNlaqikUg1HqUSQxkaF5x+L+1OvH75n7Zp5v3X731z3nfs+953vObUSEHmIHxtDqJQn0deGzNMP2I5Z3wZGNItO+gdX4ip9YjPU4jFt4hAEMYis24R4ezFG89YFlSmsDXmdynMRIpk82cjPyRpJKYAorcAH3cRyHpIwNYg3WYQLLSv/dpX0fTktZnA36JQVoRMR57JS0P4X5kmz6S+NpzMMlXGvb5CYOdiBpYm2H9XFMlpzNzAOQLuo9LuJIgSHsmYHjASxo+x/6h33dIUKqtXG8lS7qywz4q/iOH1KdNnKktRLD2JZJ2JJa8CS24BzeSQ3gU+ZedbhdYGEHg5cYLccL7MOdcm1U6khnsbHG/xXOYAm+YRGu6y4DnRERz+NPXI2IXRGhMjaX69MRMRwR2yPiSkS0Kv6tiJiIiGN/2aMno8CqtnM1cQp3pYKv4nct3cDlcn5C0ukHPMFjPJWk9N9QYL9UfAN4JrXLOuwtv9UH7ujch5aHAg8z7Mekt+BzT6KZBX4BjRT2nNo+BfYAAAAASUVORK5CYII=", 50, 13},
        ["HENRY 45-70"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABIklEQVR4nMXUu0qdURQE4O83okjUQkGxsRESxCBa+AaCRRB7S0GLFD5GUlsKtj6CD6GgiOaiiUWEBEmiEgSNeMlY/Kew8ZzjhePALtZe+zIze9hFEo/ENNrv6J3jEv34jmM8+kJ0YR7vcQHFA4W0oA8TWHwCYsHfe+55iVO8wF6RpBqREyzgB5owinG8U7r8VKgl5Ha/A81ow68Kj9YiyRrGqhxyhlUMo/vW/Dmu8AFHeItJ/McUDuog/weH+FdjbW0kWcr9sJFkNslQkrkkr5NIMpBkN8lypW7oaMZWnZp/YwYrylwO4CdG0IleDCpfpOGoJuQa+8oMHipjs443yp/oG742gGNdKJJ04yM2sY1PlfqzMrs9eIUvStd3PJPr1XADdZTrpjR8aVoAAAAASUVORK5CYII=", 50, 8},
        ["HK21"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAALCAYAAAA9St7UAAABhElEQVR4nLXUPWsVQRTG8d/K6uVKhFwriyRoLGxUBCt7sZKAoDYW+j1srMTORhubfAkLUUidBAWJEhGMovhSeDV4IyYQcsdiprhZdpPJav4wzO4+z5xzZs8wRQhBC05hDC+x1SbAHrmOcTxqMhR72Mgl3EAXPVzEM3zDRsU7joBfNXF6uQlHmMQXXG0yFCGEWZzZJdBRnMAnTLUoJJff6OBgjbaMO5VvQ/xBWeIxbmUmGmT63qOPY5jAgcx1Y2leQzHyviF2/lrFP8RPHCqxkJlkDd+xmgKvY7rB20vaZiroLmbxDveStoQHSR9l3fajejx5PuxUXBFCmMZKg76C+5jDmxp9gCNJ7+ArXmMG50d8h1OB+0Yptr6JF3jYoF0QN7GJKzid/JO4XPEO/63M3SnFv/UEP8Sj0xfPY19sfxM307wktn8LZ/F8n2rdmRBCm9ENIayGyO0afTFsp9MyT/bIvU2qTOFjen6a4e+2zJNN2XLdW5zDSXyu0QeYxyv1l8R/5y914O4uU5hBIgAAAABJRU5ErkJggg==", 50, 11},
        ["HK416"] = {"iVBORw0KGgoAAAANSUhEUgAAACwAAAAPCAYAAACfvC2ZAAABx0lEQVR4nLXWu2sUURQG8N+uGw0qIS4+EBXBxkp8BLGzNo2FWNhaW4i21nYBwU78C6wkgq9yk0pRAipBBUXEBxKIhCwY0eyxuFeZDOs+spsPLnPnnjvf/c453zBTiQgD4DDeDELQBufwGU/aBasDEI/jKHZg8wA8ZezuFKz1SXYElySBFwvr9/EOLakIFWzFKFbzniqitGc1a/iFu2hgL17+T0AlIhrY30HkJ3zDGCaws48E4SeWsQnfsQdLWMHBLLyaxU9hEi8wm58fzYmOoFWTWnuow4HjOaGxdYiVD1vBtjaxZha7iK/YhVdZ/ERB8I/Ms1CJiPlMtiBlX6z2e1zBPWyR2jbZg8jfmJes080SXzCHGTzoyhwRz2MtmhGxmMfxiFAYZyLiWXTHndJzQxtVyRt/8RT7UM9jrpTfI0wX7k/mSl0r7VvuWql1opZFvZb8dFV6ITrhWL62pGTrUquLGLFR6LMlpwttv11Y316yxK2NtESvqOJGni/heiHWtNYGBwasY0cRveICTuT5FD6U4m8L81N9cveMfkincR438bBNvFGY16Wv4vAxRH+dLfn48kZ4uN9/iU6YxUfpA9DA4yFy/8MfO2b75SIbwhAAAAAASUVORK5CYII=", 44, 15},
        ["HK417"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB7ElEQVR4nLXVv2+OURQH8M/zpqWt3yJBWEwSIWFAYhIqxCgxsUknEavJajXaicHgH5AIkSqCSJpIKh0YiK20Wu1b7THcK63H03rex+ubnDzPPffcc77n3nPuLSJCF7APb7vhqALXcBsfVzNqdSHQZhzEFvR3wV8Z2+sY9TR0fhrnMICLy/RP8FTaoLaU2GyO05917TxeWMZhDn15rpWlByPYU4dQERH3snGxit2bHHgNDmFnJrahTpCMWBZjNpOdz+TXZ92P7LOFr9iU/y/jecnfujw3g4UiIl7g8F9IfMtBW9n5v2ICvZjOsiMT/45t0mmszePPmex8RSJ9+IK5IiJGpR0Zx0YcKS0YkUppKicyhFsNyE9LJzqZiS5Kp1RVWm3ckU7+Qh3nRUQM49gK8w9xsqQ7gLM5yNUOEtmFTx3Yd4aIGI0lTEbE8YhQQwYiYjGvG4+ImxExGBF3oxp9Nf02kh6MSXUYuI5nNfdgv6XmncMjqaYnKmynpD5433zLV0fR8EFsSdfsUWkDTkiJ/MKk32+0eakP241Y1iTUBJekJOA+hkvzY6Vxr5X7sCtokshW3Mj/M7jiz6vxccW6Mw1i1UaT0urFeZySHrChCptBPCjp3mFvp8HqommP/A278TrLq/x9iQ//Ixj8BCDzFJ97l5j+AAAAAElFTkSuQmCC", 50, 14},
        ["HK51B"] = {"iVBORw0KGgoAAAANSUhEUgAAACUAAAAPCAYAAABjqQZTAAABnklEQVR4nLXVPWtVQRAG4CeXo6iJiaQRG21E/MCPmDIiIlb+AVFSCv4Af4adnZ2doIW1IkJEuxQmETQEbMQvojeKN6JG77GYBQ+ba/TknvvCsrM7Ozsv887ZM1SWpQyj2IF3uWMAeIWDWK1uFmnejj0ocQ+7MYmPfSTsYO0fZ1o4hNlepC7jehaw1AehOhjJNwrcxPkBJXyDYSHPML6K1hgTKowKRUaEWisYGyrLcganGyDwA9+x8z/Pd9P8XrRNC89woEAbTzBVk8RzPMUvHMVxUZF5HEtn2inpsvhwqvYsXqaYn9WLC3zGtD8SjuMkTuHwXwh9wVZczPbf4kLyL4vq1UYhyriKO5nvWoXUfSHLQlp3RMmvZjG38GIzRHJSbdFoncx3rmJfwQTuppgJUZEc6x69zaCFG6JBqziCE8n+hH34IGQ9KyrWtR6NkCr0fo+mK/ZtPMKutF7EtyaSb0QqRwuXKusHogIrgySSE8gxhb3J7uJhjfu29c1I70o9xhkh4X71/n9bGuDUk1SJmTQ2wpp4PBfSmMPrJkj9Bv08X2HuQWD8AAAAAElFTkSuQmCC", 37, 15},
        ["HOCKEY STICK"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAAApElEQVR4nNXSsQ1BURyF8R9RaRQSE2gsIDYwhcIMZrCCSggljS0sINEpqREJCa7iPaFARCIv96tO7m2+k//JhRAOOGGLq9fscX7zlwUXjNC7PxSwkhT5xBrH/3l9TRFNiXdd4jSAXAghQ6+faEvlJSuqYZPPzudnhlimuYQuxFgE+k+5hWqM04IKNh6HGMdaBOZopHkX67Rg+pRnMV+kjAUm6NwAvEgp7xTIxOwAAAAASUVORK5CYII=", 50, 9},
        ["HONEY BADGER"] = {"iVBORw0KGgoAAAANSUhEUgAAACcAAAAPCAYAAABnXNZuAAABeElEQVR4nK3Vv0tVYRgH8M89qJQOQi0tIQ4JbWKDgmEudwxxksaWwv+gIXJxCPoDdKi5KajdQacC3QKHgkCJphpEMPOCj8N5hcvpXm/nPX3h5f3xfZ7vec7zvD9EhAZtJiIeZ/q+H2RTaIYCNzJ9xwcZDGUKz+EB5tHGLXzBedIs0ME1tHCC4eTbSfw8PuI13vT6SCsi9vAIXytcGy9wvYffpH/LWKTgstCKiMA7/KpwU1jMFU74L8G18a0HP46baTyBVdyroX+MjRRkP/zGfo/1cxFxFhEjNU7ZXEQ8i4iDGIynTW6DQrnXzmpk4xNe4kOad/AQY9iq2B7V0P0LBT5n+k6nPvBHeWJPKzbDmiAiRjNSvtRVuudd64uVsq40LetJzf8Zwas0PsRmF/ejYns7M2eQ9UI8wZ00XsPPLu5QWeJLzGbGhbwX4q0y2wvYqXCn2MX9NF9Q3nNXXSX90WRP9GnrlX13N1cr9229CttYTv02vucKXQAZXiZ33EcJAwAAAABJRU5ErkJggg==", 39, 15},
        ["HUNTING KNIFE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAAA60lEQVR4nNXTvUpDQRDF8d/FWEVEMKQRtBPRFzAggpWFj+PrpBJsfQMbsdLCRgRBrAIqRK0s4tex2GuhhR94FfzDMDAsZ2dnz1RJNEgfW9hrUvQrtOpcYRZddDBd505dm/pEZwILmMMjeg30NsIBDvHwwbkuZqokPWWSiw1c/hvcY4Dbd/W2MrhLrFdJTjH/x801xRE2cFEleVas9V+4wT52sK1YWQvPGMNQWdIrXGNc8X1b8egZTnBX1zt4wjmCFaxhs9ZZwnKDDxjUusd1z29JMkyym2QyiR9GP8lqAzrfjpayMKPXL/qvvAC4rMwnD9xXDwAAAABJRU5ErkJggg==", 50, 8},
        ["ICE PICK"] = {"iVBORw0KGgoAAAANSUhEUgAAAB0AAAAPCAYAAAAYjcSfAAABcUlEQVR4nL3UMUjVURQG8N/TCkIhHBIiCXESMhqipoKmEEKHxkApp6aQdnc3hyDaoiEa2iKoJYQ2EYoIWmyMWpIHQlCafg3v/unPH8t6vvzgg3PPvfd899x7z2klcUAYwiU87TsoRbQxg9ahHgQ7gjPF3sYXfC52ExdwtlvRc7iGqziNZpxNfMAqlvEMOxjGdOsf3nQINzCHiZo/+KST4Y+ybkTnBipsYQ1v0L9Xpn2YxCymcbSceAUv8LJk862x7zDGcR4XcbnEeoJ5SXbjsSTzSdbyC6+T3E4y/Js9f2IryVyJ87E5OZrkbpKNsmAnyfMk75Pc7EKszsEkX5O0646lJJtFbCvJwyQTZX6gZnfLhSTbSaYkOZnkcS2zR0nG9inQ5PEk6+XJSHIryZ0iOtljsYpLSR5U46pkxnAf7/Cq/Mzve9XQX2IAb8tPbkOzTvvt3kn2g+s4hcXK0ey9vRaEK7hXd/zvhn9Cpwtt1J0/AQI+AwH0NOaQAAAAAElFTkSuQmCC", 29, 15},
        ["ICEMOURNE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAALCAYAAAA9St7UAAABPElEQVR4nM3Vyy5lURAG4O8chwShW4h4AiHmPegJiRfoMPIAhDD2Et7CxIgXMDBmYqSZGUnc4hrE7ZTBWh0n4tK2kzh/UlkrWVX/rqp/1V4iwietEhGzEXGUbbIAR92t7POoYhk7WEEZPQV46opKgZgqJtCFQUwj6plUEZQiCuXQigWcoF9S6C8OcIOreiX4v6igDb+xh2Opu224zz7NuM7rKH5iDGfYwh+MoEW6Zj/wgLvMdY6mvD9Eu6TqRU0eZ55VvcqxcJu/DY+vxBxiDbuliFjHrxrnpg+Kr2IOGznxQSy+8GnGJobe4dlHX+Y7Rbek5r9GnqMTJVyio6bQ9ry/z+fzpYj4iiKrmEGvBlDknaa9iYackSKYlubiBMMa4K9V5B0pY0m619uY0gDvSNFCxjEgzUpVmq1vxRNXRwR/GJ3ktgAAAABJRU5ErkJggg==", 50, 11},
        ["INTERVENTION"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABxUlEQVR4nL3VO2hUURDG8V/iGhUUiRiFFAqJYKMBA2qjIoKQxk7BLoWNjaCVpaVt+oCQWnsrK0ERGy1EUogYENRExCcmxnwW92yyLrvZzUP/MNzzmHvPfDNnuD1JrJMd+IyruLPej2wWtS589uE+lrCIl2U8h18Yw7HiO4AjGCzztzi6ifG2pRshWzHaMD+IbXiNeYxge/HbU8Z1vm1OmJ2pYahhvoiZJp/3OIQeXFdV4SzuNvicKO8+V4l5iF7MNpyzC7/xZRPjX6YnfzfJjCrjzUzgCnZ28c1F1dXrxdey1klIMNldyMv8xH5M4003VwtO6k4EVeX6yri/aW9LizUqIUMt1lejLuQ75qViJslwkt1JNNlIkqV0z6skh5NMJekvdr7sTTesNVvzuWuyekUWcLGN8gMly52YwDuMq8o93rC3gGGcwqc1Zr47SqYerKL2dPF5nGQwyZk2lbicpC/JbJLRJHuLDSS5kWQsyfGNZr5TRVbjWnlOqvpkDve0rmBN1cy3VY3da6XxH+HpBvPelrqQZ232z+GS6s89VYKDJ1oL+aG6Qv+dWjl4rs3+BXzETSsiqDJ7Cx9U/5lZvPh3YXbmD1gslWkEpeM2AAAAAElFTkSuQmCC", 50, 12},
        ["JASON"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAECAYAAADMHGwBAAAAkElEQVR4nM3QuwkCURCF4W9hYX3LJnZgA1ZgAyaWYCBWZmYiNiGCmYGpqZmCaCDXYK/huqCI/nCYYTgMcyYJIcAKQzS95oxjhecXHFIk6OGkOkg76p+4YppiiT4mio+XMcAIKTJ00Yh9/tVTy9lihk0SQhhjj92HSzNFsA5qaEU9Q9fjPH/Te8Ml1jXmWOAOD3rDGjgve6YhAAAAAElFTkSuQmCC", 50, 4},
        ["JKEY"] = {"iVBORw0KGgoAAAANSUhEUgAAACsAAAAPCAYAAAB9YDbgAAABjklEQVR4nM3WPWtUURAG4GfDTREUBMVCm0DAH6CFhfgTtIuNnYiWWlgKolhYaiWCoDZiIRaWfiHBwsJCUAvxo1BQQVTWgOJHzGtx7uJ1NzFuvLh5YWDO3HuGmTnvmTOSWEJO5nd8TDL+F/tal8riOIO1mOyzf8PFWj+B+3/w0So6SZrrddhc68ewbYn9u9DFWzxoO7gB9JV6Q5L5DI8j/4MGnSTbsaMR/wFMDJnzJ4Ue53GopToOoJNklcK7TS34u4Gzi3ybUeiybHSSTOEwnmCvdoJeCMELzDdsE/iACuO1bRarlZMaw1ec7gU7g0t4plRmxaLCHqWya/DUaCo7ZeF78kap9D3cWSmcfYX1eK309S7mcBBXlQuswhbcwnX8wD7L7wYPcXnIvT28xDkcVRKbVR6faVzBQJ/dOKI+ezzJqdrX/iR3kzxOsjvJzmafbWY3iheswjXlNOcUbvcQXKhlYDZ4j5u1Pq1waRJbG/+8w+1af+7fZ4MxPFJa1xd87wv286/V8FNXNyOaun4C7uyPkfZxtm4AAAAASUVORK5CYII=", 43, 15},
        ["JUDGE"] = {"iVBORw0KGgoAAAANSUhEUgAAABkAAAAPCAYAAAARZmTlAAABX0lEQVR4nK3Tv49NQRjG8c+5Nn4kiO00K0Ej0fgLRCUSShW9RDSiVMvWColKJxKJUGjo0GokCg13E2ILimWDyHLvozhzk7M3Z04s+ySTOXnf8873nXlmmiQGdAp3sI6v2Fvi3/CrfE/wEe/xs1N7CBfwqqlAzuIoLuNYgewf6mZIo0r8JU4XAOwaWOPHQO43nknSHSeSPEqyns3aSF0rA7nzSSx0qJdwE3t6OvqOA5Vuv5T5Kh534sEKNkFOVgCzgjVsFGBXu8v8FOO+4pkn+3CmAoBFTHG/AI90GtqJt6WJSoutFzcGznWcZDnJvfLvYpLbSZo5P6tjhCVc6+G/xhO8wHW8QYMdeF529FdqktzClZ7cuQK5iM/asz+OT9oHOtkK5J32jLtaw0Gt0XBY6994KzuYaaEHAA86AMpV/FfVXvzd/1l0Xk2SyRxsVXsZptsFGeGh1sQpPmB5OwHwBwIu/VPhwT22AAAAAElFTkSuQmCC", 25, 15},
        ["JURY"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABVklEQVR4nMXUPUtcQRQG4OeuSwJrUmxIE+wEMfgBQQiRNPkPYi2CIFiIBBKwshT8BenszE8IJF2KYCUmaVJoYWGi+I2aQlkZixnxclHiXZfNC4cZzrzn4505TBZC0AJkmMAxAo7S2pF8y4lXRz/GsYC1Juu9wjvsYhbHWQuE9GAKb/ELD3NnD/BMFCOd1dL+Iucvi8eopv0pzm8TUsPTZE+wgfUC5xGmMYIhVNDIFYCDFF8Wo1gtE1DFe3QmG05N1Qq8c7zGSs43hvkCr3grFfxGV4mevuILTkrEyEII29hH3z+43/FSvPUMPzGQO9/AJuYwg8/i+PzFYCFXSDX3cuueOPNHZQRcoYotnN2B+wKLWMLzgohJ8RUPU845UWjbkIUQPqUm3jSZ44co8r+iIr5I4x45PrSol3vharTq+OZ6XneT5Wd4HzvoFv/wXvzBx7Z3fQMuAd7aWIxR7/0uAAAAAElFTkSuQmCC", 50, 9},
        ["K14"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABRklEQVR4nL3Tv0vVYRQG8M8VLUshaBFxkEahXPwDmtqipaYaQl2E9hZxbO0/aGkIAkehrUH6ExqCaLApAuVqSWje+zTcU30NhfujeuDA+T7f933Pc877vJIYMR4kuTLiGXdG1TFuOMxhAfPYwBq26t91LGEcHbTRwldcQhcnmMRhcdfwDRlQx8Wqc9hKsoJ3+ISbuN9Y+LmEqiItXMZtPMFYH8UO8L2aaooPjuo8eDlkI21stZL0s7lbgqb5dYvtyoMpp5vq1PoPWC4uFWPnfL8dsInTSH+4W1681+BuJJlK8jDJ8wa/n+TqX3h7A8VZ1tjFceVvGtO64LfNHtckZ7GNL439R9gbabpD4M/H/gzviz/BCz1rbGIHi3iNp3r2+YlX+Fh5R6/J7j9TfRaSrCa5lWQmycQ5VzeTZD3JTpJH/9s2/cQPqeoUgESrhlcAAAAASUVORK5CYII=", 50, 8},
        ["K1A"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABsklEQVR4nLXWPWsUURTG8d+sk8T4BoqFYqcRRBAsFFELGxsb+1TGT2EnCFb5DvoBRKyCEWyCooLgCyioUVFIYVgFIwaCxngs7kgmk92NM7v+4TIzd849z7kz58wZEaHPcS4iHkbE/AB8dRoXImJ6I7tcczK8xOHSXNRY/w2bsFz4WsAQfmAEt/ERx7Fjw2Ai4gQe1wwCzmCm5pqmvMZlbMWh0vwyFjGSRcQ8HqGN7/jcw+EithXnOa4OOuIOvMcezEmx7SvdeyVlxakcz3ANUw1ExjBRw34SN7Db2nTZIqVTmVv4gmG0pBR+2s1xjreFUZONXMQHXCnN3S/Ef+Nkxf4OntTU+FkcZ3sZZRExKdXHpZoCZd7hQOFnM47hBZ5jf8lup1TUA6eFXVLRNGXcarDnpbR5g+24W7HN+tDpSY4lzZ/SaVyXApyyPj3bleu9+NpQqzcRkUfEcINGNRYR7UisRMSRLs2szMR/appa+GW1oOowhJvS27wn1USVmcr12QY6/0QWUbcPrmMUR6Ve1IlZHCzOP0l9oG/RKv38ovxlSfdNwLTUDx5In+YWVgagu4Y/cguKMaEeSIYAAAAASUVORK5CYII=", 50, 13},
        ["K2"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABu0lEQVR4nLXVu2vTURTA8U80IUUsig9oFVQUBEHi4CLo0j9AEdwcnFx0dXGwk7OLxUHd3QQVpCI4SNXBCoqVDp20U0F8YDDgi+Nwb+DXmKTJL/YLFw73PH73vPiJCCXP1oh4GxFLEXFyhDhrnbmI2LuWXdXwjGMGR3E4393CVXzssG3gJ36hluUqfqOZ7ypoYbmL/27swx586PeoKq5jI57iEb71sB3DEVzG6Q7dBG70+9AAPMZr1DGJFezEDqkg7zrsN+CgVBSViFjEoREfMQot/JC60ZQS2Y/3+b6BRambRdqJLGCsihd6J/LH6g5tyQEG5S5mpY4XqWFzlufyG4ocx/MsH8MrufI9iYjpWM33iJiJiBMRUeuyWJsi4kxEvCn4PIyIexEx3xHrfMkFHx/Wp4qvhbzu4JI0n71o5UofkHbmMy7kqm/Llaxn26W+VexNc1iHKl7ipjQC9wf0a+BKlk/hS461IiXaTqT+r+s6UaLtkxGxnEfnQRf9QmG0LpYcraHPMIvb5iy2Z3m6i36+IE+ViF+KMolcwy6cw6cu+icFearkN4amEhH/O+aE1JVn0uLflv4H68pfhbQeLlaOUcIAAAAASUVORK5CYII=", 50, 12},
        ["K7"] = {"iVBORw0KGgoAAAANSUhEUgAAACcAAAAPCAYAAABnXNZuAAABZElEQVR4nOXVPWsUURTG8d+uGxuDkHyHWASxUhBTLQiCvaCFhWJnl9ZWexsrUZJmGyvBT5BGQSs3GjsxIBaiSHyJEfWxmFmyC8nszrja5A8Dd87bPHPm3DuSaHjNJekn2UhypkH+g3ExHfU5jNs4ieOl7R5uYGsoro1F9PENX0v7DOZxbNyDWknqiruEXt2kfXiHt3i9h2+nleQJ1vAbb/Brj8Afio5BFxenJK6SVpKnOIePE+Ys4BmOThD7COcVL7dT2jo4Uq638cI+nZOkl2Sp5jCfSPIhu2wmWU/yOaMsjqlzqsrfVgzq/IRdG/Act4buuziL63hV2q7h5Zg6G1XONubws6a4WVwp11cVn20WD7FS2j9NUOdLlbODTbyvIayF+4pjZB2ris00YLtGrUo6WK6Zs4wL5fqmUWFTpckhfBffcRmPpytnlHaDnC3cwWnFSPwzmoj7bxw4cYOf9aG/LfQH6uc0rKhFHCkAAAAASUVORK5CYII=", 39, 15},
        ["KAC SSR"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABX0lEQVR4nMXVP68NURQF8N9lcl1XFCSeAkGiUJFbCInyVUQl0WgUGpWI6DSiUCpE4QuoJBo+ASJPpRCUHiHxUEiukFctxZyXN5m4cifjz0p2Vs6eM/usteecOYMkemAjhriJw3iNVQywXOaMcBLv0GuxGRhiMuhpZAOu4jqm2IrvGPeW1xFV4RE2lxg1eIxNLb6vFl3hNhZLjUHhz9jbQ9MTXOowf4iRJB+S3EnyJvNhWxJJTrfyq4Wnc9aZha9JqrLG3FHhFS5gu3qv7y5d/YIjOIDnjQ7cwgImjdwL3MUDnMJOHFN/xa5YLlo+dXorydMkR3/hcpjk5YxnFxsdnCY5k2SS5FCSLV27+SeiwgrO41nL42U8bOXH2I/jjdxj3OvUvb+ANSNn8Uh9cHZhD87hrVr4vhI78KNVY+nfSP09KrxX/4Wu4KP183FNbXJtvKLet99wAjdw0Pp98V/xE8OTiZ82/I/mAAAAAElFTkSuQmCC", 50, 9},
        ["KARAMBIT R"] = {"iVBORw0KGgoAAAANSUhEUgAAACUAAAAPCAYAAABjqQZTAAABm0lEQVR4nMWVP0hVYRiHn3sUlKAWwcElKajNP6uDoA5hEJGDoEtDTjWH4JIGiiDo4lLSbhQUrhEo6hIIuhQiDhVFg5qCXBRvPg73XDx86L3nojd/8HI43/vy/Z73nO89J6NyQVUDc8BbYAvYBfbi6y6wX/aOatqoU7vV2sRagzpnca2qw2pLWq80RY3qe/VfbLKtflKX1MMSQKG+qg8vAnVNfalmyzROo89qc7lQveqPCsAklTPfdEmoJnW+wjChRkOo6sSZfwK8AqpKzMYRMAjMAvXAFNAR1GSB5Xj6CsoATcCdoHYIyAEvwul77OlBPk+b6gf1WdDZDXVH/auOq51qTdh9Im6qA+aHJ5fY/7mJ1/coSJ6l12pVEaM+9XaR/HnRqi7GHgfqrQLURLz4RX2jfo/vc+pHdSp+GuUapo2M2q/+Ud8loSbjZOFTsKD2VBDkrLir/lbbIiACRoDC/yYLjAE/Sxz4y9Y60AU8iIBm4DAoOCYP+7/1DZiOgDXgaSIRAfeBlSuAAviVUQHuAe3AAXAdmAE2rgiKE+MJmz/k8x3oAAAAAElFTkSuQmCC", 37, 15},
        ["KEY"] = {"iVBORw0KGgoAAAANSUhEUgAAACMAAAAPCAYAAABut3YUAAABOklEQVR4nLXVsUscQRTH8c+dSSHYWIjE2KQT0loJgjZaSgqbWFvapoh1ipSmVStRxDZdCnN/gI2IFukSSJkmREUl/CzuJJvF25DT+cJj2beP4bsz82YkUYnxJO+TfElyk+RnksMkr2t1RaKeeJf+PC8t0/Y38/oz1/DtUajKjGC6oXaurMofmUls4GlD7QKWsYShEjKtJLP4iHOMYnjAsa5w8QCXsVaSk57MW0zgCM8eMOigLEryO8nLyq7ebeiokly0cYaVnt2E5o5qIuj0nnV+4Pie3B03WHmsPXOFVezo/tg0FrGHFvbxDes4xQzeYA1TOMCnu6WZTLL9j2n8mmQ5yVKSdgqfwCNJrhtkNksIVKN66P3S7aR+dAZYvv+ifh18bqjtFPQAT2rvH3q5V3iBS93Z2sL30jK3a+J1LqWZOigAAAAASUVORK5CYII=", 35, 15},
        ["KEYBOARD"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAACCAYAAAAaRY8cAAAAc0lEQVR4nNXNvQkCURBF4e/5u6CY2YGBgYmVCNudbdiAmVYgKFiBoZGw8sZkxG3Bmxxmzgy3RMQeLV6Y4YkFOjS44YId7ljhijXOmGPjlwEqIlkxSfdGyd04O6fJUd58/bA3d+lrjwds8/9YIuKBpf/O6QOxmx5W4Igb8QAAAABJRU5ErkJggg==", 50, 2},
        ["KNIFE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABJ0lEQVR4nO3VzysEcRjH8ddolxQ5UyhnNzcnB+XgwMnRH+Dg4O6fkFKbk1KOclG4uSnFwYk9+JmIUNTu2sZhvrStlW0b+ZH35fuZ+X6fzzPP88w0URzHUmAV42kYNUrTdyZPk/9CfhoZDFdcnyKP5zpiW9EZdBs2q/ZLmMYM5jGFHCaxggmsYxA7GMAB+nCCrvBspeD3iGLQTygE/YCLKH7/tR+jF7fIoj0Y9+AsJCjiGt2fFFtASzjfHNaspFEZlBEhDqsKHYczi9gI93LoqMpxj6Fahfw09nAY9JikIa+cYxT7v6GQWpSxgFnckYxut2Izj231vVo36A+xIyHmKyngCMtYkkzjjSilgaxhLg2jKsq4wqWkcR+SSSlhjK2UvBriz/xHXgBHZVKFWT6XkAAAAABJRU5ErkJggg==", 50, 12},
        ["KOMMANDO"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAGCAYAAACB1M0KAAAAyElEQVR4nM3SoUrDcRTF8c8fQYfBooIWo8knEIt7BDGKD+Ab2IxiExb2DJZteUkMJtNwTKNJ1GKVzWOYYQxRwR/ML9x07j2cC6dKMo8T7GADq1g0W55wgSZusYV9vOFlYu7xCJIc539zmeQwydUXWj9JLQlJBhNCI8nwG9PzYvHKcZpEleQVS3+owRAPWDObSo6wXSUJ3tFGB3d4/uF4wbizuzjCwPiRHlY+d25QRxdzhcNP06+StHCG6wKGm1jGOg6wV8DzV3wAbRawFwKF/QUAAAAASUVORK5CYII=", 50, 6},
        ["KRAMPUS KUKRI"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABPElEQVR4nM3VP0vWURjG8c8vREltEBUdc+gPSrs0t9jeuxCcdQ4C6QU0BEWja6EujkLQoi0NgjjolJhZYEV6OZwf+iQq+vgkzxcOnPvc933g4pzrnCrJLDpxW+EvBuv5Twwh+FPn9tCN/TqGH3iKbXzD77ruAN9xWO/V61+60VXXrWEVK9hxRaokuWrTDfAZ8/iAj4rQC2lXIY1s4h3eKqd2Jv9TyBfcQ0cL91zEcyyfTlRJXuJOw9oh+hviPif+6MSWcrc7sKv4B8bxos5T7vuoIuYrHuAJxlDh7jUELWEan45XkrRqzCYZvmTtQJKpJAtJfqU5DpK8TtKfpKVCJpL0NtHXk2QmyXqTgtaTPKrSPl6/hceYxLM63nfyLZzHBt60k5BGhvBQ8d8r5V8aUbw1h/vKa/ZeeQB2jwCwkpt9G7GegwAAAABJRU5ErkJggg==", 50, 9},
        ["KRINKOV"] = {"iVBORw0KGgoAAAANSUhEUgAAACkAAAAPCAYAAAB5lebdAAAByklEQVR4nLWWPWtUQRSGn2v8CEhABCPZQIzgB1go2ESQmH9gQBTESlIKlrHQVjvFSm0EFYSQJqRJoSiW2RSColHwq4im2WAkMeCCmMfijngdrsnubPaFF2Y4c85558xhZjKVNqACTAPDwDKwBRgCvgE1oLvE5xdwCrgJPP/HoqZwUF12Y7EaYp6I82XqALDQYIUyoB94BHQ0Xd+/+BR4CHgD7AH2AlNAF/A5VHYO+Jmpc+RHsB66gH3AphbESb7RMqwCD4HjQE8QWQMWNwNPgJF1gleA88AosKPE/gP4HkTsjmwvgCqwRN6XfcBj4D1QB1YC68BE+dZ0Ru2M+mC/OqLeVz+oH8P4knpMvVDopWl1SM3U02o96rWxuMeaJeo99bB6UR1X59VX6i31rFopcdwaGl31rtqt9qoDwWemIPLtRohcUqvqdfWkurMBxyNBwIK6LbJ1qJejah5sVeSuBMcrIfmD/9iPRiKvtSoyhdWQ/Mwaa14XRK6o/akiU6+TWeALML/GmhuF8XbgTmKu5Eo2wkx9Fh37uZRYmbbl7f6DA8BLoDPMa+SvzNdmgrTyejSCd8DVwvwp+YXfFNpdSch/QFPAbWAyJcBvZZriwvQUZB0AAAAASUVORK5CYII=", 41, 15},
        ["KRISS VECTOR"] = {"iVBORw0KGgoAAAANSUhEUgAAAB0AAAAPCAYAAAAYjcSfAAABjElEQVR4nLXUPWvUQRAG8N8lRxA0iJ3GwhQWihZKECzEIo1gZ2NAAsbC0tLCxtIv4AcwYGWtohZisJDYWHgIEcQqimAgiETFt8cicxCP+1/iER9YdnZ23p7ZYSUxxNqb5OI/+sx15bbhcAi7MYEWftU+gt8lt0pW+pOYh1aSfkHnKnAvTpR+Yshid2GtlWQK3/CqLk7hKdbwo8fpIxZwupKv4BGWMV1FqXhfsRNjG/z34YMky0ne5W+sJNkz4H0uld1CkpnSXc3muJ/kXhuv8RO3MYNJXMfqgDZ1Gb2pDk0V0168xCK+YBQ3ukwfJJmvam8l6SQZ3WQSl6ry2Q26F32Y9e1Wd3rHcRmzOGt9GpswhoMld2o/h2M9dsuN3UrypN4wSe5uwlCSsSQ3y286yfkkn/uwfNgUo43D9S6PcWcAwy6+48qG8wQuYEedr+E4njVGSHIgyeQWGG51vS2mZ5psmj6HYTGOT9Z/o/14389oZDsz4kglXG1K+D+SHq29M8hou5OuYQnPBxn9AaaqFSn0yNjQAAAAAElFTkSuQmCC", 29, 15},
        ["KS-23M"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABQ0lEQVR4nMXUv0pcURAG8J/Loqws6gbEBLvF2FhYausjxMLSN7CR+AopFHyE9CmChW2alBbWgq2IWURFWFf8A5PinCWrqNG7F/eD4c4M937nm5kzdygilIgxLOEjmpjI+UY2GMYVjnLcwR9cvOGcCsbxAVOYrfaj+hGWsSUV8O6olMSziZ9SEbclcb6ENk7xS5pKs4p1bPdBuoqN7N9krgbm8RvnWMPX7I/kw2ewiDlMP8N9hLsn8oF71KQreSEidiOiHhEKWD0iDuMfvuX8UEQsRESzx57jGM1WK6hBRKjiUlqctnTVJrNNSUvbjT/l5ziquSvwuadTP3o6tve/UWZ0Xvnei+gu+w6us3+GE+kOnkrj3c9+y8O/Sx0rmM3xQRmiiqBbyBccF/i+je/lySmOilTM/aCF9IuKtAutQQvpF38BaOXOEPWpp44AAAAASUVORK5CYII=", 50, 10},
        ["KSG 12"] = {"iVBORw0KGgoAAAANSUhEUgAAAC0AAAAPCAYAAABwfkanAAABoUlEQVR4nNXVPWsVQRTG8d/q9SViIJGYVKKFWkXRJliphSCkMSD4AUxl4wdI5WdIF8HaFH6AVEFQFKKgTbAQVEQMGhsTjYjJPSlmr2xWs/e6iwb/MOyeeXl4mDlzRkT4R206IrKGGjMRoeXvk+EwTuIq5rGO/fiGvWhjI+9by7/r+fo9+bw+XMBYFhEzWEV/DUMbWOnB9HU8xlLFvCMY7qJ1CNNZRARe4kSPRnecXTttoAZL/6PpZ1lEtPECiziOU2jhB55gGR9wBmMlgc/SJaoiw4CU+58q5hzV/eQnsdBC4Auu4QpuSBdnNW9F7mAIj0r94zhf6ruHp/n/MWkTblYYuihVik5lWcM+aVPaUpWZw5aSN4CDeIj32whPbtO/XDL9Fbek05OPvakwDPe7jP+keBzncBq3e11c4FIpfi2l2aB0Mrvxtobub+mkRx8mpLz7+Ica/VJadXhXiAfz74P6Fn+lhSl8l/JotobGBA4U4rt41dhZBVl6Wxoxh8uF+CyeNxWtoqnpIelp7lzoRYw2NdWNpo/LiK0VaL6hXk9sAkCW3l2tgZsfAAAAAElFTkSuQmCC", 45, 15},
        ["L115A3"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABLUlEQVR4nL3UMUvVYRQG8J95wRTvoLg0ag7aEikEgSCBQ4ObENEH8RM4ioOtTS41NYhbhBAhiIMShOB2E1xdjBrMx+G+w58/lvd6Lz5wOIfDeQ7PezjnlcQdrZnkdQ/8qvXcp+FueIlXmMSTSj7FD5f4BBc17gweYKCSe17hdorBouMQPxpYwBSWa4Vn2LyhQRPvC6df+In5LjmDeKM9lMmBJC2MY7SPwrrFVyz20uC21brCKj7jKbZK/q322rzAuxrnAp/wDXv43YGOPx3q/TeStJL8ys34m+RhOaixJFdJ9pLMJplLspRku8Y56tMH0PWxD2GkvGsNG5jGBzzGfpn+M+0D3cFxZRYT+IIWTou/dzSwjt0SX+IcB9qrtIJHRWyz1Hyv9fh4X2L/h2vr/2Uq5peL5QAAAABJRU5ErkJggg==", 50, 8},
        ["L22"] = {"iVBORw0KGgoAAAANSUhEUgAAABoAAAAPCAYAAAD6Ud/mAAABoklEQVR4nK3UPWsVURAG4OeaFeKNIlgkIiqiIIJio4IEUws2/oNU1nbW2oqtjZb6Byy1ECxUUGPAkAQbDaKEqIUYQgzmmrE458bjsne9hS8sOztf75nZmdOJCEPgFr5jER8K/eua30+cw5t6gmoYFhzBTcxiK+smG/zeY2dTgmGJ1rGEvRjDJvbXfMZwDKODiF5gFYcaTrOJjziP6UL/A1Ho9uVDVLiIp3WiTkSsYGKoutqxji7m8CXrdqOH1Urq6/8g6ub3Z6nNfVzHSoUDDUE9jKCTv7/iPpazPIUrhf9bPMRdHMaNnPda9icitiJiNiIuR8TJiBiPCBGxFn/wMuv6z0hEvCvsjyJiOtsORsTViHhQxlTYMaAVSziV5fpe/MrVHcUMLuGENFDfMJ6fbQwigeeFvFyzdXE2y/OZeEGa0DVpxP8a8zaijULeU7NNFonmG2J7mXwbbQv7qZCP12ynC3mhIfY27pWKtopeFfIFaQr7eIY70mpMDTjkYqnotFyqo9KP7bfojHTX1bFLuila0da6DTyWKnkiLWIT/kkCvwE+t6q0jK8+kgAAAABJRU5ErkJggg==", 26, 15},
        ["L2A3"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAACEUlEQVR4nL3Vy4uOYRgG8N8wExrGoWbMQs7KYUSysFI2dooFyh9hhSwtUchKlsp/oCSHkrKgEEkhp0+Z5DDjOA7DZfE+X76mj8Z8M666e59T131d73M/zyOJFqMtydUkp0eMz01yahz4/xYzk6xJoi2JFnASm7AMX3CmYa4H83BzlFxDeIr3mIR+TC48w3iB2ejCOwxgK5ZibytGZuBeETteCL6qDHwtY1PxHT/QVvpf8LNogKH2FpJ+LAlbwbsiqBMduFa+HXhY+JeVXE+wE29wA29LfxKej2ZHpmEh5pdYUL5dWI1FJdFrPMe30v+OT9hehDbDC/SV9pDqjw+rdqajjH8rhiajt6wbLHM/MB2D7ejGHKwsAuui64K78QE1VQ3X8Aob8RK7ca6QNkMf1jf0a6qzdBePVLXeDMMN7Tr3kybrBqAtyXVMKU5rDfEUz0q7nqwHe7AOR3H2DyLqWI47qr/7CpdwHcfK/JJipmW0Y1YhPvGXdXOxF2twBPtGyX9cZWIY+/FZVTbdqtJ8ORbRTZGkP8n0P9zTvUmOJjmfZPM/3vHb8huHy1hXksVJliTpHM83RZJakhkjJnqSHExyIcmWMRBPS/K4mOgvBibyYSTJgyR9IwycH6OBehxo2I1dE20i5WW/rTofq1Sv5CFcbrFib2Et7mOF6lxMKNpxETtwAFfGiXeD6lqe6T+YgF+o8Nsuh04prAAAAABJRU5ErkJggg==", 50, 13},
        ["L85A2"] = {"iVBORw0KGgoAAAANSUhEUgAAACMAAAAPCAYAAABut3YUAAABsUlEQVR4nLXVz2oUQRAG8N/GFcSs/xAkKgqC8RLIUVDQgyA+gB715oP4AD6AePAkePDgyYMXQVEUxESQqDlIFGIEY6KgISom5aFbth1md8e4ftBQU/XVzFc13dWtiNAAl7GEWbzNvsBUk2Tcx3Vc7UdqN3zZIdzANNaz73jDXPiA1iBSUzEreIMd2IZVjPXgjmFrxXcAm5uIeSKp7tQk/MA8juFC4V/CGs7m5z3YiUmpc58L7jr2YVPhn83f/QOtiHivd5UbwU98x6i0r75ge4Uzh9fZ7uScZRHxMIaDhYiYioj1BtxLEaG62thbU90qtuhuuo+4gsW8TuFiwZ/BTVzDURwe0L07td6IWIuIxxFxJiKOREQnK10uKnlaqaIdEfNF/FZEnM+xg3VVN1ltaWPVYQ67sv2oEkv/mP24i3MYl0bA4oCu9MRIn9izwl6oxHZjItvPpZP1Sirg6/8Q862wO5XYiSJ3ZqMf/xsx7wp7vBKbLOyXwxLTbwKXQ+mkdLJ+X2S3pdlxOsceDENMK3pflKP4pDuVJ/Cihjeie1/9E/p1ZkU6KWu4l4XVYShC4BfK10i/1Nww+gAAAABJRU5ErkJggg==", 35, 15},
        ["L86 LSW"] = {"iVBORw0KGgoAAAANSUhEUgAAACkAAAAPCAYAAAB5lebdAAAB4ElEQVR4nLWWT0uUURTGf+84SeEfJLCVjeRCxKhFkZE710IfJPoWbdvoRltFLgShj9CiCKJFCYPJIBEOJTSDpDGjoCbzuDjnpet1ZnqdZh64vOee89x7n/vnvPcmksiABaAClIAf7hOwnqUx8BooAs8y8s8hn5FXAF76QOmsZi8xThU4uQT/HLKKrAM14BZw1QcsAB8iXgKMNGk/BvzqTCIkkj5hqzMI9EfxP9j2PgIGAv8e0ADeeNtR9z8EhlqM9dH76UhkFbjRSeMIv/070iJeB3Yz9nUKXMfy4Gse+EZ3RB4Dh8AwkGsRf+W2nBue035sN1M89u+TRFIZGI86PMC2N/F6FVjGVuInMAc8DfiHWOauYAn1oInIbeBFs9n9E5IaktYlrUk6lrQkCUk1/cVn96UlJ2kriBclzXtsLOL+d8kDE0DZNX8HVt0uA3fcfh/NreErOglsAPeBKSzj9ztarTbIBQJTpMKKga8Sca5hmQwm8hT4gk2y3l2JFw/4AXDT7aPAPxjxZrD/JS6up4hF7mCpn9opJiPe3cDe7LaoC4gO6W1JBbfng8SoSEoC3j1Ji5JKkp53O1HikrR5YAxjN0uf16exB0aMK9jN1DO0u7trwFvsbL6jddb2VCDAGb65Zt3fD7LLAAAAAElFTkSuQmCC", 41, 15},
        ["LINKED SWORD"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABBUlEQVR4nM3WsS4EURTG8d+wsaJQiWJblcILKPQKUYhOxAso1N5DqdyICm+gJpFtFDo0WgpkE65iZ+IKiXHvyM4/mcw9mZzJd843594pQggyWcI+dvCa+7JUOpn5qzjAijEWQV4hyzjBLu4bUZNBkfhpTeEaPczhuUlRKVSO9Mr1Xc28dSzgFot4wxPe8Rjdf2MWk1HcxUwUV+uqUS94wLfuFyGEU6yVD/u4KoVAUV5x3MUe5msI/Q+GuMEAlzjHoAgNbFst4LCDM5+OHOHCz05U8bSWOsLfZ2QTx0YzsqElM1JT+xdat2tNJOYNsW3Uza3m5KST6khFfLKP9VDMLYSW/Gt9AABUWPTDV0pUAAAAAElFTkSuQmCC", 50, 13},
        ["LONGSWORD"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAAArUlEQVR4nM3TvQlCMRhG4UfxfwUbC7G0EZzAUmysHMMR3MBZxEpcQERwAAuHEMFCYuFtLXJjxFMlgRfOy5evEkIQyQALrGKDOamWyCyx/bZIKrFFOhjjlMElidgifVwzeCRTCSFs0MC5eGujVZxvqKNZ3LuY4P5Dx088ccQeuzI78i9Uvb96G50aZhHhIR6YZxBLInYiF/QyeCQTW+SOA0YZXJIosyNrTL/skcwL7OoXItfN2nkAAAAASUVORK5CYII=", 50, 10},
        ["M107"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABgklEQVR4nM3VvWpWQRDG8d+Jx6BvjFgEBBWEgKA2WgSEaJXCQiwEvQHb9OI9eA+KaCuIWCmCH42kSplglcKPYCUIxmiSSTGrvp4Ino0R8sBwdjmzs/vfmd1tIkKF9uIAvmMF67iOq7hcfEYwiYP4gsWaCbarphLkCh6W9nsJ0+AQPmAURzBWfF5jegfW+Ve1lf4fcV9m5BNO4LHM1CTG8RWnsQ9vcBRRjAQ31F8vcf9JTUTcwLUywYY/w63K3Z/G/or4UcaRgO/8DgWn1GdtgHNYkGseNBGxhOOVgfpqwy+QFVmOXZCzeIVvFXEncBg3ZeZPtniOS3gpa5wkftAZPIszPSaZwx1cwBLeDv2bkuUYeIHl0r4toftqgD34XPqtiLgbEXMRMRIRis0MtX/YsUg9i4hbEbEYW/U0IiaKfxsRTSdGt79j1sq6ncL5n3RJ29VM+T7CE3nYL2J+yBawVvzWbFXVFVmjvtfvuHwPluXBXP1fC9qu+l6/Y7gn34VdBwGbHFf3mJfeNPwAAAAASUVORK5CYII=", 50, 10},
        ["M16A3"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABuUlEQVR4nL3VPWvUQRDH8c8lp8aIIj5gYRuM2KQWCx+IL0GwshYrC9+CvVikESwtFOxiQBDURgsLC/EhwcaARgwY0JBo9H4W/w35cyZ3l+PIFwaW3ZnZ2ZnZ3UYSfXAe0/iGWXwt40Us4Dve4n0/ztu4ijHc6KiVpB+ZTsW7LdabSab69F2XiSQnktzuptvE5DYzdLxkaBEnVdlvL+swPuMFjqCBUbSKrJS5EQwVWS62Q9iNV5jHS6x2C6qRPntrh/iBJRxUte5mjGKh2YfzqLLZjS/4aaMiu1TZ/q2qChvZb2Gt5nsXXuMWHuIBLheddvZiZTsVWcIbfMApnO6iP4E5HC4BDuMPmvhbAm6U8frcULFtlf2W9Uo6s5TkbpKLSYZrl2uypnM9ybEkT9ps9w/gsvcsTf+3yorqab2HGZtftLM13XnsUz3BdXppv8GRpJVkLclMkitJDnQ5/ViS1ZL1m1tUKUkO7WRFJLmW5Og2jB6VQGeT7KnNj7cd5MxOHmQIU7Z+2toZwSd8xB38qq3Nqf6WdS4MomN6pZHBfiP3camMn+HcIJ13op9/pBOPMY7neDpg3x35B+Ddzaaa0l23AAAAAElFTkSuQmCC", 50, 13},
        ["M16A4"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABuUlEQVR4nL3VPWvUQRDH8c8lp8aIIj5gYRuM2KQWCx+IL0GwshYrC9+CvVikESwtFOxiQBDURgsLC/EhwcaARgwY0JBo9H4W/w35cyZ3l+PIFwaW3ZnZ2ZnZ3UYSfXAe0/iGWXwt40Us4Dve4n0/ztu4ijHc6KiVpB+ZTsW7LdabSab69F2XiSQnktzuptvE5DYzdLxkaBEnVdlvL+swPuMFjqCBUbSKrJS5EQwVWS62Q9iNV5jHS6x2C6qRPntrh/iBJRxUte5mjGKh2YfzqLLZjS/4aaMiu1TZ/q2qChvZb2Gt5nsXXuMWHuIBLheddvZiZTsVWcIbfMApnO6iP4E5HC4BDuMPmvhbAm6U8frcULFtlf2W9Uo6s5TkbpKLSYZrl2uypnM9ybEkT9ps9w/gsvcsTf+3yorqab2HGZtftLM13XnsUz3BdXppv8GRpJVkLclMkitJDnQ5/ViS1ZL1m1tUKUkO7WRFJLmW5Og2jB6VQGeT7KnNj7cd5MxOHmQIU7Z+2toZwSd8xB38qq3Nqf6WdS4MomN6pZHBfiP3camMn+HcIJ13op9/pBOPMY7neDpg3x35B+Ddzaaa0l23AAAAAElFTkSuQmCC", 50, 13},
        ["M1911"] = {"iVBORw0KGgoAAAANSUhEUgAAABgAAAAPCAYAAAD+pA/bAAABFUlEQVR4nK3STytFURQF8N/1XkLGDEgMmCgTKUbmRkoGJvIVDOSTeRmJkVK+gCgihREG8u9tA/fqeO7znq5Vu3M6+5y19t5nZREhwRZW8Og73lrO+tDvd4zhOmsRuMRoh4d/QhYRM7jBE+7/kxwndWxiBM//TA4vdZxjCEsdLu/hDAtoYht3Sb7p5wSeREQRixHxGuW4i4je/N5ARKwl736NnkTtACdtqu9BLdlfdOj2C6mLJnCaE6S4QgNHOXH4HFfoAvVkv15C/oBZ3HZbcSsKwho2SvK7VchTgWWMl+R3qpBD8dv7Jc55j4jhbt3SLkTEdEQ0SwQOq5IXNl1FVtJco/J4fNp0EPOYwySm8nUJx1UFPgAHuCAfqpubJQAAAABJRU5ErkJggg==", 24, 15},
        ["M231"] = {"iVBORw0KGgoAAAANSUhEUgAAACoAAAAPCAYAAACSol3eAAABjUlEQVR4nLXVv2pUQRTH8c8mKyYiSazSKWKvdRoFS58hhY8gVjbaqZXgAwgWNtaCCIKinZ2ondhEEP+hMcSYGJMci5nFm+GyO272fmG458w9M3Pu+c3c6UWECk7hNb7hCz7ha35+btgv8b1mwv+lXxl3EUdyW8ablphFXMOlSSRW0ouIRWwPiVnAE5zM/i2pgiUzOIOnONvoX23YO1jHHkJSaAa38WtUolXaV7KJ2THG3cRaS/825rBVK30t02OOm8dUS/8WjmK3j8OGS7+Me5UL3sc7+6XfzAsOWJe2wJ5UxcB1/Bw6c0SMaici4kbs531EbBR9GxExVTHfWK2t3CUruIM/2X+I4zhdxO3k6nRC7R5dwqFsr2b/GH5LW4eUaN+/D5osFWWfjYiVLO+H7A/ePWhIv9aV7LXSX5akhqvS4RjwsWHPSf/cThiV6AKuZPsV7hbv3xb+0gRyamXUHv2B87ggVa88LM8L/xweTSSzgt4BL6Zp6Rqcz/4LHVX1oDfTLh5LiT6T7vlO+AvryV2hWKLF3QAAAABJRU5ErkJggg==", 42, 15},
        ["M3A1"] = {"iVBORw0KGgoAAAANSUhEUgAAAB4AAAAPCAYAAADzun+cAAAA6UlEQVR4nO3TPUpDQRSG4SfhWlhFdAduwdYd2Cu4Dgs3ki2YDfgHinZpBQshpdgEIWAM/iHeazERNcydO4p2eathzuF7mTkzraqqZNDGNgYoI/UOtvCIBTzjCvu4jQW2MsXLGOU0znCJo1ihwPp0/ZQI6PxCWqGP0zrxGk6wmAgZ4wAbmdJSuKVxXUOBB2EeTQy+iHu4wabPmV+gizO84j4VVog/lhgfIxniEOfYFa50lrJm/5s4hyVhJLCDvUTwHSZNgQWuM8QrwglfcJyQmva8NQXmfqefMBT+82qqqf3X1lzm4rn433gHBZ040gudpfUAAAAASUVORK5CYII=", 30, 15},
        ["M4"] = {"iVBORw0KGgoAAAANSUhEUgAAADAAAAAPCAYAAACiLkz/AAACCklEQVR4nLXWS0vUURgG8J8XwiyLgkJbBEUEUYsoaFO71mVkmwpsF/QB+gbRjWgZRLXpA3RZ1MIwEoqgVhFZEAoRxVRmYhdHcHxbnCOMgzp/HeaBw7m9572c9zmXlojQAK7iLEr4kUsJ33P7Wy4vMbMMvb3oR189wfbl+TsPnTiN9RjFMcwuINePLjwuqHcnxrCxiHA7tuf2V5QLGoGjWI1pbMPFReR24xGOYEcdnXcxhUG8LuJES0SM4Rcq+LOAzBgma8Z6sBdrixiR6FPGJ3RgHf5le51Shn6jO9sqYQNu5HYrNmddZSnTXai0RPFDEHgjBdqDLQXXza0tS7vbmp0u58DapExO5foV3uOUlImPec2amgACP9txC+M4ia1VRidwEy8kek1gpGr+OQ4WcL6CKziEXbk/jpbs2IyUjTZcwz0MSxS6LzFgcUTEZESMR8RMzMdIRFii9EbE26iPB3X0NFRaJS4N5+g/YA+OY1+dnX2IJ1X9M3lXL9XI/a2jpyG04zCeSvS5LFHlXcH1+3Ndwarc76iRaeihqYsG0tdXRZPrVeObaih0u5kUWunCjogYzQ6WIqK7aq41IqarAhho9hlYCc5JjxdckO7qOcxKV98cDkg3TFOw0q/EHXyRrsbBBeafSS8w6auxT8GXddloUmpP1JyD882iUCOfuaUwhM+5HsJAk+z4D05vz1lTmv18AAAAAElFTkSuQmCC", 48, 15},
        ["M41A"] = {"iVBORw0KGgoAAAANSUhEUgAAACUAAAAPCAYAAABjqQZTAAAB70lEQVR4nKXVTYuOYRQH8N8zHmbGWzMpk91ERnnZUErS2CArxUpSfAAfQPEFJFnYSElqrFirKUpYKFGzoIyMt0zyksjMYPS3eO5pbk8zj/sx/zp13edc53/Ofa5znauWREUsxi3sKunu4kKx7pnHbwpXqwaBeht7TxQJXcSXkn5rC58OHMN33KgcKUkVWZfkS5K7FffPSC3JzSRjSbqq+knSO48MJfmU5F2S6TSwO8m+JH3/IN6Q5GeSb5nFqapJ1ZKM4F5xlCvxGTUcwJpyUTGGFZjEdIsD6G7yVRzhUAufTnThbB1XMDLHpk1NxDWsbUHajGm8xCq8wmocLtaLMYp+vC14r2Mp3tSSDOLOHKR92IY92I9zhb4Hp7G8jQRnMIEf89g+YhyvJRn8xxl3Jxlo0j0u+uRnkvNJtiR5noXjc5LRKiNhEs9K3xuxuVi/xzV80Cj9QtGLo3WtG3YunNW4FF+xXaPk8NRsD04U9vcF/wuzPboEy+bg/Y0zeFDH/TYSWq/RXzSm9HjJViutT+AyTmIAx0u2HUWCM9VfVCQ0gYeoPDxnpDPJoyRTacyysu12qTe6kvQnmUyyt80YbT0zNG7OThzy91PTjIM4gtsYbjNG25VqJcNNN+lXko3/w9XR9l/Mj+b5cwlP/ofoD7wmpH/PtLzMAAAAAElFTkSuQmCC", 37, 15},
        ["M45A1"] = {"iVBORw0KGgoAAAANSUhEUgAAABMAAAAPCAYAAAAGRPQsAAABAklEQVR4nKXTvUpDQRCG4Sfx+APaWQg2opJGsBOxslWwsBPsvAQrL8EL8CZsBUkpFhZWNilEEQQLwR8QRDBKwLFIAsf1hJjjB1Ps7My73wxsJSJ0tI9tXOIcLXzivXM/gnHFWsBUJQdrYLFH8Z+UYQ0vqP0HhOcME9jF2IDNLRzlzo8ZTrCM9R5Nq3jAFg61d9jEKJ5+VEZEN67it74iYjIiKhGxkqstjKzDnMZc4ugMdSzhFRf95u7CdjCcyzexgbd+gHTMoYi4TcY77jdSUVSxidnkjfpAjnLOTgsWP1PWWTXhN3BXxlgVe0nuowyoC5tPcvdlYRlucKD9N2u4Lgv7Bshx4GsGwxQKAAAAAElFTkSuQmCC", 19, 15},
        ["M4A1"] = {"iVBORw0KGgoAAAANSUhEUgAAADAAAAAPCAYAAACiLkz/AAACCklEQVR4nLXWS0vUURgG8J8XwiyLgkJbBEUEUYsoaFO71mVkmwpsF/QB+gbRjWgZRLXpA3RZ1MIwEoqgVhFZEAoRxVRmYhdHcHxbnCOMgzp/HeaBw7m9572c9zmXlojQAK7iLEr4kUsJ33P7Wy4vMbMMvb3oR189wfbl+TsPnTiN9RjFMcwuINePLjwuqHcnxrCxiHA7tuf2V5QLGoGjWI1pbMPFReR24xGOYEcdnXcxhUG8LuJES0SM4Rcq+LOAzBgma8Z6sBdrixiR6FPGJ3RgHf5le51Shn6jO9sqYQNu5HYrNmddZSnTXai0RPFDEHgjBdqDLQXXza0tS7vbmp0u58DapExO5foV3uOUlImPec2amgACP9txC+M4ia1VRidwEy8kek1gpGr+OQ4WcL6CKziEXbk/jpbs2IyUjTZcwz0MSxS6LzFgcUTEZESMR8RMzMdIRFii9EbE26iPB3X0NFRaJS4N5+g/YA+OY1+dnX2IJ1X9M3lXL9XI/a2jpyG04zCeSvS5LFHlXcH1+3Ndwarc76iRaeihqYsG0tdXRZPrVeObaih0u5kUWunCjogYzQ6WIqK7aq41IqarAhho9hlYCc5JjxdckO7qOcxKV98cDkg3TFOw0q/EHXyRrsbBBeafSS8w6auxT8GXddloUmpP1JyD882iUCOfuaUwhM+5HsJAk+z4D05vz1lTmv18AAAAAElFTkSuQmCC", 48, 15},
        ["M60"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAAByklEQVR4nMXWTYhOURgH8N8118fwlo8lJRIyNshOsRY2SFaUrZWSpWJhoazs5WNhIWJKYmFhZWMkinxMKWOGLGimGDOvY3HOW9f13jvvvOPNv07d5znn/M/zP8/znG4WQtADHMDNXhBjATbiedE5r0eHTfWIF3bhbNmZd7h5OU5gK7YhiJeQ4VfBnsIQnuAx7mASo7iPy3MQ0MIWPCg7sxDCBywu+eejMYfD3mNYFLoeq0SRE23WXsDrCp5G2pOnsQw7xIu7hWaKtS8LIQxjbU1QE6pLpZGIukHAD0ynUcVfFNJMvmmMJ3sMC3N8Vi+km8y8xScMYInYoGVk6Pd3RvqxKH0fw6UU3xq8FLM7iVNiyUayEMIg9lUE9EJUXMamRPg/cRRXW0Yu3lwRH3Ed1/CsguQKjojZfIjDhbkhnBHreQB7sTnNfRVLql2WxrEfK9LedmhgA37ibnGiLOQcTou1V4XVOJi+H+F2ScgoBgv2RaxMAp4m7nVYir7kb+I7XtWcW4tWj7RwT70IOC++cm9wEttnWD+SRhHvZhFjR8jFW7oh9sKXGdbvxCGx2XaLz+yIP8V8+9dBdoJslr8ox8WXZAx7ehJRl/gNvhRxDqBRSKMAAAAASUVORK5CYII=", 50, 12},
        ["M79 THUMPER"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABcUlEQVR4nM3VO2sVURTF8d+Ya5r4AEFNsBKttBHRTsVCSBEs8gEEGwv9AlZaCoIWgp2VjZ2NgvgoDIqgqKTwhY2CiqA2JsQHid5lcQYyDEFuEm7IvznMXofF7D3nrKmSTGInfuIJzuOR1cEadHvZWCV5in2N2l+cxsU+vNhiGMFDnMVhvMXnWutiBnN4g3MdzLYMBnABJ/EcL/CyXt/rbULHMIgxbFMmWzX0O7iKP//x2FGvj/Ea0y19vdLsXhypktxXOu6FH3iFSVxWGmxzHOPYpRzZlSHJ7SyN30nOJNmcZDDJaJIHS/RaNlWSGzi6YpPrEwvdkdXMdZxo1TpY18H2RZp1MYXv2ISNDW0OE8rdGcZW3MUefDWfOm0GsKHxPFvXDuGaEhSfcMvCAfGtoyTIM+U/Mo0PSuIM1yapTadqfaZhsBY3MVr7nMI7HMR+XFLi/Ao+KmnYF6oky/UYwgHcMx/NW7AbX5Sv9EuZaN/4Bx/WHO3vIhLtAAAAAElFTkSuQmCC", 50, 10},
        ["M9"] = {"iVBORw0KGgoAAAANSUhEUgAAABcAAAAPCAYAAAAPr1RWAAABHUlEQVR4nK3SsSuFYRTH8c+9bopiQIqUMlAWZTAQZTGwMfgXJKt/wW4yGAzKn2DBpkhKzKJIKcUiETqG+17drvflzb2/OvV0fs/zPc9zzlOICFVaxDKO/NQt3lPytWrFCjYLEdGDZ8xiB8UcgFwqYQ2j6GokGKtFbCDQ20AwXJcwgc5/HL7DLh5r8pc4w1UhGWgz9jFZs/FTecADuMAxZrCEcbz8Wj4iKrEeP3WeeEMRsVC1d7FqnRmlpEYR8ym1BzGGE+WBdyu38e2vnuEbPo2+FH8bH4nfhGEc4iEPvPKErZSWREQM5nl+VhQiogX3aK+pe4P+XDfMUBFzKWA4qAdcgU9leKeNgL9meJ/1wkvYU/5aI+hIog1P9cK/AGgLxyuYNzzEAAAAAElFTkSuQmCC", 23, 15},
        ["M93R"] = {"iVBORw0KGgoAAAANSUhEUgAAABQAAAAPCAYAAADkmO9VAAABKklEQVR4nKWUu0pDQRRF171GIYL4iFhYpJOIlY0ECztBxMJS/8DaTjvBUuwEK8HeH/AbgmhlL4IYCwUfKIbgsshE481NiLkbppkzs84+Zx6RStAGsA3c8qsP4J7OGgLWgFPgCZiM1C2gCpwBg102d9M58AbkUXfVT7NpVEUlF8i1YL9XXQCXwCNwBbz/RAJ5KZHxS11XD9Rxtajuh1il6SZtdALW1GF1Xi2FNSX1Qa2rh+pAGjAORjcTJVWBVSAGxoAFoAAUgTIwBRwBUVsz1FzI3KqdbmWFsRxa0lbySsqplXsAoi6qs0ngcQL2Elz3AkztYSHRhWeg/o8r9EcxcALctMzt9QsDiGy85TtgmoazCeC1X2AMzAUYQCULrAmcAa5p/Cp5YCQL8Bvg6bq9FCiAqQAAAABJRU5ErkJggg==", 20, 15},
        ["MAC10"] = {"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAPCAYAAADUFP50AAAAxUlEQVR4nOXQzyqEARQF8N+MqcmGKAtbJAsZr2Cn7OQZPIEXsbL0CtZewl6xQf4MhYUUOTY3ps/m+9ZOnbp17/nT7SXZxQhTeMU9HrCJU7+YwzYOQJKtJCdph5sk60mWBrphEft46yU5wgyWMY2NOvqo2s+1P8cXdvApyTjJShJJZpM8Va1xkr0k/SRrtf/hAAsTVV5wgfl61DVWcfendMNpmOS9Es+aKZPsN3xGGLb5UlP4iOOab7sIL3FY81UXYWv8B+E3bBmtOuCg9UQAAAAASUVORK5CYII=", 14, 15},
        ["MACHETE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABaklEQVR4nM3WvWpVQRTF8d+9udFYiB9ISOMTCFaKVVCEoJVYSBBLW0srwUdI5TtYxBewEGLjBwYRohK7kEbEGBHBD2JyWRZnRBHheu4Zon8YBjazFjOzz559eklUYh53apm1pV/J5xxeVPIaiwGO4koHj73Yg1dYxAEEW9iHIbYxVeZhiW/9ov+KieLzpcwTJT71m98OFvAAs1jF816SBVzvcJCPZfO7zY4mEfCsl4pF8g/5NBi9Zld5hJc4jEstdOuSXE7yJOOzkWQpyXIHjx/MJpGkn+Rbid1IcnWE7vYAj3ETa5rieoj7mmL6/Be3cbqsvYCTLW7xT1zDG1zEZIm9x+sRupVeupfIHJ7iIE600E3jTBlHOu7hvJLKLmMuyaEO+n6SU0nuJhmO+UnO1MjIpOYprPH6ncUtHGuheYuZGp19W51DwJKmyS230Kzws6H8T3zQ/PIs4rim8+/XZH0TG5osbOId7sF3oU6xy/7UmiwAAAAASUVORK5CYII=", 50, 13},
        ["MAGLITE CLUB"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAAAdUlEQVR4nO3UMQ6CQBCF4W8NpR0mgrUeQ3vCtTwD8XK21JZ2ayF0qzQG3IS/nb94L5OZEGOUATWuaLFPCQU67GYMlaLHAyc8cccR22F+8aHASIiZrGSKzdIBfsVa5N8ocEO5dJAJzqi+CSGTW6+832+DQ0p4ARGeEgUAyWGcAAAAAElFTkSuQmCC", 50, 8},
        ["MATEBA 6"] = {"iVBORw0KGgoAAAANSUhEUgAAABoAAAAPCAYAAAD6Ud/mAAABO0lEQVR4nLXUMWtUQRiF4Wd1A4kWFhLFQAq1sLUMJFbptJOgEEhIZWXrD0lhLaSw0jJtinRWQZAUKQKiEAsLQY2CMSfFzsJlvDery3rgMsz5hu89c5mZXhKV1rBUm0Vb2O+o1bqDh3iGhV4L6AU2RjR5g7eN+SPs4lOZT2O9UX9Sg+ZwgMstzT9gHkf4Ubyp4o3SZh99XMMlvOqAwPcy3viLxrXuSbKR5GuSn/mPGv66+9geI+lQ3/DrnPpHSSSZ6QhynOQwyWqSx0n2W9a8TjJf+nR+/UJcbEkR3MRTvCze+5bkezgdteUhaLWltoOrBkd5uUCOyvjP6iWZNjj/Vxr+O9zF7ZL2M76MAxiqjwcVBJ7jt8GdmoguYKXF35kUoAm6VXknJriTJuh65f3x+E0KNFt5F3U/Q2PrDBP/+u9+r6RCAAAAAElFTkSuQmCC", 26, 15},
        ["MC51SD"] = {"iVBORw0KGgoAAAANSUhEUgAAACwAAAAPCAYAAACfvC2ZAAABiUlEQVR4nM3VP2sVQRQF8N9uFtQuCgkRG0FB/AMBSzuLpLGwMYWF30Bs7C20ljTxC1gpQiAgCCJYpAoShWARiGAEwWdERFGCmpexmAlM1rc8eL59eGCZe++ZuXv27p2ZIoSghgM4ik/4USdHhFsIuFMnqsw+jhJXcRtLeI5VdBoSnxU/7tmQhG7jQ7LP9ZpQpAofw/shvfRf0cWOWLxTeJuTFZ7iyOh1NWIsPfAEkxnXLUIIuyhGLmtAVNjEG8wMKecjse8v4GIWL7Gb+XtFCrXYnv8bL2u5uxW+YxY3MZGIGzg0oOAHWBxwbV9UYpMXuJvF57GAK8kPYvMfxpcUO4jPOG3/adPqfiixgfFa/COWM/8VTuB6Gs/gMi75+8ib1CJK3G/gTmb2Sho74t+Yxpp4Zm7V1rUquMLjhvhc5m+Jm+grzuMnfmVcjtYF98IMppK9jXviVd0LdcETPWcNCWVD/Fpmv9MslhFXuEnwC6wn+2GfHP9FS8ynZwrf+uToiBfPGl6nsTX8AR7pUnTliEKNAAAAAElFTkSuQmCC", 44, 15},
        ["MEKLETH"] = {"iVBORw0KGgoAAAANSUhEUgAAACMAAAAPCAYAAABut3YUAAABxklEQVR4nL2UP0hWURiHn2uiWVFWFhE1aEm05dQqEm4hTQnRkkThIk0tjVGLNNRQQUt/aGsSoyFoKoUPGgJDCqF0MCiiGlLLvqfhOx8ervdePy58/uAH93Le877PeXnPSVQydBA4CRwDOoHdQALcAmajuAToBvqBAaAH2AccAFqBr8AiMAe8DJ7PKgiAWnevelddsFjv1Al1Rl3aIDZLr9UzaktUG5VEHQSuhtO15FLn6x8wA3wEtgFdwNHQzSK9B84Db+POPMmgX1XfqOPqPfWBWlGXU3HP1O70CYMPq+fUp+qvnC4tq1fURAX1c7S4oF5Q9+QUOKT+CLFz6tacuLR3qmPqhxyo5+p+1LPqF/Wmun2DpG3q95Cg0iBI7C3qZfVbBtB8PaijgUSt6uNo888G92W5S51MwSw1urlXnc44zcPQrTJAifooyvW7NjjFukjtfdkBVIFXQAX4BLQDU+G/jNrCrToC/CkiP66+CNSr6h21p2QXijymrqjDWYt71dvq3wAyrfY1AaLuIfW6SnphxLWrW1VvWBvcZoHUZ6czDXN6bZasqpeaDLHO8fN/IvoeBe6XHMrSim/TLuAU0Adc22wQgP8p+KVO5YBdrAAAAABJRU5ErkJggg==", 35, 15},
        ["MG36"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAALCAYAAAA9St7UAAABvElEQVR4nMXUv2/NURjH8dfVplqlpCREVCJ+RcSfYDKIFKPNZOjAYmDpPyAd7CY6iY3E77EJAyFiEZF0EA2DoH5cpE0/hnOa3EjruqW8k5PvOec5zznP5znP+TaSWAL9GMEkrnboO1a/Z5dy8GJ0L9HvHE5hGk+xAo3av44uBHMtfXXNVxzA4br2r9CpkK04huE6Xov9LfY+Rdw839HEN0VsD67gFu7jIqbQW317MIu3iuB+vMIzTPwqsEaS2/iIJ/XQZrVNKxk9hO3Yhi1KVpebaXxQhEzhPcaVm52PbxDrauwzjSQvMKRkZSFOKhls4gKOLk/sbRlTbnZeyCqsVITMduONku2BOkmp653Yjb1YXR178Kiu2VfH7ZhRsnkXG7G+ntnuLzOAHUoF7MJlpWoWpLuq7FLqdVKpx894jpu4tojvaZzHa9yogR7B8ZY1c3XuTpug/5hu5RFSsjWiPLR29OBE7V/CQzzAHnzCmmpLy/7LS5KJJM0km5P4zTaawrska5P01fnBJPeq7UuSl0nOdLDvkpskj5OMd+A0VIWnCvrZvinJhn8RfGtrJOlV3kknDGMUB5VS+u/8ANPhlY/CBHGDAAAAAElFTkSuQmCC", 50, 11},
        ["MG3KWS"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABnUlEQVR4nLXUu2pVURAG4O+cHI05Bg1iEAneUvgAgo3BR7BSsBAEtbDRzlvlA9j6BoKIaGMVJKiFhYqFgqA2WlioEUlMvCZexmJNcGeDes7x+MOw1541M2v++dfejYiQGMB3/cUY3mKhD7UO4sLvNlu4gW14iFncwxPcRlsh2Eo7iyN4hlVYjyH8UIbwOHM+4SQ24ShmMJiEzmMFPlTqfsHqzGtgTfbXxH28Sv/ejHmJ6VzPQyMirmZAFfNZZLiTUeFzHjbeYXy3+KgQHsz311irDGQKoy1FiTqRy1jEHr8mtz33FioFlzBkOYlZRZ2JWtw0ruX+oqL2gDLZNr4p6q6s+AJbsRNfcRcPsFFRcXKJSBVzOJFE3uNY+sdwPNcvcBqbcVORfjd2VepM4jCuY102NIoN2dgZ/UZEHIiIWxFxJSK2RIS/WDMinkfB/ogYj4gdsRwXK7HNSm47IhodnNG19ZK0L5t9VGlquEbk0v9o9k/W7EHEQ/k8p1wTGKnFvOvxgvSM+jfSCWYUAncqvjc4pfy55vD031vrDj8BuOiKGiBTnAEAAAAASUVORK5CYII=", 50, 9},
        ["MG42"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABU0lEQVR4nLXUT4uOURzG8c/d3CMmMU2YbCQLeQNegCI7S9PsrKwtZusNsDR5C9hSLOyU1CSFEpPMSjQaZphJw4zL4pxy9yiexz2+9ev+c851ndN1Or8myVWFW3js/3AMy1jv6TOj7PM32rrAFczhBRawiCV8wjZWMI1d2I+PmMJBHKp1uPqtYw/G8B0P8QYX6/yv1X8e49ionp+xGz+q7kD1Xa7rNziDo3iHD9jCIzRNktO43yOlQVYxuYN+f2IF3zDVKkkMsonzeFu/t3FSORG4piT0EicGtJOd93u4oZxKl7HqOQqnqu4L7ta9HMFTbElyIb/YSPI8yYMkE0n8pZoka0k2k8wk2ZvkVcfv+hAeO1ItzuIm7uC20S7kOeyrCS0o9+Y1jtfx8RFT/2dazPbQX6rPy0pzgInOeN8uNTRtT32UrvKk829eaZHv8ayn/9D8BNb65Uw6yMdEAAAAAElFTkSuQmCC", 50, 8},
        ["MICRO UZI"] = {"iVBORw0KGgoAAAANSUhEUgAAABQAAAAPCAYAAADkmO9VAAABBklEQVR4nKXTvy6EQRQF8N+ysd1qiRAV0SglVB5AoqVXeglPoPMMNLK1klLlT6IjUZIgdIKj+L7Nbta3+xEnuZnJvXPO3DkzI4kyxpLsJzlJ0urLV8VOOU4n6SRpd2uNJErM466cn+ILc6oxgwtMYhErOIdGklUcYXYI+Te4xR7Gm7jBxz/EYAob3Q63EHziBevYVRxnFJ6xXfIecNkVrFrcxho6aPXlN7GMKzzhbJDYHLL7q8Lk1kD+tKy9oVFFHCZIYUM/PrCkuP1H3FezRr+34/TwXrNWEmMjOoSFmvoP1AnW1f9MONTzsoGJWsVf+HJQenidpPlfDyluleIB1/6oP3tUh2/zbeu7PlyXMQAAAABJRU5ErkJggg==", 20, 15},
        ["MJOLNIR"] = {"iVBORw0KGgoAAAANSUhEUgAAAB4AAAAPCAYAAADzun+cAAAAoElEQVR4nMWUPQrCQBBG3w4rglfQ1sIjWNt7EO+Y2iNY2Cp4AiH481kkRZpkmnz4wbLDPtg3W8wWSZhyA9Yj7Bgm6W5CCnBwifcZd4mXGXeJ3wlfBeCQLxK+rcAd+AAtUPs6gELXeZ3Yv/1FMTgLYJN1VmScp6lU4MEfXoykkMTM66QkMeh6zrwSfnWNU0340yVuM+4SnzPuEl/o/oexND/i84psRuKqjAAAAABJRU5ErkJggg==", 30, 15},
        ["MK11"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABkElEQVR4nL3VO2uUURAG4Cd7ySpeIAREUbC2EGz8ERZBKy3SWomFjYU/QLSztLXVQtA/kYiCYuEFYyGKhaKRhYR42W8s5ixslmzcb7PuC8M3MPOe751z5swRESa0axHR3gO/rt3YLd4wOU7i8h74U0ULCzU5l3Adi9iHK2hgDj00EajQxhr240iJ9Upuo/j9zaxKvCr85sB6K/iym6i5iIiahfwvBLaKNWWBv3EA83iLl0OcbziE7iwK+VFEHd4htomfxW9iXZ5CDx38kkU8wy18H+L31223agjq4ik2sCTb41+4i6s4Ktv4T/lGscH2CnyqoWcbRhUS8ihXZX+u4FX5KdzHxeK/xmOcwPLQOu9lz3+eVOC46BfSxRMpeLXY+gjOPE4VP3BHFraF8zg4kNuZst6RaOG03O1qTM7twoGb+CpbpyMn1JmB3HdTUTkOaj5K5yKiisTziFgYij+I7Via1YNZ50E8hnvykm/igtHtR06jjUk3uC7qTK3jeISz+IgPO+Q8lBf/Bd7IKTUT/AXKuom/Yr6sdwAAAABJRU5ErkJggg==", 50, 12},
        ["MORNING STAR"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAAA0UlEQVR4nNXVoUqEQRQF4G90gyDYNv2CweITCIsYzQaLUew+iC/hoxhkMfsARoNBw7KCsIjHMuLwWzQtc+DCPfcMhzMMlylJdIhL3LSDjTUF+S8KhtrPcIFp5QP9XCS4whz3OMZj5QNMcI4ltrFV+wk+qskmPquZkTY+d4KXOn/FO94afdGEW+FpFHjZ+H1jD7s4wFEz38E+HqCk0yVpcIubkqSXFznD6Uh7rvpKkl7qOsk8P1hUfpjEusP9tUqSofazJHdJppUPSZROV+TXP/IFsqFsUJMYmAoAAAAASUVORK5CYII=", 50, 9},
        ["MOSIN NAGANT"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAHCAYAAABKiB6vAAAA/0lEQVR4nNXSTSuEYRTG8d+TYVZsSYqlwdJiyoLvIB/IR1B2ylpJWVCWFkrJTjKL2XgLeRdCdCyeezGMxcyzEP86m+t0zt117iuLCAUoYxyjOMdpQ28MfXjCW9L6MYAeHOESD/ho890S3vH67c1qVsBIBbOYaXewIJuY+kE/w5zcWL2EXoxgOFUFQ+jAFWqooxMTmEy9Voi04xqHOEj7athX/EcayXCTRcQDultc9IwlnMiNLWJVHrEn7GALC7hNWqHstksWEduoftMv5BkexAvWsIINuZmuNPMoz/4x9jRf6/eIiPlo5i4iliNiOiLKEeGvVwm7ydM91n29/L/hE8EM4YhbYPVlAAAAAElFTkSuQmCC", 50, 7},
        ["MP10"] = {"iVBORw0KGgoAAAANSUhEUgAAACEAAAAPCAYAAABqQqYpAAABkElEQVR4nLXUz4vNURgG8M8d94pIkZqdzZRSFrJQfm9MVv4ByUJhISuhSLKwsLCymVKSf2BqNiILI4vZWbixG42NhSipIYzX4ryX63bvnXtuPPV2vue8z3nf9zzf9xwRodImI+JIRLTG2NuxOxGxoTNvqsM2nMcFXMUWNLr8gQk8x9sBMdZiBw7hITQi4vIIyTflpv09SWvwGp+75g+wgMVGRPzAFD7iKfbiWxd5HR7j4JjJB+EDPlGk+46lrHIG53rIXzvkCtzFNM4O4VxSDj/VzEJaWcx9vMA7RYGfivz3cFFR6AZOrFLEKzzJ2DexdRi5iXlcwyJWcBptf/+/biznOIs5PMN25Z9fwZlck4c4gI194iz9/qq8Wq2IeB8FtyLicERsjojd6T+VvpM1cWuv6FF/pJ1RmmsNXuZaO8edNUFrizie45u0XrSVvtlXE3SisoiFTDQ/wL+cnD3690F/jPnsrh/iu559cWzUeLVKdPBliG9Web5735t/rsRq9ijV2PU/bseouK3028oo5F9aKtp9IuT0cQAAAABJRU5ErkJggg==", 33, 15},
        ["MP1911"] = {"iVBORw0KGgoAAAANSUhEUgAAAA0AAAAPCAYAAAA/I0V3AAAA9klEQVR4nI2RPUpDQRRGT54xYGknRCwtkhAsxE4sLCVY6wbcgavIDrKFVCmsFLEQSy3cgIUipjGVEH+OzR2dvLzifXCZmW/mcL+ZaagATaAN3AOPwCvL2gKmwLQZRg84BdaB/QpgQQlaA45Ke0OgA2zGegTcAaCmOvFfM/VAPVYn4Q3S2RwaZ1A/87fDOy9DbXUem29qkUEt9Uu9Tl4Rec+A1ZhfAD/Z3ebAE/D55wS9G10+1J2sS6oNtZHW6fX6Md4CDxWvvPBvKd5hjFeVH1NWtH2JeHsV0ZYKtRvAu7pSByqyaDfAd510OXRZ6z4BCTxHp1r6BZSjGC4UypD2AAAAAElFTkSuQmCC", 13, 15},
        ["MP40"] = {"iVBORw0KGgoAAAANSUhEUgAAACQAAAAPCAYAAACMa21tAAABWUlEQVR4nO3TPWtUURDG8d+udxVjAgFRREEsrCy0CUJSaSHYJq0Qa7+BX8BKSGdtYWGlNhYiFlkwXyDVClokIIJCwCKurzwW9wiLYO6JsmLhH4Yz5zAz95m55/SSHMdb3ZzEObzGp4nzBWzi88TZAF8m9gcxjzfY+kX9ZZxucB23O8ScwjrOVgjfi294gTE+aBvbxYy22a8NznQUmcO1fYoZ4/DE/j7e4yVG6JeYMT6W+jew20vyFEM02rEfKoEzpQsl6SZOVAq6i1lcwjFc0P7WbpLcSaLCHqVlJ8likotJVpMMkqwkuZVkI8koyVLJWSs55yu/ocF2he5ZXCn+UPsIeniivbwPi/3MgbI2VdMpgQ8q4pZxpPhreFVZ/8frfVcrqK+9aF2slnULz2uL/w79ipijuFz8x8j05NQJ2sFV3FM3zT+i5rIFz4pNnZoJ/VX+C+rinxP0HXZCsUHF4lUZAAAAAElFTkSuQmCC", 36, 15},
        ["MP412 REX"] = {"iVBORw0KGgoAAAANSUhEUgAAABwAAAAPCAYAAAD3T6+hAAABJklEQVR4nLWUoU4DQRRFzzataSAYBLJBIEDiqgGFAcEf8AEEAwnB8BVgSfAoBH9AEKiGYBpMHSEIaEJJDmJ3YTtst+xme5IR+2Y2d+59MxOp5NAAOsA2sAYIRJn58Hsac8AGcIM6aRypH8Z8Os6rFWnm7OYY6CbuUlol3BSSJ7gUiE3iHXgsqTfKE+z/48cWcAiclxQk7FtTvctEPlTv1YG6oy4n46Cg94UjLJwGPb5M6mfBus2qgo2M2RXgJAigQ3z8n+Fn7QLwVTrKhMjfe3gB7Afze8AQGAHzwFtSv60qmFrtJn3K0lejqtFNi3QdxuIFuCJ+UepFbau9v2+Cq3W7Sx1uAYvBPh6AXu3uiGPcBdpB/XoWYqngC/AEDIhPI8QncyZ8A6Aa7h5KlouLAAAAAElFTkSuQmCC", 28, 15},
        ["MP5-10"] = {"iVBORw0KGgoAAAANSUhEUgAAAB4AAAAPCAYAAADzun+cAAABXElEQVR4nK3Uu0odURQG4O/oYMSIhYogwdhFooKNTSpJ6wNYWvkAnvo0FiGkT5VnSBmJjdqInZWK2EkM4iUqFl5CRLfF3sIpjmf2QH74WcOstf912bNGCEEFTocQZiqeaeby83MhD7OoYxw92ErvB3Gb2IFXuMM17pvOPyT7Ab24roUQvuAbrl5I2o0VTGUW2Q7/0MCvAvP4mypthS68yxS+wes2/p94i8EC37FUIriOBXHkQ23ifuBP4jHOEk9wqqm5Ao8lSWEzsYFPOMI+LtEnTuVjEl/M0FPgd05gwkyyX8V738Z7sZMDjOUK1UIIubHDYpGdmEuJHnGIc3Gk93iTpVZhB+sh4iSEUGvhX03+/hy9jtx2MSru4xpajWk32YkcsSqJFzGCzy/495KdzBHL/XM94zixFXaS/e8dl2FXvIKsjqt81Tk4EPd6oCyw6qjLsCGu0wAu2gU+Ae6NAO3PKv5YAAAAAElFTkSuQmCC", 30, 15},
        ["MP5"] = {"iVBORw0KGgoAAAANSUhEUgAAACMAAAAPCAYAAABut3YUAAABk0lEQVR4nLXVvWtUQRQF8N/KovELK4X4UViISNSoCIKFihY2WqTxfwhWFmJhZf4ES1v7lKKoEMRGEAxLKhXBQolZwUKj+IHH4s2GRdbd9xZz4PLu3Llz5sy7l5lWEmNgBw6jg8/jEBRcxBnchHaDhSdxofj7MIs7eFFik/jSJ25bGcOnAXw/cQzTvUAryXVsGCKiVYTMjMgbB7/xHJfQbSVZwc7/vEldBN/wCx/bWC8xK/iBvWX8FR+wjG7xO3iilLMnZmoIabCI132xCVweIWY7Tqt6aBmro9T3xPyNd3hY7NGAnIN9YhZwv/iTqlPPYk/h6Y4SsYYkt5OsJrmX5FqSqSRG2I1U+J7kXJLNJT6dZGuS+TJ/tgbXmkmyO8mmJouSdMpmi0lOFTuRZFeZv1XmrzbhbeN97d9Y4SiOFH8ezwbkLJXv8SbE49wbV/r8x//Ieapq/PONmBuWR5KNSWaS3E0yMSRvqZTqUJOeWS+bK2Lm6q5pZbyHsg4O4CXeYr+qbEPR5KFsild4gDfYosal9wdOMvzoLZjPiQAAAABJRU5ErkJggg==", 35, 15},
        ["MP5K"] = {"iVBORw0KGgoAAAANSUhEUgAAABEAAAAPCAYAAAACsSQRAAABTUlEQVR4nI3TsWoVYRAF4O9eV0ijBuIFwUrRIigWKlgYJMTKJvgc1mLpG/gAikUE8waCCCoIFoKogRRBEBFJYadRlCSQHIudq5fFmD2w7M6ZYf5zZvYfJFE4hcN4qz+m8KSpYA53MYPbxR3EcXyquCnuJzYQ/MIZSS4nuZdkN/2wM1G7mWS7wQhXMehpYTjx3WDQYAsvcKJHo2Ws4iIWsYSRJJJcSPKqh5VbVT9XlkZJFsaDfYMVXMIHPMU7HNBubQo3cHTSBmbxfKxkmGS9TruT5Erxs0mmk5yv3KPiT1e8mMRYybx2nfAZX3FSu8ZvWMMOzlbNx8qvw1jJ/eq8neRQcd3nfc1hppsblu/rdcJr/NhjMy9rDvPdxLBknsNNPNijATyr97VuYpC/d2c/HMEXbOKY9v/6o6QvNvAY0101zb+q/4OH2kv6fZL8DULeHvZfhuAuAAAAAElFTkSuQmCC", 17, 15},
        ["MP5SD"] = {"iVBORw0KGgoAAAANSUhEUgAAACkAAAAPCAYAAAB5lebdAAABlElEQVR4nLXWPWsUURTG8d/EBCQaBDVELIKkDCkExVIUA4pfwE6wsPQTWFj5EawsRLC2UgxuFFEbbW0SLISoGNOIL+RFF4/FvcJs2Mnu3k3+cJm5c84855mZew9TRYQC9uEMPuFjiUCNBVzFWlPC6ABiJ3EFFdq4idd4lOMTOIDVPB/DCLawgc1tem3pYY/hFJ40Fa4i4nZO3ok5XOojr5QHeNUQiyoiVjG1R8V3hVF8tXcmH0qf/D9/G+YbWKld38J63WTjgs208SaPPzXxGzjY494F3O2R05Mmk0tYRAsv8GNbfATXJZMtvMQyjksPchrXMDmswbrJNTzLBRf1bivncDSf38EXvJU6wHt8zibndsOkiDgUEVVEGGDci8RmRMxHxGxEzETEiRyfyfF3A+p2HVVBMx+XeuEEnuNCl5wK37Efh/FriPfYsdP65bxkkLQ0uhFS3xvD2YIaHZSYfIxZ3MLTHfJa+Xi5oEYHJZ+7X6bxAd+kXf+7VKjkTfbLitSajuDiMEKD/GCUcF9anz+HEfkHQgfUlgZnscIAAAAASUVORK5CYII=", 41, 15},
        ["MP7"] = {"iVBORw0KGgoAAAANSUhEUgAAABwAAAAPCAYAAAD3T6+hAAABNElEQVR4nL3UT0uUURgF8J/jtAoiFKx14sJFgrgewm8QuIr2QR9AoX1LdwotRfDrOAtRDCpoEyiCRJRQM3pavHdkGKZ3/gRz4OFw33Of53DPe7lzSYyBh3iBBezgHTq4RQN3Q7iFU5zj7H5SkmdJ5pOoqVf5P2z2ZjXxBfv4VXPClXFiqEEL12jOpcr0KS5rGl7jaMj3LoKfeKCKGebxCL9xgzb20FWOvDgi0qUkb0q9T3LXF9dh2bPWt3+laFtl3WOSdJI0RhgOVrsM/J7kbZKNJMt9+vOivxzsbeJKdasmwUesq27gh0kaG7iY0Izqv9Xhqs5wbwrDUbjGLr4NCk0cTDHwc+GTf+h/sD1MaExhBl8LH0/aOK3hj8KPZ2XYeySezMrwU+HVWRleFtMb1ZM2Nv4CumVMM5mtS2kAAAAASUVORK5CYII=", 28, 15},
        ["MSG90"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABNElEQVR4nL3UzSpFURQH8N/RIeVSRDEzMFEGxooHYGbmBUw9gJkpA0/gNXwUSgzExMxEknwNhOujENtgb8WV2z23y79W+5y11n/1X2vtdhZCUADtGMcyykWIBTGESczVSshqaKQN8xhDEwZxjXO8fMlrRheuatcLAm4rfCUMYBSHtRTJQgiLiTTxS04ZHQXFNQqrOKnwtYgD7Ejf1wi5OMGZKsXqaeIm2See8YR3casveEyxd7ym+Nf8B6zh4JdG2tP/PeS4qyJoHbM4wlvyNWEf/ThDlmLP4maJ12GkSt2GI0cfLtIpCdrFBpZwWsHpRK84gGF0i1O9xAqOsf3Hun8gF9e0gB5R/I7va67EFFqxJTaVpfyyf97CN4QQitpeiJiug/tnlhfsOxdfkhI2Gz/W+vEBSIjfes9qxc0AAAAASUVORK5CYII=", 50, 9},
        ["NIGHTSTICK"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAAAxUlEQVR4nM2WMQoCMRBFX9a1Uqy00gt4EhuvaW+hF7GwtBREm0UUkbhjkYBBWHQnu8YHgT8hE/6HhMSICDWZAwvgCsyATd0N2iBX9ByAgR+7Zu3oyRQ9w0CPmjISiybIuEInRROkH+heU0Zi0QQxkf2toDFyqdBJ0QTZV+ik5MAEKHwtQOnnLe4YZcDD13fgFPQff+b0A0ZEtsD0i7UWOANdXhe+wAVPzcqIiAU6qZ1EcsuBJe6VFj/AHal3bXHfkn+jBNZPkrIq9nsKo+oAAAAASUVORK5CYII=", 50, 12},
        ["NOOBSLAYER"] = {"iVBORw0KGgoAAAANSUhEUgAAACoAAAAPCAYAAACSol3eAAABwUlEQVR4nM3VTYiOYRQG4OvDYDZCjNIwM0nK/2YWtiNZSTaUtVgo2bCgJAtbViwRs0HZizJslJ9SjI3IX/ktKYqY2+J5/STfV+/rS+469XQ65zx393vu520l8R+jH8O4MKlB8wLM6C6fttiM9dCE6A68xknM7x6nP2IrRmBKg+ZxBLvxvsrNrM4Tf8/tB5ZitSLmQF1FV+MBpuFAdb6FmziFtZiL7VXNd8yqeU8/RjEZLYy0aprpOK5iHz5iHgba1N7GJTzFIRzG4za1LQxhZRVL0KMIMR1jrSS7sA578aIDyVU4XxF8h2X4hF580WyN2uGV4oEj1ewFrXTnfdqCt5jdhVnjuKeofE0RaGcryQnlCdiDlx0GrFQ+3yR8UAz0HZ8xtQskKUZ9rih6TDHo3Lo7ehpXsEnZoykYbFN7F2PKju7HUTzrMLsfKxRBhhRF7ys7el2SOrE2yXAKziR5luR+kidJzibZkGQwye4kvb/09dW8Z1GS8fzEtrpEJdmYZCLJwiQ9VW5OkskNZnWK5b8QHWryZ1quOPEg+qrcG3xtMKsT7uIOHuJRkyflIi7jhu6T+x2jWAx1zfSv0Y81OPcNyo9lXlsJCwsAAAAASUVORK5CYII=", 42, 15},
        ["NORDIC WAR AXE"] = {"iVBORw0KGgoAAAANSUhEUgAAACcAAAAPCAYAAABnXNZuAAABDUlEQVR4nMXUvUoDURCG4ScSQcWfKoK1io0WImgpeBEWegneg4XXYSVaehGCYGdhWhFBbEQNRkULYSw2IUuiuxjMycDCsPN9h3fP7EwlIiSOE9xjH59FwsoQ4GAT29grEo2kYemJM4xiskg0LDhoYLpIMKy2TqGOBXz9Jqomw8mAahjHAT4UgJHB1XHTymv+v9WzrXPHut6/lRmrOMQ1JjAn+7KfotEHWDUHN4dFLLdqd6XuiEj5bEUndsr0qad1LZfPl6oT3tp6RDznbu4xIpaKPClWyZFsZWzoHbZ3nOJCNph1NNvFQcOt4vKPnlsZ5PGg/7ndPn1PeBj0En7FOVYw01Vr6rTyKpe/tAXfHswkRn5JJ08AAAAASUVORK5CYII=", 39, 15},
        ["OBREZ"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABd0lEQVR4nLXVz0tUURQH8M+LoR8LS/FHRW3btzQEcScIupPaFq2ittEf0Lply1qq5NJFbRRBq4WKhWa2iqYQbAqSSErzurh3aJKZ3mhvvnDg3XfOvd/v97zLeVkIwRHQj7M169dYz9kzhIs169/YqlO3m3J3sY0zuIT2lF/HA3SkeIdH2SGN3EEfrh54v4W9RLzdYO8FnDgMWQ4CMuxgo1kj53EbN3CuQDFFYBX3SzlFXbiHWzhVIPkejhV0Vhnj9YycxjBGMYiTBRHW4n9MlPEWaykWoGqkDSNaK75Z/EIlxXt/BK+JBuoNCCVxmjxGTw5B9Tp8xTcsid0ZwOUmRQaMYSIJbhOHQ1X4ZiOhechCCBV0NshXEumT9DyLa2IDnqaaAcz8g+M7XmIOU1g8itA8lPDB30Z2MC2KnxS7X8VDvMJNUfxP/DhwZhnP8QLzWBb/DS1FFkLowXXxs3/EM3xpUN+LK/gsXrVddOM43mAFn1qsuS72AT7eZ3QJztt/AAAAAElFTkSuQmCC", 50, 10},
        ["P90"] = {"iVBORw0KGgoAAAANSUhEUgAAACYAAAAPCAYAAACInr1QAAABvElEQVR4nM3WTUtXURAG8N/fBGlRWZC9kiG9Y4sWQUH7Fq0K2kYEEbVtWW0k/AJFH6CgTUS0DKJtUIEISWBGGpHYohKyTejT4h7rclHRzGpgOOfMPDPzcO7cuVcSK6CdSY4vAT+YZG3d1m5l5BTOoQutmj1lbdo2YB+ezRpXitg33MZV7FlkzEl/gdgV9OIahrGr6O6im+aI6a0f2tHzh0mtwt6yH8QQXjQwa1RE9+MyOnGgDmgliX8rY+jGOLbOGn+H2AwmF/C3YV3Zf15Evln8Z1VfTmPof7ixpkxh5E80/3c8wgdVnxybA/MEo6o3b/08eZ6jD6sxI8uT+0m6GsPyegPzJUlH8Z1OMl3zfUoykGQmyWg9T9syb+sWPjZsY43zDLaX/T1cqPn6cQgDfg1fVI03hcdFF9OsdTmrGg/Keh43a/7hUnAEO4vtVc3/tqzTzcStJH14X85bVM+4KW/wDpdwokYGPpUC27C5Zp/AUdzFETzFHVzEQdVNbizx+1Qz9eXP6CV8aGe1O0l/kokFeu9rksNJWkkm58E8XKjOcv4gOpI8aBR7neRGkp6C2TEHofEkZwrpefP/AOBlSTxrU6/FAAAAAElFTkSuQmCC", 38, 15},
        ["PP-19 BIZON"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAAB7klEQVR4nL3VvWuUQRAG8N9dLipR9DQWgjGSWkUkECWIIGiRRktBxNJWsfYPsPJPsAj2BkSxUAs/UdFEECMookGFiBiMwc/kxmL3zCV4l+Ry+sCw+87uzszzzsxuISK0CGvxHe2YRhsqea2YddW1IgIl9OAQXmIfTuPHAr62YBgbq4pSCwgUcA4n83y5GJBIzkcHypjEBK7ULhZb4PgqTmkNCVKGOnENL/Auz39iEG+xwVyy5UJEDGG8CYclKcUHm4+5LioYkUqnHe+xHaNZ14UZPMEKRCEinmNoCU7K2Ik9LQq6iik8wq8Gey5hBz7hjdRvHVhXiIhbUpMtpus34wh6cbTOnml8kUphHN3SRfBZ+tOddc6N5bMLoTPb65UaHqk8VmE/bsw70IZt2Iv+PHbhKe7jDC5jDW6a7ZG7OC7V8TAuZvsT2NogwO5FkKhFaf7Ht0xiNfpqAu/PZB7gNi7kICf/YvQ6DuT5lJT2aoafZTKDeIxdSwy4HuZcLoWIeIWP2cEH3KmREYtL9z2pZ8akLK40+4ZU8FWq/WGNs7KY4Mt53oeHf1Yi4nxEHIuInojQhGyKiJlIOLvA3oEmfdRKOSLWR0SxVr9coyLiRMxidwvsNSWteBAP53F8Tqr/M1pBZBSvpT6oNN767/AbCJKhK/ppxRkAAAAASUVORK5CYII=", 50, 13},
        ["PPK12"] = {"iVBORw0KGgoAAAANSUhEUgAAACkAAAAPCAYAAAB5lebdAAAB6UlEQVR4nL3WTYhOURgH8N87mBkkyqTUmKKUyMeeElmxwUaxUBZkpWZnoVgoH2VlyYYoGytZisWsLEQ+8lVSzKRZIFNGM/O3uGeaG6+Zeedt/Ot0zzn3ec75n//znOfeRhItohsX8AOf8A4NBBM1u47ybJT5idJvYAl68B5jxe4JXmMfntU3XNiExCJcrY0/4nxtvBmnWjrW7PAWvc1eLFSd5ptKkQmM4FjNZhh9pb8cG+aBIHzAepxRRWgUP/GykWQM1/C1kPyOtTXn0eIE/Vg1TyQHVKm0EYvL3DCGGklGsHQa5y4cxAlsw2Psqb2/hE7cVSlxvckaz3C5EAkWmMrjyfZZJUgvxku/G4OSjCTRpK1PcjnJlyQPkhxK0plkUZKfmcLRJPuKz8ok4/kbp/+xx6zanxenE/txHFtwAzvwpmazvag7GaKHRZl1WFH8J8N2VlUFbk4TqZmR5FeSk0kuJhlK8ijJkSRd/zjZxZpCV6ZRYHXNrqcdJTtK7Peqbvpu7MStMt8Mu2r9p9Ocf1CV+LC1XSVbbQeS3Ct5uWYG2/tFyXPtKDlnxyTLZmHTX0gOtEOykdY/i61gE56r6m+fqXrbEjpmNmkLL1Q1sgOH57rIfJNkqvwcnesC/4PkbbzCHc1/aGbEbzIYXZKpnhe5AAAAAElFTkSuQmCC", 41, 15},
        ["PPSH-41"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB5ElEQVR4nL3WO2sUYRQG4GfiGoxGo0JQhAhKCoVsRETBRlQQLATBxkos7K0sLP0PIv4BRSyEgIhWYqWNl2BAUmgUQSGSRI3XmGzG4nxhQ9xdNpOJLwwDc+a833nPbSbL89wqYAdqGF8NcpzHBZzET6isgOwALoqg4TmeYgCnhZAhjLbg2IAM35d59jF0CkETmM8KViTDLZwt4twA8+jAJF5gLQ7iSbIfFkn6g314j8/oxyUcb1WRzSK7XzGy6PlOXMOpkkQQIog2GcMafErBwhSmRZUn8FuIGscgRitYh70p6AFU070vkeRJyBtsw350FQj2JfaIloBhnMGXRe/MJDHLRgU/1DPSCJlQPdjA9k4I3IRuzGEjPibOTpGIbmwXLdGffO/gbZGgG6GitYhmuIErQgQcQi/uiar1JFst2bdiFy6rCxkrFHETLBUxL/pvroXPVZxTFwHrxSztFpuoS10E0ePP0rWAo4UiboKlw14TM7OASdzGQ9EyvbjegOdRm+ctXhon2vRpC1n+7/79hbu4iQdiO5SFPjEnMCtmpxT+LM/zWbwW2bovhnC6DPImmMIWsQR68K0M0orIykwZZG1iBEfENqzicRmkHf6vCOJ7soBqWaQr+dcqimHx//UKH8oi/Qu3jXF9n30YrwAAAABJRU5ErkJggg==", 50, 14},
        ["RAILGUN"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAABuklEQVR4nM3Wv49MURQH8M+bnRlCiMJS+5EoRYhCQ2IVJCgkCqWOQiT+Aoot+A/0Go1OFAphFWQ3oRCFEIUoJDIbsmTMmqN4d7IvmzdvJm9ms77JyTv33Pu959x7T855IsIU5faU9xsl1wZ603DsxfaKefiVpI0+ZnEOr9FLa1r4m6SVbD000MRq4rYRaW4mSZGX4U+B18dpfMJSFhGPCw7KDtJOAW4ZcpifeJX0rSmAlREXAPtwoDBeQqdi/QlsS3oXL5KvU7ibRcQznBzD8f+MSw283+wopoEGvm92ENNAE4dqcpexqya3j881uWVYaeJYTfI7fF1na+GstcLQlVc1eIK3Sf+CBzX9liMiLkfEjYiYi4jlyHEzIq5ENc4Pqe3XC2uuFuxnNrKnNPBQXsaKWMRCzbspltCDOJqkqmdNjMHmvXX23fLU6RreP47jd4n9Vvrex72k7zS6uU6G9DQXI+JjRKymlHgTETMRMV+RWv0kZehExJ7C01+IiGyjUwue4w5+pPFhvJR3zWHIKubm8S3p++W/EVH7tsfAILU68nT6YO0wAzyt4Gc4ovxQc+m7A48miHEs/AM96SZT05tTrgAAAABJRU5ErkJggg==", 50, 14},
        ["REAPER"] = {"iVBORw0KGgoAAAANSUhEUgAAACAAAAAPCAYAAACFgM0XAAABFElEQVR4nMXVwSpEURzH8c+dJhFZKJ5ArJCFQrZ4CVkoD+Il7Cw8gb0FO1mwUUQNJWWaMSGhJMZiztGkE1cy91f/zu3+zv9/vud/b+dkzWbTH7WMK+zmnD+IcXSjVMYMen9IauAI7wmvgqlvALowiwXM4QH7KGGyHIyeMDnDNC5RRWzPAMZwge0Q1eAdY+XLoiOh7nzI3Qs5a3jBIpZwnSU+wSrOsZPYzXBb4SE8ox+jOMET+kJXImgtUWcjQG+WE2Y9FE+pEmK97V2m1ak45tEnVClhnuEuZyFti/7mb76JD6kOnIb4T9XD+JrqQCcUARpFATxGkKIAogoHqBUJ8IaDIgEOcV8kwBakjuJOaELrBr39ADheRQQ3V2w2AAAAAElFTkSuQmCC", 32, 15},
        ["REDHAWK 44"] = {"iVBORw0KGgoAAAANSUhEUgAAAB0AAAAPCAYAAAAYjcSfAAABSUlEQVR4nLWTu0pDQRCGvxyDN7QIeEE7BcFCCWplpeALWKnPYGFjIYLv4ANYio1a2Vn7CCraiCBEgoUekBgv0d/i7JF1sxtMzPlh2LMzc+bbnWFzkghoCxg33+fAuxWLgZvQjwEVgR3gIOeBrgFVYBfoBHqtmIA+429ZPmgXcAWMAffAqBX7JLlxT4OasTlcWJJcK0p6VqI3/daLpJLqVZG0J2nGU6/O7M26pEdJNavYnVM8lnQh6VhSwbLuv8BSy1uXXgEKnlY/WftXk1Ny/E0pMuscsOCJDwH9QNnABkjmWW0VCPy099Azp5qkVUmbJmdD0kQzbWw00xFnjqlOTNK8pEFJS+0ASiICZoEOpwFnwDawCHwBk8D1v1pqKQ9Me/ynwGW7IK6iAPQoK2AKnXJ8HyRPIlPosON7ACpZQ5eBfQMDuM0SCPANMWCr7GWj+gYAAAAASUVORK5CYII=", 29, 15},
        ["REMINGTON 700"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAALCAYAAAA9St7UAAABaElEQVR4nMXVO0sdYRDG8d/RLYQUIl4SG8EgCGr8BFokpAgWImIhBO3UKpBvIWJpk5DeQgSLJARioQQLSxuxEAtFQVEUjleI8Vi8Kyzrfc8x/mGKYWbefWZn3t1coVBQQlqwjC78KuXB9xFlrPuEzzjFEebxD3/j+Ad0oAz1aEVj7MMbbGV89o1kbaQOrxN+s9DIIQ7QgxfIoRLlqfoyJSaXcbVq0YBz9KFGmMYUCoLQEaGxH8LkGuPaPH7ipBjhabI2Uocv6Hb9bT8LydWqEna7JrZazGA2kdOLMTT9L4EJhvHttmCEr8K+X1mSTrSjGhPofxqND+LO+xzhJd7fEm/DJN4J6wRLGMJHTOMM43ibqh3ABjYziE5zgfW7EiKs3nNIcgqLwj/iABVCE3lhBdONlOPPI8QWRYTjB+bOCZf7KPYXErFDrKTy14qT9jgi4dOYxz5+4zv2sINdvMIgRuPcm9iO7dm4BPG6ST7TpSsKAAAAAElFTkSuQmCC", 50, 11},
        ["REMINGTON 870"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABNklEQVR4nM3SPUucURAF4GfZVzDIIolbqY2JlZYhhYVELaxsAulCynT5CalDGmv/ioWVSBoRC7Gw0JCQRfwKIQSyosmkeEdYYVk3umoODPfcmbncMx+ViHADVDGD99jDGproy/gZPmesV3iACRSo4Q3eVq5RSIE5vMQL1Hso8tooOsQGMJT8S57zWMLj2xTVBgf4mvxiIpv4k76PBZ7jYYqcUoqv5wPYwTQW8Tp951jFM2zjJyZxivUWATX8wlEbcQsY/odCNpJX88/vuFinXRFxEhFb0Rk/WngjIqYjQkTMRsTT5PMRMZa8GxvvMq8/IkavyqtExDYGMdJFZ1bwCod5f6Sc4LlyKu06fycosI8nyjFVOuR+wDv8bvF9S7t3FGgo9+0TlvM8wbGyw0eZ13S5iP8KfwHBduFeUw7c1QAAAABJRU5ErkJggg==", 50, 8},
        ["RITUAL SICKLE"] = {"iVBORw0KGgoAAAANSUhEUgAAABsAAAAPCAYAAAAVk7TYAAABT0lEQVR4nJ2UsStFYRiHn8tJhDAgg2xSShbJYpTJf2FhQcokm7/AJovZIGVCGe7AplgYDIrFVZe6pHQfw3lvJHG/+9bX13f6Pf3e7/eec1BpcBXUOXVPvTevd/VC3VQHfzKNGg2pRb+qqn7EXqs3dS2aQqWgklgjwCnQD7wAd0ARuAVagUlgDBgM/Q4wDyTfqF29/hbZgtr3i25KPVIroV1pJMaNgEvq0j/abvU0oq2o/SlGmfoYZrtqUx3MpPoUzHqK2XRAz+pMAncY3FkGTAPDQAEw9lq1AO/AJbAcz8rAVcILdQLMAqMZsA/0JMBV4DlB/xRMRwZMAEP8fbMbYDs6bAM6gUqdZr1AE1BOmdlUZP+qdiVwB8EVs4Q4zoEH8pnVG+M4+UcOcJxiViWf734CMwD0kTe3lWIGsAq8JeibY18ESo3+iOtdHep27fwJbGPXE3snskwAAAAASUVORK5CYII=", 27, 15},
        ["RPK"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABz0lEQVR4nM2Vv2sUURSFv010N4tBjFFYVDbRIiKmF7QyCiaCf4ONoNhYWgVFsNLCQjSFNtYiiHYGIiEmjYiFqSKYQrGwUFl/JGb1s5gnPofZzaxm1AOXB/fc++49c2BeSaUD1IHRnHV1oAYsAZ+ArohfBiZDHuAF8LiTRQK2AM+A2roOmurALLD9NwbOAx+BXcBTYD+wDXge+CFgHJjJ6O0GqsCHVH4jcAS4DvSVUo7UgAF+ftEBYBDYGYaVO1j+G7+6EGMJeBBOwr1VYDGjtgz0A69T+T3ACrAXmC6pt4HhsHRPm8WWw1kBJLH0FbCbROgP3AcehpqjJC4uAg2gCWwF3gOngS9t5q2GMnALuAmAOmc2Guoj9bJ6WK2o5wL3VR1Su9QJdT7qu6GySnSrG3LU5Q7UaxkiLoYl0w0nA39W7QuxWd0RxKm+UatruWReIadSIl6qvS0a7qlNtT+Dm4ruuPQvhOxT76pn1GG11KK4V/2sTrfgD0SuNNVDf1tI3qiox9UTbWquRK401NH/UUie6FFnIjEr6nl1fdFC0u/IWmATcAc4GOWeACMkv91C0OrB+hO8A8aAqyRvCcACBYoACnEkxghwATgGvC1y0Hf7SvNx2X9kUQAAAABJRU5ErkJggg==", 50, 13},
        ["RPK12"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABxUlEQVR4nMXVsW/NURQH8M+vXpValKRSiVQM5E2NxWQTmyYSiVFMBoO/AoM/wCxMJGxiYCCihKliEINIeASJIvqq0vYY7q3ePO3r7yVPfZOT37nn3HvuOfd77u9WEaEGKtzCIh5iCZvyd9lf2qqs78KHvG4Age94l/WPaON1nSQKXMID3F42NHABmzHeMbmF+ayP4HjWT/S4aSc+5STgB/biqFRsiQpbMFfYhjGEmSIvWKgi4j3GOoIsZpktgm6vkeQvqfhB6cRJTJSMtDGdYw5hKz7j2yqFHMDLwtbM3x25wK94i+cNid4xPMZF7M6LX+BLXjiKN3nTm7iBu5jKm1USg3uKAtZDE/ukVlzyNyMkRn4W4/3YicvZPvvHExF3ImImIo5FhDVkJCLmI+FMRIxn2+mIuBcrmOgSo1OqLHXnd5UG7meaWl1Ob1K6R21cs9K3V6S+PZLHJ6W2qYO6zNWMVq/isxExFxFPV/GNFmy1ImKwX6fci/QyeVtENNfwXS/a69z/KKSKeu/IepjAM+lv1cZBvOpH4LoY6FOcaZzP+jCuSm/UhqFfjJASf4RD0kWeVLy8/xr9YgQWcApPcNgGFgG/Acl2LyU01kx/AAAAAElFTkSuQmCC", 50, 12},
        ["RPK74"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB3ElEQVR4nL3WzYvNYRQH8M+dYbwNGSHvbwuyYJSNxFqKlSwtFGvZSbb+ALKRjWRnhSkWMmSEpCQvCxuTJQsamSYvX4vfs/g17nXv5ZpvnZ7Tc87395zzO+d5aSTRBTbgMPra+K3AUqzCJwxO40zgOr7W5kbxsZtgsBJPsWZWF6TNuFfI3eKVKuj1eIH9WIy3xT5cxmtNuP2Yhy/T5tfgIK5iqFGryADWYl2RDTV9Y5F2lagjaLSwfcObMsJszMe7Jr4DWOT3aq0o8SzHaCPJbWxT/elWC8MkfmIBfuAZxrEdW2p+NzFS9H14VPwm8B3L8BmnMPWH9dphCJdwESR5mOYYT3IjyekkO5P0JzlTbFNJNiVpJDmf5GmNdyWJNtKXZLADv45FkgtNkjjZgnCi2I8lGShzg0lW17jvS4I9C7LTRI7XgviR5HGSOS0Id5NMJlnYxPay9p3hmU6kD09wAYdK/+5q0btLsBdjpd+nY6SmH/mH3v8r1E+tduhXJTIPt5rYt+J10T+ojtrJfw2wY/S4xA9q7XV2Jlurm4p0gj24rzrfv2O36ub97+jmgusEYzhX9Fm4jLk9XqMpel0Rqj30XPWkmcIB3On1ItPR64pQbfCjqkfgDjOQBPwCKfbHJlUgKu0AAAAASUVORK5CYII=", 50, 14},
        ["SA58 SPR"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABcElEQVR4nM3UsUtWYRQG8N+nF00RBYMiEqQlGhyanBqE/oKgIRpbm42GxmhxaW10yHBz6y8ImqNSQSlycBBKw9AvsePwvh9e3i/8vJLSAy/33HvPed7zPOe+txURGmASD/ALP2vPOySt2n0LK9jBwSn5R/AYb7HUpLGqFk9hsHi/ju28wRTmcKfJBjXs4AeGJKG/MSwZMpqvNyQDJvChB98QLuU4KixkwhmMFclfcsFVx26fFX159eNPjjtGVgX/OF714OsIaWO/yk22dYsgOQSHWMVe3nASl4vctu6J3sI13OzRVMmzJE3w9IiIlxGxEX/HWkQ8iYgrEaG2rtdy5iPibkTci4jlon60qDu3VWFDOgsTWdv3mjO3sVto78fzHL/Di1yzj2k8beTkP0KFTWn029Ih3JNEvNctYgCvcV9q/iG+XVCvJ6LCIt44/oWehDF8lUQ/8p+IIAk5bJC/hVk8k6ZW4gAf8RmfpM/tQnAEhj3qWWVxduQAAAAASUVORK5CYII=", 50, 9},
        ["SAIGA-12"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABfElEQVR4nMXUv2oUURTH8c+EYOJKrGysUuUFLBMtLERFrLS19gESS3uFPIJgqQ8QCEnURrBQQRD/gBBJNhERhYiiJgZyLO4I4+7szmRnwC9c7rl3fnfOOTP3nCwiNOAo5g55ZgrzeIPn2MbvIe+/gO/YxD18LRNmEXEJexXO9/Ekn/8yh7uYqRV+O5zCi7IHWdT/JV3cwXucxE0cbyW8agKvlX/wCXQOk8j/5hkelexPoDPesrNveIVMut/ruNKj2cU17Bhw3wfwSaqnUuokEvgoFVu3MK/gAaYL2jVcze3p3PECbhU0k3iHl7XCr0kWEXvYKgRZHN382aBm8Binc/u2lNwX/MABNnAEH3CicO4GFlvMg4iYiggjjGMRsRuJXxHRGaK9H/+yOqLPgWNM6tGjcE4qNFIR/hyiXetZn5FqqDXGGpy9WLCXK7SrPetJnG3gu48miZwv2CsV2i287dm73sB3H03a72UpmVmp7VaxhM94KHW7pw189/EHRhD21effCJUAAAAASUVORK5CYII=", 50, 12},
        ["SAIGA-12U"] = {"iVBORw0KGgoAAAANSUhEUgAAACUAAAAPCAYAAABjqQZTAAABX0lEQVR4nMXSu2tUURTF4e9egpo0ioiCqQwWlhYWtr5AqzSpBRvLFCnzN6RLZyeIYmOlkjQ2NgEVsdFYSEBiIahE8gB1cFl4xOt4YcaZkVmwOa+9Ob+9zqmSKNqPKYPrBjbxEht4g60eNccxiw/YwxO8lqRKcjXJZsavx0nUWMRNTA/h0ij0zE+HL1ZJ3uPomIH+UJX8/lRjVgd3cGDiH4q+YBuH0Fa3hpWSszMA1C7uoiPJfJKnLZ+uk+RsksNJTiS5kkSSW0m+tuSvlvOh49fkWssl95PMNpJnyjid5GFL/l6SyVFA1cW6usvK61jAK8yUqMrZO6y22D+J8wM8298qdLcbHX9LcrBHN6danEpxcCRO1bjU4FzD5x69rONtY/0R9/CgODaUJnAGRxp7K33WLmEfHuEFvg8L04S63LXXL9TyqCC6VeNCY/0Jz//XZf2qSnIacziHkzg2ViL8ABDnNNdpL/l3AAAAAElFTkSuQmCC", 37, 15},
        ["SAWED OFF"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAABUElEQVR4nMXUsUocURTG8d/sJmgSCdjYqNgFwS5WEdKIYCGSerGxFfIOlnmAhLRrZSBYiKUPIEJCsBdhwWZ3s8JqCNkIyaS4MzBZTYaddZ0/XIY5994z3zf33BPFcawA01jGKtbwFJUiie6KBwOs3RbET2F+NHKKk2dkDhvCn1/Ek5ErGowz7PFvI4/xBq8NVzIxoiH2p3xDC18zo4l9fOZ2I0uo41lO8iZOko9kucRvdAUj6XPxP7m+o52I7SRCW0msg16OlhtGtvAW1b54D5/wKBnv8REP8SMRWypRpms9xxHGMvM/cYh3aOCXUGqnmTWzOB+10DzSE5nAB3+b6GAdX3AtlFwDF0LnamMymSud9ETq2Oybe4WDzPs4ZoTLWxHq/kq4K6UTxXFcw25f/BgvStBTmAoWhA6RZef+pQxHWlpVrKCGl0Kr7JYna3D+AF43ThjDJPReAAAAAElFTkSuQmCC", 50, 12},
        ["SCAR HAMR"] = {"iVBORw0KGgoAAAANSUhEUgAAADAAAAAPCAYAAACiLkz/AAABwUlEQVR4nLXWu2tUQRTH8U/i3WwiRMEougrWYiHYSFCxUCsrCyEW+hdY+ehFwUoUtLGzUiGIYKMQ0qS3igYUtQyCSrYJPsDIsZir3r3srvfuul8YmJkz58xv3iMiDJjORkRzCP9e6Xmd9uMG5xh2DuHfi591Gmc1g2/FKezFUbzANWzUjNONKSxgtY7TWETM5k5fCvVbcByHsQs70JJmvPkfxPbiEc7gBq5XcchwCZvwDuewZ1TqKjCDCZzH6y72fXiT579jMsMnXBixsDa2VWjXwGPpHJzsYj+Np3n+Gz7/HsAo+YhbGM877UUDz/yd4W5cwXqxItO59+EiVjCJ3X2CNaW9Op2XA1+lw1i83e7gZp84dVgvV2TYXCgv5R1GxYBzOIJXuIsH0i31pNBmagChlRnH/jy/gcuqiz+IQ3n+PV5KK1beJstDauxPRKxE4l6NF3AiIpZzv3ZENAq2VnSyMILX+k/KcF+6kh7WGPdVHJBWaw4/CrbyuZmVbqD24NPcmwy3a/o0JZGreIvFkv1EqTwtDXZpAH3/ZCyi6pbvygzWSnUtfCiU17B9mE76UfcvVKYsns7P2CLmh+yjL78Afadxcy8/WcUAAAAASUVORK5CYII=", 48, 15},
        ["SCAR PDW"] = {"iVBORw0KGgoAAAANSUhEUgAAACEAAAAPCAYAAABqQqYpAAABlklEQVR4nLXVu2tVQRAG8N+VaLgIEREVCx8xiq0g9ilSWYqWYiUINpJK8F8QxFYE0VYsBbUJEhQLwVgJAb2FYBExRMVXfHwW95xkvSbk3AN+MOzuzM63c2Z29kiihZxp6VfLxSRT9XqTdjjd0q/Ez3oy0tBhD6ZwCF9wAg9wt8XhixhFb0WTPr4lWazkUpWmg/k/eJtkNslMkgNJVjIxWgmcwjg6eFaNNXZiX4uvL9HFbhzGWbxYqxxdbK/mvUI/hmMtDn2DvcX6Nx5hDltxvJMkxYavOI/ba5BtxvKQATzGFeyvuOsgbpSbyiC+4ykm1yEcwU3M4gimC9IOPulna9Dn14ahVpdlIcnEEH2+q7hol5Ocq/T3Cv2PJNua8NXvxB282jDiVVyoxs9YwnP9y7xU7OnhQyO2KuprQ2ThaJLlyu/6gG26yMRSU876PdjR0GFLkrnqkPkkYwP2k/kb403L8RrvG5ZhAvNYwFV8HLA/Qdltk03L0UY6Sbrr2F4WmbjVhK/pv+Of2K32/SAe4h1mcL8J2R+bdL9CKghLtgAAAABJRU5ErkJggg==", 33, 15},
        ["SCAR SSR"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABYUlEQVR4nMXUPWhVQRAF4O89ryIEg+KDCApiY6eNYmNhChtTiGIhCKK1tZ2lpEgXxELETmwtxcJSsLEMgvaCPwHjT0TQ5FjcDVzk5b57JdEDwy675+zs7MyOJHra9b/Q9LH5JKO+ukp37MIULmMJr7Be9oZbOD+EQY97gUGSo/iBWy28YA+u9HXQgk94joeNtRuYxSU87nNYhUWca+G8xwXc7nNwB+zDafUjbuBIGa/i1Ca6dXzGbhzAClYqvGtx9g3X8KGIumINT7Df5HI6WPgDvC32FC8n+Kiwt2hVWG4hf8VxHMYq7qtreK7BWVX/nSZm1WXz75DkTsbjUZJqTIc4U/a/JDmfZEeSBw3dWpKT29zZxnatY3iDiyW2oTpdH/Hrj7h3YqHM76rTP43vDc5Pk8ti65HkWZJ7HSNfKK/+IslMY32U5ETDhv8jI2c7xjyFEV7jprqbbWBZ+1/bdvwGWBAPCE3D7DEAAAAASUVORK5CYII=", 50, 10},
        ["SCAR-H"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABn0lEQVR4nLXWy6uNURgG8J/dcok4TlFy6nAyEAMyMZBLRjIgAwORDOQfMDFSyh9AiZm5YkqSsZJ/QGfiILl0ctsR59hnGayl9t59e5/v5qm33rXW+6yeZ31va31ijGrGZIzxVAP+qNgZY7xVlddRHzM40IA/DotVCaFC7XpM4wT2YRMOYz9eYkWOUVgas/aPuxL38K6CLiQj5/AT3b75dTiEg5jKoteM2ONIjrawBzvQw82ypIDj2Iw5HMO2FkXVQcQELmBLwfqMZLIr6f+GhYAP0lf533iEo/hlsAUX8SfnAQ9wH/N4XbDPbqzC91wf0Qv4NFT4W2q1jnQyRejhLbaXNPEEF6VDa4qnRZMBC33jJanfnxtvJOIr7uAMNuAxZvP8NYOn/lk7JkYiGOzDu5IJkqkvy/CnMJnz63iB1biCtX11s42VLoMO9uZ8HlcrcM/iZM4vSf08IV3Tb4Zq5+pLLIcgGeniMj6W5E3jds6f4aHB1um1JbAsArbW4N3ARukGOo/3LWqqhSovez9OY5f0qr8qWP8xNG7yK1QKfwGUvd7WolZqhgAAAABJRU5ErkJggg==", 50, 13},
        ["SCAR-L"] = {"iVBORw0KGgoAAAANSUhEUgAAAC4AAAAPCAYAAACbSf2kAAABqklEQVR4nMXUz4uNYRQH8M+9c2nUqAmNKUwoC2LNcoosbaSkLFDKTrIVZSt7Cysb6f4DGhvJgpqyUCSKhs0ls/FjTDOOxfvI4/KO973v3HzrWbznfL9P33Oe8x4RYcBzsoG27FyPiF1VuG2D41gD7UpYqkLq1Lx0Cw5hEgfxAN2ad5Shh7V4XYXciogDmMOXLL4xGduPzdmZVL/YqniOz5jH6eSpFK2I6GId3uJoMv0/MIdlbMeF5CfHuKJ5b7DQUTzRuSGbeojWPzif8EIxLuuxsy8/jglso3j23qpa/BP3cA27sbgC7yNuV720o5irn/iOE3iJDdhRovuKKVxOZkbxLuWm+rhHEv9uVVOVEBFX4he6NXbuWKa7FBGnUvxOFl+KiE1D2Pfa2JN18WKNms9nuvd4opjL+YzTw4dGnS1DRDxL3blao+J9EfEt6W715c5mHV+MiPYwOi4izkTE8YgYrShaExGzydirv+gOx+/YOwzjHdys+UhbMYsx3MBCX/6RYh+PpO9pPB18JkrQsPKRkvjjrON1fvhaHW+C5ZL4jGJN3rfaazDhB3/ZCvQhZGtMAAAAAElFTkSuQmCC", 46, 15},
        ["SERBU SHOTGUN"] = {"iVBORw0KGgoAAAANSUhEUgAAACUAAAAPCAYAAABjqQZTAAABa0lEQVR4nMXVsUpcQRTG8d/qriIhIb6AiFpIXiBFqqQ0YOFaBLSIrV1IEyzS2Nulj2lShVQKWogvIFgoKlFIwIAIKYIgJGomxZ2L191xV1x294NTzJk5M/975py5pRCCJirhGaZQxSAuo1XQi7/4h/5C3CccN9s8eWACqoQneICXmMXIfTa/r8o14xFMYAZPI2A79QuH8awz7GFbCCG3UgjhQwjhKnRP+yGEG9dXwZ8OZKeRDjBevL4LLON1YvEmPuJnHFcxJyv+/Zq1g9F+4FsDgFf4jAWsy5rknJs1NYAXieDfeCvrsJ3o28ERVhsc2kzf45672CpOFKHeYygRvILHGHPd8o+w1AIQDKMPo7UTOdQbvEsErmFelq2NFiHurDKmpb96FZO46hRMrh5Z0aa0rAtAZFDPE/6v0dqp/C2qe4J6cFLjO5W1+0WboXKYuv9cGV/wsOBblBV2u3VrpsoRYrEDELepLlP/AXEf0pvsdGTCAAAAAElFTkSuQmCC", 37, 15},
        ["SFG 50"] = {"iVBORw0KGgoAAAANSUhEUgAAACUAAAAPCAYAAABjqQZTAAABpklEQVR4nMXUO2tVQRwE8N+9RCW+go0EG42IoJggCGJlo42lKIJgZRG/g7WFrU2QdBYKCvkKolWKIPgmiiCIgsYHJhqieTgWeySHkMTc61UH/rB79szu7OzuSOIf1ekUHP7dv106jxvowiw+YBxT2FWNH0Q/FrAdB7C34sClRpJOi/qGDX/AH/wbTl1FN77gLY5iBM+wWXHtHD7jOQawH+vRwJtGkuPVZKOY7rDAflypRDbxSXFyKyZwdjlSI4vn9xRPOiyqR7kzG6v+NKI40o2XuI0XeIBNmK2L+t84hm1I/U79qLWbVb+5hBg8Ul7NDPrWsNgEvq4yPorXinsL+C6LGKlVktxN8r5qzyW5nmQgyY4k40l6ktzP6hhLsqfVTKuLulWrX5hJMpRkd420LsnJqr0zybsVBL1K0tuqoKWiblaVJJNJLq9x0tGK8zDJYO37vnYEZUmin1Gy4yKGMLmG+3IeRzCvvKJ5HMKckkftoXZMg0lOtLCjviRTFf9Ou66s5NSwEmjDLeyliWvYogTiqbZdWQZduNAGrxePlWS+h4+dFPUTOhukC3UWCCwAAAAASUVORK5CYII=", 37, 15},
        ["SKORPION"] = {"iVBORw0KGgoAAAANSUhEUgAAABgAAAAPCAYAAAD+pA/bAAABlklEQVR4nK3T32vOURwH8Nfz9PjVYhsz2YW4kJpyQ24oRSm5IJJ7Lmn8BWp/AuVGspuVWlzwD7g1saQIe8wdhYsRGxveLr7f6buHPdvkXafOOe/P+bzP5/05p5bkME6jH1OYRTceYxpf0Yk6Pld4+IQVOIoxNHEDr0peAycwjuOYxFbUsNfy8BSvcRVHsBP9tSTj5Y02LDPhQpjGfaxGVx2X8Og/JYe3GMYQxuq4idF/SDSFAfRiPToU1g7jFkbQbKAHp1oOf1c0cw2+KHo1g7Ulfx7X8W0B4W6FVSQ5mT9xL8lAkt4kfUm2JRms8GeTWGBsTHI5yZUkmxu4g4fYU7nFT7zAu3Ldh+cVflcb697jwtyiXtrR/ItFz0qLehA8qPAH2gjMR5KVSSYr5Y8m6UjSWdqzqlL+RCVuRxubfo869it+6hyGFI39iDfmN3KkMj+3lALqONiyN9Mm/hp+lPMz2LQUgd0te11t4idwu5x3YHApAtuXIUDx82fxAXcXE6glOYYtOIR1uIgni5zbh5eKJ9kWvwDzG+/7GHEBdAAAAABJRU5ErkJggg==", 24, 15},
        ["SKS"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABgklEQVR4nL3UOWtUURgG4GeSIRFX0ESIEYKgIAjaxs4irQiKtYWW9v4GO/+AiJ2FIKQLWhg7BSEIiqQQmyioEEHRmMXX4h7JNcxM7iAzL3yc5duXc1pJ9IE9ONNQ9gDWcB6jOIzpGr+Fb1jGhy42XuLdLn7u41q7YVBj2IezeNpQB9YRjOMtNnFIFfhJvMINPOugO44V3N0lrhnMtZK8x1YXwdWynsLBPhLoB79wp8P9SPH5tYfuDE5joY0j2FCNwt8ObRUDT8q5jaOYKufv+Kkajf2F96XwJmqOPquqv9whiDW8KTTfI9hmSLKU5HGS1WzjdRI7aCzJo8KfT3Kl3B8v694kE0k2anZud7AzEBrBOcyp2vgQN3G9Q87rWCz7T1jCpKoz8EPVlRc1nUv/XemmSPI7yYMkJxpkvlgqfbmHzK38i9lhdESSYw2Fp7I9fpM95KaTbNYSuTes0er2h+/ER9Vjv6h6xN2wgoXaeVb1TQ4WA6rQhSTPk1xNMjqMjvwBBYyqLfSB7OsAAAAASUVORK5CYII=", 50, 10},
        ["SL-8"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB3ElEQVR4nMXWy4uPYRQH8M9vZhiNS64xIbGQrYWdlQWbsWQlGitlx5pi5w9gJVtSJHJdKUlsKLeiiKQRi5lcG8bX4n0nPz/v7zc/84Zvnd73ec45z/c5zznPpZHENDEXO/AY16c7yBRYh1tYiI4T7atBcqckeoMb6ME4FjfZfGr6LkKjqT3QBccKzMcQLnQybJQZmYUvTf3zm0hb8QHbcQIzK/SP8Ln8n8BJzMBSfCv7j2IDzuAl3uI9PpYyWvJMtuE+LnUK5DA2+7U89pXkVbiL9e0G7IBRP8tjDP0Y/AP/F9jUTtlI8grLpzGx/4F7eFel6FOk9l8E8hgPurQdUJRnFHtvHtbgCE5VeiS5lu6xM8mCUrYk+Vr2jyV5mORcks8tPhNJdiXpSaKGrErS204vyZUug5hIMqfJuTfJ6yTfkwwlWVn2j7T4na8ZQFfSp/2mhrOKk2UmhhU1+rzUDZZyHA+xTHHS7cF+bCzt+rssp3pIcrNNBg5URL41RQlNYjzJ6gq7Y002I/8iI40kB/2+2W8r7okq9CqycwhXsbvCZrjFfy2e1lvyKVBjFWYnWdJGt6Ylu3v/dkZ6aqzBR8WNXIVneNLU3laDpyvUeWtNhYuKV8BpXP6LPOAHvHrfSg5u5VkAAAAASUVORK5CYII=", 50, 14},
        ["SLEDGE HAMMER"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAAAg0lEQVR4nN3UMQrCUBCE4S8xRQQbG88gBIxXzpE8h2KVIij40qRInoiFSnz5u2GWZRdmNwshSJADTiN9zeea5EPKWKe6yBMFapxxwW3ecV6ywQ7bQe8jP8/C747kjvYLfUqs3xUtKlpH6UWrQjPyu8L0jf0rrWlMV5H/WEy0Ul2ki3UPNEUZDinIJnkAAAAASUVORK5CYII=", 50, 10},
        ["SPAS-12"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAABsElEQVR4nM3Wv29OURjA8c+9bkUUlTZq0DYsGEQkYmPBQBphE6PB4A8wicFgEpEY+AcMto4kGKwGiRgIEVRCIhHeolI/cg3PaXLcVnvf0ni/yc055znnPuf5cc5zb1HXtRYMYzw9w3iMGjsxkeRvcCKt/4JvDR23cbzNZkuhWmBulzDwCPagTPKX+CQc2YCtqV2BH3iI3ehv6Fvzj2xeiTO4kAuLlJF+DGFHMnwco/MomcKzhmwQW/6waY2n+IzvqW3DvbS+SYmNOI2LskQUdV2P4YqI4kjLjZabacwssmatzJEKB3F0GY1aCh/QQR/eWziTE7ha4WsXG7xrKB3E+tSfSfN9WIfVXehtsgmTomB8NLdw5EwTR2sI13Eom3yOS7iR2pMiSiOzLyYqURQOiPswlRw5jP14gSI9P0VBIC7saDYmCsVk6tfYh7eL+xwUWfl9hbHUv4nzuI+zGMAt3G2pdxte+93pJgPYKy5wBw+0LwZzmHXkmDhrRFS3i6OxCk9ENHuaShh8OZOd00VKe4VSGL45jTu49t+s+QtKnMrGd8z/Iep5SjzKxq1+vHqRXyITY0mbtafdAAAAAElFTkSuQmCC", 50, 13},
        ["SR-3M"] = {"iVBORw0KGgoAAAANSUhEUgAAACgAAAAPCAYAAACWV43jAAACMElEQVR4nL3WwYtVVRwH8M+b3pRlMhJikSJOk9BGCyqqjTBh5DJctAna9gfkMgKxNpIrdy4EoSBa5SYrFKrFqKCCpjAUgSSCzgxB4TTjgPNtcc+budx5781zHvSFy/2d3/mec7/nnN/vd64k/qfn4yTfJpkYgPt9x24bDk/hEP7GdizgIcbwFzZhFLN4B+/iDZzuM+f9Mg60kmxU3Gb8gWcH5C/gyQG5c/gUv21E4DhexXHsetTBA2IZl/GwleQSHisdS5gvIuYwgy14pjzwHBsKjWWM1NpLqhOYw108wAdoFf9bmG1jB14rIp8og7/BFZzCP6rjPIh9eK+HwBs4iWnsxyeN/nnVYi/gS3ytitM6XlbF7EequCXJz40M2p5kOsmxJM8nOVHah5PsT7IvybYku5OczSrOJXkpydNJ3s5aHClz98vehcId7fhGVpSuYgYX8T5+ws2yc1/gF1wvx3ILL5Yxi2Xn7mEr/rU2U3eUuXthp9UTnFjxJrleW8HWJEeT3Csr3tRntbtru/NVo+/xJHuSLNY4P66ze+M17t56HdyDz8r7dVUcTajqUT8cqNk3Gn1L+B1TmCy+F9aZryvaRdwdnMeHqmwaBBM1+9cenJsNgWOqot4NrW52G58PKKiJ5Zp9uwfnauOjb+KHHtx0s4e56k6pysYWVQnphqlGe1JvgQ+s1srFjnOYq25Q3FZlKFzDK324u1QCb3Ucw/4sDIIzqgQ8i+/W4f7ZdPwH4dnnxjgQtLwAAAAASUVORK5CYII=", 40, 15},
        ["STEVENS DB"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABAElEQVR4nNXUuUpFMRDG8d/hxqUSQQSxtFK0sBDfQCx8CQsLn8DeJ/CCjY2dtWBhY2+njyCC4L4X1xWNxYlwcUHPuYv4h5DJZGbyDQnJYoxKMolhTCU7lC3UBEKZw6cxjxl0NCjgEuvYabCO7Isb6UN/3RhADzawgNkU94yzJOQw+Wp4QiXlvPOI8xR/muyLVKMpZDHGOUxgFGPo/SFnD4vYTcJu0Zma+DOyGOMDun4Zf4cRHMgbruAV1y1RV4Agf6eD3+y/YDPN49iWNwE3LdZWiIAjnxupYRVV7Cdfhu62KStIwHHd+gTLWMHVh9iI+zbpKkzAFoawhDX5D/PveAOhkDzBunVvSAAAAABJRU5ErkJggg==", 50, 9},
        ["STEYR SCOUT"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABPklEQVR4nL3UTUtXQRTH8c/FW6grlQSNwP+mjdTCTYsWvQBB8E0IrnwvbVu1THAZBb4DF7WqFtEmKhLEh/AhSuvXYiYwyf7Xh/zCcC8zc875nTNzpkniggzgNm7iFl7iU11rcB9D+Invdf5atTvCYZ0bqt8ZvMBrvKt7+tKihxvYqcFOcogPp9hfx1tMdQl2DnaxeoquP0nyJP35nGQpyUASSXpJVpK872B7UdaTDNe4fxtNktEWYx0qM4GHWMArzGOwrh1hCz8w2a9uysnDl1rp3epjTzn9A3xTruF+9d308bndYqRDIr+5U0fwGNtKYsvKHb+HrzWp/Sp685j4/0aL0XPYLeJR/e9hWqnss8uRdXaaJBtKs8Nz5cU53lx7SjM/wDieYu4qRXahxRvcxRpm/7G3UZ7Zj1eg68z8AnHM/AdN6FVoAAAAAElFTkSuQmCC", 50, 8},
        ["STICK GRENADE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAAAlUlEQVR4nN3VTQ5BMRSG4edKzcTE1MwQWxFbuCuUWAGbEBOxDULUoBWGJW403kl/0q85X9tz2sQYVcoSLc4Fa/chd/q4ohZXk9wuSgUBG8wk5yfccMQuj7tgjCmGL3MNRtKhBmU38RTHit/WO/R+HcC3+BsjAVv15sigdMMmp0iNVWuOVangUX4vnYTzOQfJyFrhP3IH6RImezn8IfwAAAAASUVORK5CYII=", 50, 9},
        ["STREITER"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAADCAYAAADRGVy5AAAAf0lEQVR4nM3QMQ5BYRSE0XMlGlahVIhGp7AMicJ2rEGlsQeNNdgHUT1eCImr+AsUEtWLr5tkMpmZyMwV5l4k4k0HDqh9csMWPezRwQNXjNHWDBUWkZkDTHD+YmzhiClmWGKEIU4NFIWLctBd6VkrAzZYo4rM/DWsix36yvN/xRNzkSJRssjMKwAAAABJRU5ErkJggg==", 50, 3},
        ["STYLIS BRUSH"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAADCAYAAADRGVy5AAAAlUlEQVR4nKXSTQrCMBCG4adaf0AQqUtv4MITufQuXsiDeABXLgXrpohgS1w0BYUW1L4wTCYZMt9MkoQQRCbIsIx+7H8CjrhihDUWyONejscP9+2wxyXGczxRRT9IcY7CZz2Ed1FgirTl7O6zsWZ9a8ndqIdTIlE30MQlVkkIYevzJRprK96H6k1wgWFH3Uz9O77lhMMLwL0nKYwtr4kAAAAASUVORK5CYII=", 50, 3},
        ["SVK12E"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAMCAYAAAAgT+5sAAAB2ElEQVR4nLXUz4tNYRgH8M8dd0T5kR9l0k2xsUFpLNiRKcVGahb+grG0uwv/gS1LCzZENuxETSxGIhkWbDBK8mP8aOZeEuOxeM/pHsfBvebeb729532e57zv831+1SJCH7AT97EXN/txYa+o92g/jia+4hum8AN5NA7hAL6jge3YjBra2LR4l6vRK5EGRgvn3ViQHIdjGMaSbC+ifO4reiXyGZfxBk+wKlvns30OE5jGSykjWyViG7FDh3SONl50+f44VuNMWVHHmuy7gaUl/YxUOrJ9HPsrHmh26ch0hewT3ma+tDCPizhVYbsBX6ourkvRWNmlI3P4+AfdCv9XPrM4qxOwtTgqZWq+ZLtPIrK+IHuF2boUjZxISI28LLvkeaYn9cIenQzm8paUzSKJBUxmsmL5Vo3IdwUS8AFXcBB3S7ZtjGBLQVbDsIiYioTJiGhGxK6IGIuIdRGhtC5EBxMRcTiTX49f0ar4d6ArzwjcwDm8rohaMdKk8prB+yw6VzFWsFueZaLc2APDkDSBcvyNRF1KN9zGNdzDM5yWmrZ470jfvOwCQzguNdjJf9iO6vTHg5Iu8LQk27ZI33pCXZoClSOthMc4gSO4VaG/hDt4iEd+JztQ/AR21QEhh3ph1gAAAABJRU5ErkJggg==", 50, 12},
        ["TACTICAL SPATULA"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAALCAYAAAA9St7UAAABEklEQVR4nM2UIUtDURiGn3tdmwpb9F+MBcFgENP8B6bJgliMVsEg2FwXxGAUNgWzCGsyi8F1xeDAPEGfhSsynWI491x84JTvHN6P93znPahEWhtqorbVirqt1tVltaVW1UN1Rh0YxkksE5sfDc7VJ7Wn3qn36pX6rJ6pr+qpOgowMVBnE5WcWQM6QClv4R8YAUtAvwQsAgvABbAKzAUIzwNtijEBsAP0AVAP1Jp6rL4HjLhoumYZRCUFXoBb4AZICrrJUB6AFvCZixSoADWgPrnxj3kD1oHhZDFRY2SkHKDxF7vA3vdijF+rAXSJE/hrYIVsKl9IIzS7BLYi6A7JntSUCYhjBOAI2M9RT6AJPP52YAxkSz5bbrNGwQAAAABJRU5ErkJggg==", 50, 11},
        ["TANZANITE BLADE-ALT"] = {"iVBORw0KGgoAAAANSUhEUgAAAA4AAAAPCAYAAADUFP50AAAA3ElEQVR4nI3Pr0pEQRTH8YNJQYNYLItpg6CIPoBgEowW9xXsvoDdps0XEJNi9CX8gwhbZDEYbxJsH8u5ODvuZe8XDsww5zvn/ALRsxZxK+krLeNSQR9pBeemGc+TlnBWSa9YnyeeVtITthFl0xB7xX1USS/Yb9/bpgFu8IgtnKAppHccldu0h4Oi6QGT4j7BcR2jnljT5PR/+euM95U4miUhFuKPjYjYjGkOo4v8YRfjnHKB5zz/4Kpr1Td8ZOM11nLtr6xhl9hyh9XicZDVmXEnt/6OiKZI8Zk1k18tZmJJn30IFwAAAABJRU5ErkJggg==", 14, 15},
        ["TANZANITE BLADE"] = {"iVBORw0KGgoAAAANSUhEUgAAACEAAAAPCAYAAABqQqYpAAABRElEQVR4nM2UTSvEURTGfzNMmoVmYWWHFbJQklJeNpKVjbIijRIbKwv5DMrnICu7YYG1svK6kZHERkmZovGzmP80L6W5i5nhqdM5t845Pfee5x5UAiylZtQxdU+dDawLslZqIwVkgBFgCogBZwF1wYgH5PQAvVEcA3LASbNJXFB58yQwX08Sxbn0qwu/zGxU/bSED7VHnVOH1HF1Ru1TF9VOdV1tVzfVNnVLTaobaoe6EvVApUjgWc2r6ag4rSbUVbVFPbAST+qX+qq+qzn1JerxGOU81PBZtbtI4riseV69juLLKt8I3KtdMXUQOKcgur/AaRzYKSPwDdxE8VWVbwSywBIWBFWtiWULmlizSZr4F7+jliXUo6qX2A6oC7aQZTUADJedc8BuPYURQuKOklilsDEnm03iDZgGDoEJYB+4rSeJH3i4Mu/3nJ3cAAAAAElFTkSuQmCC", 33, 15},
        ["TANZANITE PICK-ALT"] = {"iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAA5klEQVR4nJWRMUpDQRCGv1zCE1ilSSOYPq0oCM8DeA8rz5BKvEkuIA/SpIwWQhqbR0Ah6T6beTiu+546MDDD7Lf/vzsTlYFYAh1wN3QANedK7SKP6iHqh+IcKpNCuQXOKhofwFvUr8CipjxTnxyP5yFlgDlwkvor4Db1L8BpTbnMRl0Xyu/9H4yBN2obwFp9TBd0Y3CTwDb6ywQf1PsaeJ2stuGAAj6qyxK8UDfJapNmGf5he6FuY7gJB3k+92uN3+BzdReDbTioPWkWT1n18FTdB7gLB7+tkB7uYx8O/gSW8PQ/oMonaJhuTL57J60AAAAASUVORK5CYII=", 15, 15},
        ["TANZANITE PICK"] = {"iVBORw0KGgoAAAANSUhEUgAAABEAAAAPCAYAAAACsSQRAAAA40lEQVR4nK3TMUpDYRAE4O/FB4EgFuIJBEVBUEirlnoGT+CVtBObdDZaxFpvoJ1oJWJlIWIjOBZ5D2JI8T/IwMI//8CyO8NKorCGSa6TDGa10gZLSZ4ywTjJWpLdVu8pwy8emvcxnnHaiqVNKnxN8RUMmv/idSSpk1zlP066eNJWP8lt0+AnyV4SNTZwjje8Ygt9PGIV63jBB3aQZqUaYxxUSe6wX+jNPNxXSTZx1mGSyiQheMfhQjwpjbj1YISjKb6N4nR6SS5n4r1IUnWZJFie4p/41ia1iNvpYuowyU3mXPEftSjMQJ/z9ZcAAAAASUVORK5CYII=", 17, 15},
        ["TAR-21"] = {"iVBORw0KGgoAAAANSUhEUgAAACcAAAAPCAYAAABnXNZuAAAB9ElEQVR4nK2WTWsUQRCGn9kPhCgRTNQoiAgGzGEPBhERPAfEH6DgzT/hRW+C/oTgSRBFkOBB0IOBHAUVA3tYBDUHUWNEWTWGDSZ5PEwFx2V2Zz/yQlPdVdVdL2/1NJOo9IkaUO93Uw5OAq+7JVT6PHAE2B92HagCAglQipzNsKXwt6+3Yk8NWIx5LhJ1EpgH9hQQ2wTGogCk6p0IgnnYAr4Cv3Nio8A4MAm87VSwAtwBjhQQy0Mt7BdgCWiRqgkwQ6rUQaAZBH8BH0mVOgrsA451I5eoLWDXAOS28Qf4AWzwr8UTPe5dBtbaOZESJ1GbwN4hyA2DU8D7HH8J0ra26J/cQ2A2s54GbsW8TtrqaUKBDvgAvOpWZJtcP1gF7gHPMr7dYdeC1AZwGnhOqsxLYAVoAN+BMnC8sJLa8H+8U5sx/6SuZ2J19Zw6pRKjor6J+BU1Cf+U+kgtZ3L7GqiLmeINdUI9oN5Ux9S5TPxFziHnI7YcRFGr6pM4ayBiKhXSuzIO/AQeA99C1KthVzJCH84R/3LYB9FOgOvAbdKvcWBUgPsFOUtt5A4BnzO+EdIH926sz0TOtWGIAfQi79m2O3mpLV5WL6o31Bl1Xh0dpp3ZO1c0qupqhtxsh7wk7t+FnSCmktjbX8kc6XOxADyl4G9ip/AXghhMT6fnhg4AAAAASUVORK5CYII=", 39, 15},
        ["TEC-9"] = {"iVBORw0KGgoAAAANSUhEUgAAABsAAAAPCAYAAAAVk7TYAAABLElEQVR4nLXUvy5EURAG8N+yJIhGgo7YSkOCR1BIFGg0Qq33AuIF1AqtSiFR2HcgKiQKjYRi240/iZUdzb3J3Ws37rK+ZJKZc7453zkzk1OKCJjCAUa0xweeMvE4ZnCJITTw2Savgn7s47aUiO3iqINQL/CCal8SrP2jEAygUk6Cxh8Pe8VF4g9qbUcdx6imYpdY/6XQAzZw9yMzIlI7jVbUI2I4s59aM8fbacNpa30Z3dHcPc7wVuBlzaIlSMUmsJzbOyl6SFGkPdvK+FDDGDZ7qpbU8yrXh8MOdR+KiL2IqGW4K0V7JiJm4zuWOiSUEsHHDHehmwHZzj32HtedCoF3WgarqwFZza31fDBSlLGIacxjDucF8koZP4qKpR9xN+jHMyaTeB43RRK/AHQWNXJ8THmUAAAAAElFTkSuQmCC", 27, 15},
        ["TOMAHAWK"] = {"iVBORw0KGgoAAAANSUhEUgAAAB4AAAAPCAYAAADzun+cAAABBUlEQVR4nL3VTyuEURTH8c+MZ6LGiMlKkmIhmXdgKbGQBcnCSnk1rL0FC3kTY6GsLa2lNJspGgzH4t5iMTWJeX51O+d26nzvuef+qUSEErWHK6iUDL7HOh6rJUKbWMIRlAluZbtVNriZ7Srl9ngWT9mvFxjDGZZRQYEPvKOW42/ZyvF2TtLAGm6GQMdx/GPeqETEJfb/WM1vtVhIq21hTqq4ik/0sz+BF6niAoFrdDEp9ex2CKiGTXRyvtcCPaz8az2DtY0TzOC5wHkJUJjHg7STvbKu0w5OMS0dyL6IGNWoR8RBRLTjW52I6EbE1CjBGxFxF4O1O+oHpCqd5kPpc1iQenzxBbos7//aspntAAAAAElFTkSuQmCC", 30, 15},
        ["TOMMY GUN"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAACJUlEQVR4nMXVO2iUQRAH8F9CIDFGjBEVbMTCF4gWPgorDUIQGysRtLGRFDYKEhAEK1EQIoKCiNgIIgoWioXRWFlE0NiIT3yALyQEY2KMmjgW3164HF8ud2fhHwZmd3Zm57WzdRGhRvRhY+IDK/ASHWjFlVoN14DDdTUGchRHUF+09wUjaE77I1XafIAx/Ek0kYgsURMYx+8c3c6GKi8roM3UIGBhouJ1HkaKnGlGY+JvYFQWxHjam4V5+CwLckI+LlUSSBs2YzVuYS2W55wbw0fMxqIy9prQkvhuPEv8CVlLDuAmdqR1AaNYV3R+KiKilOZExPaIOBkRjyJiIirDxaRfFxEXcuSfIuJpyV5H0b19EXE8Iuam9cGSs505vk5Sg6x8m9COLdiAalruA3rQVcgNfpac2Sar1gDeTWN/K4YT34bdJfK75ZxowBMsrdRrfMVt3EMvXpTIF2NP0foVfmEIq/AGy3LsFoJoTbbXpPV77JIlbHpExPMKW6c/InZGRGO5EkfE5SKd1xHRUiLvnqa1CnSqSD4aEQdmuG+ytX7MUIFhHMJ52UQph/UpewV0qX4MLynkWPYXdVeiVC97I9OhV1bic2YOgmw8Fj6mh7hfiRMlOCObgI+xt1KleszP2R/CftkDfFuFE/3Yh2+4Lnvg1eIOVuKsaoZOTB2v3yPidEQsqKQvy1BTojzZsYgYTNT+j/dMUl1E9KSYruEqBmvI4n/HXywSWo5LRNnyAAAAAElFTkSuQmCC", 50, 13},
        ["TOY GUN"] = {"iVBORw0KGgoAAAANSUhEUgAAACAAAAAPCAYAAACFgM0XAAABpklEQVR4nL2VvUpcURSFv3EUB3SCNmqllTYW5g1CClstYhNEBoKFVtpEA5oHkITkKawstEmXwgSClURFAwmMQgIWEiJG0IyKn8U9g3fM9Tri6IIDh3X32T/r7H0uKjVYPepU2OfVZ9WevWvgZnVe/aOeqDvqZ7XzvhPIqWPqhnqg7qo/vURBzaqP1ZlaJpBXX6o/QuDTWNDvVuKfeh72k7VIIBMLsuz/OFV/J/BlvA+qVPit42bUA8PAOtATuCxwlmD3K8XPJLAINFewKRXn1HF1+5pqd65wJ+pmigJlLMeVyKgAXUB3yKkb6AMGgY6ESgQywCfgCVAC/gYFWm/UM8IrYC6uwEIVme8azXqXuqUeqmtGzWjYf1Rn1dEYn4SS2mdowg51NcW4aDRyOS+vZ+SKzZ7aojaog8GmYPRGlK7xu642on5NMXhuQueGQB/UYbXJqGLUdrVXbVP7AzedUtxcRn0BDAHvgG/AMbBf5V2WkQeehn4QOARWwre64Hsi4dxRuQnvG1mgSNTscby967/gNmsgJv25+sbYGD4UloBHwGvgC8AFDJdenNPvBQ8AAAAASUVORK5CYII=", 32, 15},
        ["TRENCH KNIFE"] = {"iVBORw0KGgoAAAANSUhEUgAAACwAAAAPCAYAAACfvC2ZAAABoUlEQVR4nMXVvWtUQRTG4WcXDUSM6dQQKxEFK9FC0ogGRawtLARB0CJgs0Uq/wFBsLHQzo8igoWFpaKFjVVSiChaxELED9AgSr5QX4u7C7MGdtXd1R8M3JeZOfe9Z86cW0uiA1OYwBCu4gXOYwMe4XqnzYNg3S96L85iBTPYjlOo4xaCBt5iGkfxGLvwpLlvsCRpja1JbiYZTjKe5HWSk8X8TJKLhd6SZC7JjSRTSW4n2VnMD2TUC++HcA1LeIO7WC3mv2G20BuxgNO4ojqZc4NMLu0lMYpaoZ9rN/wdc4Xeg0v40dSfMdx/i+2UGR7F/kK/0/4Bm/Gl0AfxrNDrsanP/tZQZngS+zCvymYDixjDbhzDHVzGDpzBuOpyruDEvzBca7a1STzoQ7yXqm5ywN+bX8Jy8/kjnqpK8SGWa0kuNF8w0ZvXgfMejbqqNkf+s5nfYQRjrZI4jPt9CPoK93BEdWE7/ka7sICvqm41q2qzH1qGh7CtJ6vVSU3jeI9xOtLqEquq7tAL8/jUY4yu1Lsv+SNq3Zf0Rr8NL/Y53hp+AosL2uQMlUOhAAAAAElFTkSuQmCC", 44, 15},
        ["TRENCH MACE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAABZ0lEQVR4nN2WMUvEQBCFv7sEDhuxtRHBzsI7uEpIp4WlgnZ2ooWFxWHvPxDxF4idCoI/wsZCgyDnoaWlYKGggnfPYvdgEzYa8DaFD5bkvZ3ZmWFnN0ESFYwFSc2c1snxuqSdnLYiabpMjDrVYA5o5bQ1YMzhM0BSws+Lqgpp2jFEZPnsDzZFmhfxX7L7BVPAkn1vAW/AluUNzG6sA22rJcCkYwOm0HFHOwNefMFqkkaUd3Zd4AHTLqPEBbDsm4iBTWAeGJDdob59Ro72hWnHYUvK2kWY5LHrDBh9EQATRRM1BdqSQHgFroB7TKt+Aj2gW9VhD44Yc5BCtNZGgHyvgUXfxL857KEKgez1u43p6WPLG8AhcAB0rZbYJHedNTrAE3BqeeH1W8XvCZKOJO07PJL0LqntaKuSejm/c0l7ZWKE/CC6uAWeHd4HUuAuZ3Pj8UvLBKiqkJRsIQAnwIfDH4FLj19aJsA3/5h5NAUQJ9wAAAAASUVORK5CYII=", 50, 14},
        ["TRG-42"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABGElEQVR4nM3TvS5EURDA8d9lKSQSlY6EkkbpBbQiEQWJmkajIVFphCfQSLyGTqIRhcRHoyQKIhIJ62sTRnFPsVjZ3btb+CeTe87MnDkzc+eICC1IKSLmfuimWoxZSLKIUJAhLGAROygjMIlLbCe/F7xjGKPJJ0vfc5wUTaCaLCKWUUrBB9CPCp5xgQMcV50ZxCw223D/G17bEIeoz2dEjKVfuNKAfzNsFBmjWlJqoNayfFQmsJ50V9jHNaYxUuNcBTf4wEPSPaZ9GT04Ldj/XzRSSG9KqBsd8lHbTcmcJdsabtP6LtkPU9J/0VnH3hRZxLfXvoentO7DuLyQalax1a4E2kUJR/LuZJjHfZW9CzNYkhdF3vV/xxeS+4V6sDXUbAAAAABJRU5ErkJggg==", 50, 8},
        ["TYPE 88"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABUklEQVR4nK3TsWtUQRDH8c9dDi+agCKS4sQINnZWYm8n2pgyTQJ2afKnBNJaKf4HSgpJI2KpcqggmoBFOC+EVL4mMTFjsXv4PI0ne/eFZWfn7fx25g3TiAhjcCuvGVSYRQPHOMLZfO8QF3ADbbTwGlNDej3sZruNc3ic4wfcxzWs1QMbYxSyjtXSYOz7s5BtvMBJPs9jBw8xSPQmrmAPB1mn3ypI4C42CuKGufQXXwcX8SOfD7Eidf2z1KF5qdBKKuQV5hoR8civdv4Pt3E92+dr/i/oZnuh5j/Oj37L56t57+PrkPYnqQN1WriMxX9mFRFLEaFgnYmIKhK9iHiQfZ2I+BCT5emofJrScJYwi+lsL+OZNPRHeFKoeRrdURdKZmTAnRxf4SW+1769xZsxtId5PupCC+8Lxe/lfdPvRQx8m4W6RTSlv1fCFj7i3eTSKecnEwDv8Lz2H3MAAAAASUVORK5CYII=", 50, 9},
        ["UKULELE"] = {"iVBORw0KGgoAAAANSUhEUgAAACsAAAAPCAYAAAB9YDbgAAABO0lEQVR4nNWWvUqDMRiFn2or/lGLmy7iLtLN0QsQr8DZW3Cou5MK3oGboqvFC1AER0FadHHoIKKIVUv9KT4OXwpdLBYjbQ8EzpuEcHJySIJKaHn1UH0xwYN6oC62zOlqa5Ilte7P2FMnuy02pU4BZWCC9rgHdoBrYBZYBhaAV2AfWAv8/6ButHG0E5yomQgODqoFdb2Fb6rDqBeRxKquRhCbVcvqlZoLJtyqMyn1HRiKdFBnwDZQDXUN+AAEnkLfG1APvAp8BT4ArAAFYBzIAhlgJIwXU6qRhP4FnySbGmsz56ZXxP4GjYFuKwhokESmHSppEvtjZnYLeA51M7OQZFY6y2waGA3jpV68DXLqpVpSp9Vz9U6dSwNFYD6Cq6fAboR1asARidOPwDGJy5W+e8H65m/QWuTt8V/XN9cZJHogLHAJAAAAAElFTkSuQmCC", 43, 15},
        ["UMP45"] = {"iVBORw0KGgoAAAANSUhEUgAAAB0AAAAPCAYAAAAYjcSfAAABbUlEQVR4nL2UO0tdURCFvytXBUUTIihWvhDEWKRJYyVYBC2stBEhnXaChVj5D2wsLK3Fylb7QIpYqohCksJCQS8+UCQ+Pos7moOo51y5umCYzbBn1pq9Z29USrBGdURtLTEPdUmdUsmTDQ3ABDANfAR+An+AC+AKqADywDVwC1QCy4n8ZmAI2AVIU9ekTqqHlgdzKjn1FFgFaoCvwG+gG6jPeAql4ATYQd1OdLYWfly9SSg8U9fD9jN0dK7uqZexvlD/qfNqVZK0Vj1Qe9WFIP0VAuoSwqpDhFGsoF4lCPvUKp++ri4V1CN1IIhUj2P95ZnEDvU2CAcjtuD/e//2TN6DEUoL6g/1u1qTkjQbxVfUdrVT/aDORHwsjTQPfCpxGIbDL1Icuntshu9JK5D1nSbRD4wC64/iG+E/pxXIqa/gfboWcAwUgLaXNlaUixEQ2AJaSHnj5SSF4hHnKH4u70aaaZjeotO/QONLm+4AiM1w4f2iFXkAAAAASUVORK5CYII=", 29, 15},
        ["UTILITY KNIFE"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAAA9UlEQVR4nL3UPUqDQRDG8V9C8CMaglhYBNTaUkxnYWflDbyHtY0nEFurXEALBcUTCPZiaSMaFTGSiGEs3hWCRUDerH8Yltkdnmd2GbYSES08YBVbWFQwixlMo44pzKGGBqpoptqFtDbTfiPVdXGFU5zjUS4ioh0RJxExjLz0ImI3IuSIKtrYSS+ZkzqOsZZDvIbtHMJj/M6UG7E+nnCLa1ziuYav0u39jeUUk6KPgyo6ExT9b14U/XcqEQF72Ff8ULno4kYxAYcYlNAK3OMOQ/i5CCxhEyuYRwsbWE/nPXyOiA3wMZIP8fbL8DWZXuAI7yWaH8s324HgmwHy84AAAAAASUVORK5CYII=", 50, 8},
        ["UZI"] = {"iVBORw0KGgoAAAANSUhEUgAAAB8AAAAPCAYAAAAceBSiAAABbUlEQVR4nLXTPWuUURAF4GfX9aPwI35hYZNCsE4nWKTxDySIlcRfYZVeEH+Bnb2oCCIBK7XQRrSyEpIiImgiq0bJBuOx2Bu5rG42+5ocGO68885wZu6cK4lid5N8TnKhiu3UDia5neRkFZtIcj/JpWF1HX2cwuXiX8ctTOAIjuMw9huOn5jDO7zEOi5iBt/wAt//qkrSTjKfvUM3yc0kc4OTt5JMYnGbqXYLPbyvAx3M7jHpFzzBEm7UP1pJPuI01rCJY6XLHziKp5gq/r5S9wFfS82JUtNCBs7HeIB7/2wrSa/s5kqSO0lminolmSqq7VY77CU5l2Sy5DR5HX/Uvo4DmMc0ulVvr8v5q4qt4my5zkOlthHahXwT1waIayxX/ic8wwbO43lT8q3Jr+LNNnlnBr6Dt01Jt9DWF9erEXmNr3YU+QJWRuQ9rPzO0KxxMYY6F4raHyVpNVV4be0x+two55r+zv8b45DvOn4D3E7UPCcemn4AAAAASUVORK5CYII=", 31, 15},
        ["VOID STAFF"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAJCAYAAABwgn/fAAABIklEQVR4nNXVv0qcQRQF8N+nrmgMcaNg0qSxSiQEQh5DUgTyGkKKbCvYRPBRbNIFOyshATsLm/wjErTdIlsoy0kx88GH1Wqje2C4M3fuzD1zZoYriSlrL5N8STJM8jPJxyS9JokpwgfsYQaf8RV/cDV3h6QmxQJe4x0GuMBbHHeD5rCOFfSr7/E120dT+7MY4W8d/8PlDQhtYIg1LNX8a3XONR4wj+fodXw7+FG5jFtnk+QcTyckc98QHGG3SbKoKNLah4oCy4piy52FPUWF7xMkafdrsYAXyo30FfUbPMGDGrPayfeo5numqN9iG4fKSxjjFKNp+OxLeIP32MIZNnHSDZqGg3QxwCflSe3jG35jfNc14TbtVZKDWkd+JRkkmf8PguhkfiyUgawAAAAASUVORK5CYII=", 50, 9},
        ["VSS VINTOREZ"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAKCAYAAAD2Fg1xAAABi0lEQVR4nLXVv2sVQRDA8c97XCBiLIyghSiJoOIPRFFJq4ilRcAihYj+E5a28sBWCwsL/wOxFkQbCxFFQhARsXiCIBhDjEQhY3H7yL7z1He+8wvLzTAzuzO7s7ediDAmW3AVO5I+ieWkr6KLCXzC4UpsB9PYwCxu4RG+NFj/PC52xizkAG7iwjiTtEGB7VjD+ogx05jHOezF6f+TWjM6EfEW+1qabxWPlcXuwe4anz6eZ+OrssUGbGjWWhOYKvDSZiHruI2PmeNxLCT5He5g0I9HcSnJkRK6nuIn8aay6Am8aJDk6ERELzbpRYTKKCLie7JfqbE/zOL7ETEbEUci4lBEvI5h5mriWxldfMjq2lpT607l8cGzGvsgJnBGeWqLWMK1iu/MP+73X+kavh+nanxOZnK/YpvCsSS/92sr3Tfc7zPNUxyNAgczfQ73lDs64HIm38XTTD+rfEf4fe/fwA/lJtSdaCsU2IZX+IYV7FJe1FA+bE/wIPl/Tt/l9N2fzZX/IHJ6rWX7B34CvKzpPjgLsUwAAAAASUVORK5CYII=", 50, 10},
        ["WA2000"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAB8klEQVR4nMXWT4hOURgG8N838zWN5G/5hvwpyWiYWCoLsrGylVhIrOxmI3sLpVlIItbWJCtJGtlIqSHF1JSMmUgifTFjZnzX4j3T3JlmuN/9ME+d7u2c+5z7Pud9z3NOJcsyJfEaNXzHAJ5jM16iG6dwAyPowSh6U+tBJ/pwuWwAeVRaEPIe61v8f5+/JKTaAvcFxjCBxxhCP46hA8vxLT2viKB3Yxd2iEXYiiNN/PMgVuP4/IF8Rg5jlSiZP2EE21KAVfxMwXfjFRqopG/bsBOXcBGfU38/zjYhYoazH3sXEvIQ0ziQgimC8cRZ0WQgP8SeeoqpNE8z2IcufMKG/EAly7IptItVbC84YUOsdFncwccSvI1CyB7UzWa9URXqukR5FBXSKuoleWO4L5zvgVkhWSXLsiFsF6kuWlqtYhzLSnJv4RBW5jvbUMZ/3+JNjjud2m08KcAvK4KomvPzO6vCqVi85jOzKYSbOJHer+GMsOC7OJm+vYrhFoL9He6Jw3cO8pv9KM4JYR1iQ1/HaVF6MxgV7tHAI2HDveJcqAufH8DkP5GxCCpZll3AV+Hxm0T91kWGJoUZrMlxBrFFlFIt9a3Fl/8T8sIockXpxDrhbDV8wLPc+LC5GVsSFLmiTOBdajMYFNeNNnHItQv7XjL8AtVxf+1zfjOnAAAAAElFTkSuQmCC", 50, 14},
        ["WAR FAN"] = {"iVBORw0KGgoAAAANSUhEUgAAABgAAAAPCAYAAAD+pA/bAAABKElEQVR4nLWUvy4EURhHz9hFPIBGI5uoFEQkEgodWglPsK+g1ngHBQrRaCQ0JFiJ2JAgNP48gETjFWx2j2L3ymQys2Y34yRfcyff+d07882NVLowD6wCi8A00AQawBBwB1wAN8BzpkFNq1n12vzcqgtpruRCWd1Rmz3IAy11Wx3MChhWj/sQJzmKh8TlVwXIA6chJARsFigPbKlEagV4B0a6jVMffANTkXoJLBUsD5wNAAfAyz/Iv4D78A0idUWtFfDuX9Wq7cFJ/dFm1EO1EWtqqY/qrrqnPnXW4s/P1eXOZn99kdlXRQXYAKpArXPkOSACHoAxYBI4AfaBt1RLygmSNaquq/XYjuvqmlr6qz9PQKgJ9VP9UMfz9pV7mIoS7dlu0r5Nc/EDbRMgY2WoQNkAAAAASUVORK5CYII=", 24, 15},
        ["WARHAMMER"] = {"iVBORw0KGgoAAAANSUhEUgAAACsAAAAPCAYAAAB9YDbgAAAA9UlEQVR4nM3WsS5EQRTG8d9em3gAzSYKoVRpdRq1B/AEaLyAV0A8gMYL6LYguzReYAvR0GqUorGO4t6bMGY3iNj5kslk/jkz+c7JmcmICIWN+Yg4jM8aRcRqJyIUpi2cZ3i/+mcj39HyBL5SotkznCbsFjslmn3CRcIecV1iz8IN1hO21sUB9vCMS1zhFWPMfZhl2F/HVFhCL5PARicixk1Q6Rp0cYxdvKgrO1RnmqvImzqx31St3TstpsIitn19FQZtz1bNYaUo27NtpiUZhZNkPcSoxF5dwGbCepoLNgM/U7WPowy/K7GyDxP4/ax/WD/6db0DbndSEZVbeYYAAAAASUVORK5CYII=", 43, 15},
        ["WORLD BUSTER"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAAAqElEQVR4nNXUvwpBARTH8c/VtckjGOzyCCYymKweyaPYjLKalSwGsUixKFmkruGmpFvuJRff8fyp3+l3zgmiKJKSAUroY522KScuQYZBZqh9UMyrnNELMzQUPqXkDU7oYhRiiAbGSLInQB3V3OSl44AOJhCKV6aMRUJxJHaigAqKuUh8zg5tTG+Bf7yRLVqY3wez3MgvsEITy8dElkEW2Pju+93jmJS4AjlvJGu/bS3RAAAAAElFTkSuQmCC", 50, 8},
        ["X95 SMG"] = {"iVBORw0KGgoAAAANSUhEUgAAAB0AAAAPCAYAAAAYjcSfAAABVUlEQVR4nMXUu2oVURQG4O/oCAFvICohnRfirbCwsg3a5xW09hFsFPRN7H0AY2MsBLVQEQQl6ZSDoIQDHhXPb3H2hEEmw2QS8IfFXmvNuu89a5TEQFzG+562pzDCGA4MzYiju7D9iYu1UOFTD6cZTjTkKT7jTIvtCCnnqOiCp1jHrMLZXVTcxFLHtzGe4bR5h3/wY7uqJLNGRfuJutsa37CBVNjUPqY2jDEp/BIWOmz/beQ57tVJ35Wkr3CtI8gWbuBtkVewZn63j3ABV3AXL1r8L+ElSPIgO+N7g99IcjKJQreL/nWSY0lullh2oIWar/AYBxsVTXCkjOdcGeN1rOJrw+5WOZ/gN95o/BYtmG5zHZXV9LB0dLWhO5zkV5JpkvNFdyfJYo94g5fDcRwyfw8fi24RX/o4VwOTbuEDlnHffHms93UemnSi+/46sZfdOxj/Jelfh0r3n91oDZEAAAAASUVORK5CYII=", 29, 15},
        ["X95R"] = {"iVBORw0KGgoAAAANSUhEUgAAAB8AAAAPCAYAAAAceBSiAAABkElEQVR4nLXUz4uNURwG8M+duTEUmSzIkpSVxGiUGptJWfBfSNbKH2ApO1s2tiwkKSxM2AqTX1nYaZQYGcVM7jwW77l13DT3vaN56vT98Z7zPuc55/s9nSTWiX34iF8jrDmEF/1gbL3M2IodmEC32AlsKeNf2F8HXTxsSTaPKdzDB8zgLIKXOFjmdYqdxacS98q8AxrBq9DJf5z7ECxjBd8xXsh/YxoLG02uEHaqeAnX8BW9MXzZQPLOQNyvse2YlGQuDd5kOOaTnEwym+RUkuclv5LkZ5LlIetfJdEfXbzGCexuoeQtHlTxtKZ9ruAWduIcrmrud1D9xF9/S3K+heI+zlQ7H0+yUPJ3kmxOsjfJpVrdWqOL67hf7WcJ24p/HDeqb73KP1yd1kVNdR/B3RYniKbPVzR9W+NzsYsD+T2Vf6zY23hX/KO42ZZ82Au3OLCBqcrv31+feBLf2hLTKB+Gpzhd/Jkq/wTPNC/ZODbh8ijkbQrjQlVwq0l2tS2oNgU3DI/xHo8whx8jqVsDfwBaPIPgIwLktwAAAABJRU5ErkJggg==", 31, 15},
        ["ZERO CUTTER"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAADCAYAAADRGVy5AAAAq0lEQVR4nL3RzUqCURDG8d+rgQmZWu1btAuCbq1lN9SmW3AheAvpqoWbhBRTgoqCmBbviC78CAQfGP5nzmEOD88UEXGBe7xjYLN+UcU3PvPuBx9bZnYpMF/pj9DIcwMnyVO00EQbZzjP9y4eiojo43oPM4fWGD108IgpFBFxhTs8Y6RMqYZbXGKo3MZN8s0ypSYqypSsEI5R/6e5WXKxoS9M8Jp8wVPWcN0Hf3zHKylcKx3UAAAAAElFTkSuQmCC", 50, 3},
        ["ZIP 22"] = {"iVBORw0KGgoAAAANSUhEUgAAABsAAAAPCAYAAAAVk7TYAAABF0lEQVR4nL3TsStFYRzG8c897mRUdoO6WbEoMZspsZBJBovR5E9QRExS/gQpFjvFoKQYDFwZ7qAk5DXcc/N26DoH11NPvef9Pb/3e97T75RCCBWcYwQXfq5RDGIe1wifEiGElfD3mgkhyLr8i5s00xAeMnv7rYJNpY7Vm6CvRcCsthN0/hOsJ8FegYbnKH+Kg8i1KLeIjtSl1G3l9IC8OsIuhtGP16g2h9V0Xc3AQYLHArDGv/OWAfHx0rfY+ao5KQDKqzs8fVUoOvoVdKMdy7iJamPfNReF1XCG2WivhPU8zUVhVWxEzwmmcY9J9anMDbvEeJP8UrQewAIO0SXHoJXVP80VTrCJ4yb5Layp3/AKE3j5DtLQOxU/nR3e/F9+AAAAAElFTkSuQmCC", 27, 15},
        ["ZIRCON SLAMSICKLE"] = {"iVBORw0KGgoAAAANSUhEUgAAABAAAAAPCAYAAADtc08vAAABGElEQVR4nJWRu0pDQRRFFxIDISrRQvADJKJgYxcsTKWFfyD5hVj6E1Y+PsHKKiIodil8gCja2knA0gcKFyWyLDKRy3VuMBs2zJyZvZhzBpXgqrql7thTEvYrqTt/3F/sqx/Glagn6kQeYFf9Vp/UltrOAR2rlRjAAKmGYlmtqdtqJwNpqZNZwLpazOlxPvKSa/VAXUjPYJAPc1r6UhuDghV1T71UP3Mg3bzwlHobLl2oJfUxE07U5Vh4Wr1RT+0NdDTUG6nwm1qPzWBGvbL3ZeXMWSkM71ld7dez4XP1yMh/B4+rs+laAdgAloA7oAasAa/E9R78qwIwBmwCD0A7gP6tEaADdIE54B54GRawCBSBM6AJ1IcB/ADDcl/CIOsnNwAAAABJRU5ErkJggg==", 16, 15},
        ["ZIRCON TRIDENT"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAICAYAAAC73qx6AAABG0lEQVR4nM2UsS5FQRCGvz3u2StUwhuISqH0BgrxAirvQELFO5B4A4ncXiWhVBGFUqsVHXEc51ecf282N/eIgjiTTHZ3/szszsz+EyTRI1kCRsA+cGfbBrAHDAEB79Yr4GTsKakvWkq6VysvkpYlbUp6U7fsJP+B84nAFrAIPAMXwKexmSmVa6yDKZiAGig7qv5hvzBhz23R+yNg1vFOgQKYM14Cl95XQdIhsA2sOFgNPHpNiURrDVR+DA4cadve0La8MhYyjAxrJrAiw1azxJ6AeWDB54cs4ZRIbd/zoqNqP5HvyPXXxAvW8T3BZO/L17oB1oBXr2fAOt1fa9fvrf6b4L9G9tSRvkgavwfArW1p/Eaf0/i9Bo6T4xdM44pWBHcfuQAAAABJRU5ErkJggg==", 50, 8},
        ["ZWEIHANDER"] = {"iVBORw0KGgoAAAANSUhEUgAAADIAAAAOCAYAAABth09nAAAA7ElEQVR4nM3UPUpDQRTF8Z8mRBQUrBKwiJDWHdi4DXtrV+HCbFxBasFSLRIRMX4gz+I9IYYRfXcmPP8wMHOGC+cwc+9GVVVaMsIZLtoWrpPNQM0YR6WN5BIJcofb0kZyiQa5L20kl0iQBa5LG8klEmSA44Q+yfSSRR8n2G/2sIUd7KHXrI/mbhcznKqn1xcHzXm+pD0u1f1EhYeE/ornhP6OJ7yof8Zc/c2nqRf5yyutzuzfDK+dPi5b1gxwiPMVfaLD3on0yBuuEnqnAyASZFvHjZ0iEmSEYWkjuUSCDH2fWP+CSJAbTAv7yOYTCAcjy7oQ9i0AAAAASUVORK5CYII=", 50, 14},
    }

	for k, v in pairs(gunicons) do
		gunicons[k][1] = syn.crypt.base64.decode(v[1])
	end

	local function NameToIcon(name)

		local tempimage = gunicons[name]

		if tempimage ~= nil then
			local new_w = tempimage[2]
			local new_h = tempimage[3]

			return {data = tempimage[1], w = new_w, h = new_h}
		end
		return nil
	end

	menu.activetab = 5
	menu.annoylist = table.create(game.Players.MaxPlayers - 1)
	menu.parts = {}
	menu.parts.indicator = Instance.new("Part", workspace)
	menu.parts.sphereHitbox = Instance.new("Part", workspace)
	menu.parts.resolverHitbox = Instance.new("Part", workspace)
	menu.parts.sphereHitbox.Name = "abcdefg"
	local diameter
	do
		menu.parts.sphereHitbox.Size = Vector3.new(1, 1, 1)
		menu.parts.sphereHitbox.Position = Vector3.new()
		menu.parts.sphereHitbox.Shape = Enum.PartType.Ball
		menu.parts.sphereHitbox.Transparency = 1
		-- local box = Instance.new("BoxHandleAdornment", menu.parts.sphereHitbox)
		-- box.AlwaysOnTop = true
		-- box.Adornee = box.Parent
		-- box.ZIndex = 5
		-- box.Color3 = Color3.new(1,0,0)
		-- box.Size = menu.parts.sphereHitbox.Size
		-- box.Transparency = 0
		-- table.insert(misc.adornments, box)
		menu.parts.sphereHitbox.Anchored = true
		menu.parts.sphereHitbox.CanCollide = false
		menu.parts.resolverHitbox.Size = Vector3.new(1, 1, 1)
		menu.parts.resolverHitbox.Position = Vector3.new()
		menu.parts.resolverHitbox.Shape = Enum.PartType.Ball
		menu.parts.resolverHitbox.Transparency = 1
		menu.parts.resolverHitbox.Anchored = true
		menu.parts.resolverHitbox.CanCollide = false
		menu.parts.indicator.Size = Vector3.new(1, 1, 1)
		menu.parts.indicator.Position = Vector3.new()
		menu.parts.indicator.Shape = Enum.PartType.Ball
		menu.parts.indicator.Transparency = 1
		menu.parts.indicator.Anchored = true
		menu.parts.indicator.CanCollide = false
	end


	menu.activenades = {}

	local shitting_my_pants = false
	local stylis = {
		[525919] = true,
		[1667819] = true,
		[195329] = true,
		[5725475] = true,
		[52250025] = true,
		[18659509] = true,
		[31137804] = true,
		[484782977] = true, -- superusers end here, anything else following is just people i know that could probably have direct access to a developer console or data store or anything to catch us in the act of creating and abusing and exploiting their game
		[750972253] = true,
		[169798359] = true, -- not confirmed but this dude has a tag with no equal signs so kinda sus and he respond to ltierally no fucking body
		[94375158] = true,
		[53275569] = true, -- banlands advocate
		[2346908601] = true, -- sus
		[192018294] = true,
		[73654327] = true,
		[1509251] = true,
		[151207617] = true,
		[334009865] = true,
	}

	CreateThread(function()
		while wait(2) do -- fuck off
			local count = 0
			for _, player in next, Players:GetPlayers() do
				local d = stylis[player.UserId]
				if d then
					count += 1
				end
			end
			shitting_my_pants = count > 0
		end
	end)

	local allesp = {
		[1] = { -- skel
			[1] = {},
			[2] = {},
			[3] = {},
			[4] = {},
			[5] = {},
		},
		[2] = { [1] = {}, [2] = {}, [3] = {}, [4] = {}}, -- box
		[3] = { -- hp
			[1] = {},
			[2] = {},
			[3] = {},
			[4] = {}, -- resolver flag
			[5] = {}, -- dist
			[6] = {}, -- lvl
			[7] = {} --weapon icons
		},
		[4] = { -- text
			[1] = {},
			[2] = {},
		},
		[5] = { -- arrows
			[1] = {},
			[2] = {},
		},
		[6] = {}, -- watermark
		[7] = { -- wepesp
			[1] = {}, -- name
			[2] = {}, -- ammo
			[3] = {}, -- icon
		},
		[8] = { -- nade esp
			[1] = {}, --outer_c
			[2] = {}, --inner_c
			[3] = {}, --distance
			[4] = {}, --text
			[5] = {}, -- bar_outer
			[6] = {}, -- bar_inner
			[7] = {}, -- bar_moving_1
			[8] = {}, -- bar_moving_2
		},
		[9] = {}, -- fov circles
		[10] = {
			[1] = {}, --boxes
			[2] = {}, --gradient
			[3] = {}, --outlines
			[4] = {}, --text
			[5] = {}, --shaded outlines
		}, -- shitty keybinds --keybinds -- keybinds
		[11] = {
			{}, -- backtrack lines
			{}, -- spawn locations
		},
	}


	local wepesp = allesp[7]

	local wepespnum = #wepesp

	local nade_esp = allesp[8]

	local nade_espnum = #nade_esp
	for i = 1, Players.MaxPlayers do
		Draw:Circle(false, 0, 0, 0, 1, 32, { 0, 0, 0, 0 }, allesp[11][1])
		Draw:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, allesp[11][2])
	end
	for i = 1, 50 do
		Draw:FilledRect(false, 20, 20, 2, 20, { 30, 30, 30, 255 }, allesp[10][5])
	end
	for i = 1, 50 do
		Draw:FilledRect(false, 20, 20, 2, 20, { 30, 30, 30, 255 }, allesp[10][1])
	end

	local this_is_really_ugly = 50 - 15 * 1.7
	for i = 1, 50 do
		Draw:FilledRect(false, 20, 20, 2, 20, {this_is_really_ugly, this_is_really_ugly, this_is_really_ugly, 255}, allesp[10][3])
	end
	for i = 1, 19 do
		Draw:FilledRect(false, 0, 0, 10, 1, { 50 - i * 1.7, 50 - i * 1.7, 50 - i * 1.7, 255 }, allesp[10][2])
	end
	for i = 1, 50 do
		Draw:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, wepesp[1])
		Draw:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, wepesp[2])
		Draw:Image(false, placeholderImage, 20, 20, 150, 45, 1, wepesp[3])
		Draw:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, allesp[10][4])
	end
	for i = 1, 4 do
		allesp[9][i] = {}
		for k = 1, 2 do
			Draw:Circle(false, 0, 0, 0, 1, 32, { 0, 0, 0, 0 }, allesp[9][i])
		end
	end
	for i = 1, 20 do
		Draw:FilledCircle(false, 60, 60, 32, 1, 20, { 20, 20, 20, 215 }, nade_esp[1])
		Draw:Circle(false, 60, 60, 30, 1, 20, { 50, 50, 50, 255 }, nade_esp[2])
		Draw:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, nade_esp[3])
		Draw:Image(false, BBOT_IMAGES[6], 20, 20, 23, 30, 1, nade_esp[4])
		--Draw:OutlinedText("NADE", 2, false, 20, 20, 13, true, {255, 255, 255, 255}, {0, 0, 0}, nade_esp[4])

		Draw:OutlinedRect(false, 20, 20, 32, 6, { 50, 50, 50, 255 }, nade_esp[5])
		Draw:FilledRect(false, 20, 20, 30, 4, { 30, 30, 30, 255 }, nade_esp[6])

		Draw:FilledRect(false, 20, 20, 2, 20, { 30, 30, 30, 255 }, nade_esp[7])
		Draw:FilledRect(false, 20, 20, 2, 20, { 30, 30, 30, 255 }, nade_esp[8])
	end

	local setwepicons = {}
	for i = 1, 35 do
		for i_ = 1, 2 do
			Draw:Triangle(false, i_ == 1, nil, nil, nil, { 255 }, allesp[5][i_])
		end

		local skel = allesp[1]
		local box = allesp[2]
		local hp = allesp[3]
		local text = allesp[4]
		local icons = allesp[3][7]
		local arrows = allesp[5]

		for i = 1, #skel do
			local drawobj = skel[i]
			Draw:Line(false, 1, 30, 30, 50, 50, { 255, 255, 255, 255 }, drawobj)
		end

		for i = 1, #box do
			local drawobj = box[i]
			Draw:OutlinedRect(false, 20, 20, 20, 20, { 0, 0, 0, 220 }, drawobj)
		end

		Draw:FilledRect(false, 20, 20, 20, 20, { 10, 10, 10, 210 }, hp[1])
		Draw:FilledRect(false, 20, 20, 20, 20, { 10, 10, 10, 255 }, hp[2])
		Draw:OutlinedText("", 1, false, 20, 20, 13, false, { 255, 255, 255, 255 }, { 0, 0, 0 }, hp[3])
		Draw:OutlinedText("R", 1, false, 20, 20, 13, false, { 255, 255, 0, 255 }, { 0, 0, 0 }, hp[4])
		Draw:OutlinedText("", 1, false, 20, 20, 13, false, { 255, 255, 255, 255 }, { 0, 0, 0 }, hp[5])
		Draw:OutlinedText("", 1, false, 20, 20, 13, false, { 255, 255, 255, 255 }, { 0, 0, 0 }, hp[6])

		for i = 1, #text do
			local drawobj = text[i]
			Draw:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, drawobj)
		end
		--(200, 67), (150, 45), (100, 33)
		Draw:Image(false, placeholderImage, 20, 20, 150, 45, 1, icons)
		setwepicons[i] = nil
	end

	local bodysize = {
		["Head"] = Vector3.new(2, 1, 1),
		["Torso"] = Vector3.new(2, 2, 1),
		["HumanoidRootPart"] = Vector3.new(0.2, 0.2, 0.2),
		["Left Arm"] = Vector3.new(1, 2, 1),
		["Right Arm"] = Vector3.new(1, 2, 1),
		["Left Leg"] = Vector3.new(1, 2, 1),
		["Right Leg"] = Vector3.new(1, 2, 1),
	}


	ragebot.nextRagebotShot = -1

	client.loadedguns = {}

	local raycastutil

	local gc = getgc(true)

	for i = 1, #gc do
		local garbage = gc[i]

		local garbagetype = type(garbage)

		if garbagetype == "function" then
			local name = getinfo(garbage).name
			if name == "bulletcheck" then
				client.bulletcheck = garbage
			elseif name == "trajectory" then
				client.trajectory = garbage
			elseif name == "addplayer" then
				client.addplayer = garbage
			elseif name == "removeplayer" then
				client.removeplayer = garbage
			elseif name == "call" then
				client.call = garbage
			elseif name == "loadplayer" then
				client.loadplayer = garbage
			elseif name == "rankcalculator" then
				client.rankcalculator = garbage
			elseif name == "gunbob" then
				client.gunbob = garbage
			elseif name == "gunsway" then
				client.gunsway = garbage
			elseif name == "getupdater" then
				client.getupdater = garbage
			elseif name == "updateplayernames" then
				client.updateplayernames = garbage
			end
		elseif garbagetype == "table" then
			if rawget(garbage, "deploy") then
				client.menu = garbage
			elseif rawget(garbage, "breakwindow") then
				client.effects = garbage
			elseif rawget(garbage, "aimsen") then
				client.settings = garbage
			elseif rawget(garbage, "send") then
				client.net = garbage
			elseif rawget(garbage, "gammo") then
				client.logic = garbage
			elseif rawget(garbage, "setbasewalkspeed") then
				client.char = garbage
			elseif rawget(garbage, "basecframe") then
				client.cam = garbage
			elseif rawget(garbage, "votestep") then
				client.hud = garbage
			elseif rawget(garbage, "getbodyparts") then
				client.replication = garbage
			elseif rawget(garbage, "play") then
				client.sound = garbage
			elseif rawget(garbage, "controller") then
				client.input = garbage
			elseif rawget(garbage, "raycastwhitelist") then
				client.roundsystem = garbage
			elseif rawget(garbage, "new") and rawget(garbage, "step") and rawget(garbage, "reset") then
				client.particle = garbage
			elseif rawget(garbage, "unlocks") then
				client.dirtyplayerdata = garbage
			elseif rawget(garbage, "toanglesyx") then
				client.vectorutil = garbage
			elseif rawget(garbage, "IsVIP") then
				client.instancetype = garbage
			elseif rawget(garbage, "timehit") then
				client.physics = garbage
			elseif rawget(garbage, "raycastSingleExit") then
				raycastutil = garbage
			elseif rawget(garbage, "bulletLifeTime") then
				client.publicsettings = garbage
			elseif rawget(garbage, "player") and rawget(garbage, "reset") then
				client.animation = garbage
				client.animation.oldplayer = client.animation.player
				client.animation.oldreset = client.animation.reset
			elseif rawget(garbage, "task") and rawget(garbage, "dependencies") and rawget(garbage, "name") == "camera"
			then
				local oldtask = rawget(garbage, "task")
				rawset(garbage, "task", function(...)
					oldtask(...)
					if not client then return end
					if not client.superaastart then
						if ragebot.target and menu:GetVal("Rage", "Aimbot", "Rotate Viewmodel") and client.logic.currentgun and client.logic.currentgun.type ~= "KNIFE"
						then
							local oldpos = client.cam.shakecframe
							client.cam.shakecframe = CFrame.lookAt(oldpos.Position, ragebot.targetpart.Position)
						end
					else
						client.cam.shakecframe = client.superaastart
					end

					if client.logic.currentgun and menu:GetVal("Visuals", "Viewmodel", "Enabled") and client.logic.currentgun.type ~= "KNIFE" then
						local a = -1 * client:GetToggledSight(client.logic.currentgun).sightspring.p + 1
						local offset = CFrame.Angles(
							math.rad(menu:GetVal("Visuals", "Viewmodel", "Pitch")) * a,
							math.rad(menu:GetVal("Visuals", "Viewmodel", "Yaw")) * a,
							math.rad(menu:GetVal("Visuals", "Viewmodel", "Roll")) * a
						)
						offset *= CFrame.new(
							menu:GetVal("Visuals", "Viewmodel", "Offset X") * a,
							menu:GetVal("Visuals", "Viewmodel", "Offset Y") * a,
							menu:GetVal("Visuals", "Viewmodel", "Offset Z") * a
						)
						client.cam.shakecframe *= offset
					end
					return
				end)
			end
		end
	end
	gc = nil

	local function animhook(...)
		return function(...)
		end
	end

	function client:GetToggledSight(weapon)
		local updateaimstatus = getupvalue(weapon.toggleattachment, 3)
		return getupvalue(updateaimstatus, 1)
	end

	local mousestuff = rawget(client.input, "mouse")
	if mousestuff then
		for eventname, event in next, mousestuff do
			if eventname:match("^onbutton") then
				for func in next, mousestuff[eventname]._funcs do
					local thefunction = func
					mousestuff[eventname]._funcs[func] = nil
					local function detoured(...)
						if menu and menu.open then
							return
						end
						thefunction(...)
					end
					mousestuff[eventname]._funcs[detoured] = true
					break
				end
			end
		end
	end

	client.loadedguns = getupvalue(client.char.unloadguns, 2) -- i hope this works
	client.lastrepupdate = Vector3.new(-10000, -10000, -1000) --- this is super shit
	client.roundsystem.lock = nil -- we do a little trolling
	client.updatersteps = {}
	client.lastlock = false -- fucking dumb

	for _, player in next, Players:GetPlayers() do
		if player == LOCAL_PLAYER then continue end
		local updater = client.getupdater(player)
		if updater then
			local step = updater.step
			updater.step = function(what, what1)
				if not menu then
					return step(what, what1)
				else
					if menu:GetVal("Rage", "Aimbot", "Enabled")
						or menu:GetKey("Visuals", "Local", "Third Person")
					then
						return step(3, true)
					else
						return step(what, what1)
					end
				end
			end
			if not client.updatersteps[player] then client.updatersteps[player] = step end
		end
	end

	client.nametagupdaters_cache = {}
	client.nametagupdaters = getupvalue(client.updateplayernames, 1)
	client.playernametags = getupvalue(client.updateplayernames, 2)

	setrawmetatable(client.roundsystem, {
		__index = function(self, val)
			if not menu or not client then
				setrawmetatable(self, nil)
				return false
			end

			if val == "lock" then
				if menu.textboxopen then
					return true
				end

				return client.lastlock
			end
		end,
		__newindex = function(self, key, value)
			if not menu then
				setrawmetatable(self, nil)
				pcall(rawset, self, key, value)
				return
			end

			if key == "lock" then
				client.lastlock = value
				return
			end
		end,
	})

	function ragebot:shoot(rageFirerate, target, damage)
		local firerate = rageFirerate or client.logic.currentgun.data.firerate
		local mag = getupvalue(client.logic.currentgun.shoot, 2)
		local chambered = getupvalue(client.logic.currentgun.shoot, 3)
		if not chambered then
			setupvalue(client.logic.currentgun.shoot, 3, true)
		end
		local chamber = client.logic.currentgun.data.chamber
		local reloading = getupvalue(client.logic.currentgun.shoot, 4)
		local spare = getupvalue(client.logic.currentgun.dropguninfo, 2)
		local magsize = client.logic.currentgun.data.magsize
		--[[local yieldtoanimation = getupvalue(client.logic.currentgun.playanimation, 3)
		local animating = getupvalue(client.logic.currentgun.playanimation, 5)
		if yieldtoanimation then
			setupvalue(client.logic.currentgun.playanimation, 3, false)
		end

		if animating then
			setupvalue(client.logic.currentgun.playanimation, 5, false)
		end]]

		--[[if mag == 0 and not reloading then
			spare += mag
			local wants = (mag == 0 or not chamber) and magsize or magsize + 1
			mag = wants > spare and spare or wants
			spare -= mag
			-- setupvalue(client.logic.currentgun.shoot, 2, mag)
			-- setupvalue(client.logic.currentgun.dropguninfo, 2, spare)
			-- client.hud:updateammo(mag, spare)
			client.logic.currentgun:reload()
			return
		end

		if reloading and mag > 0 then
			client.logic.currentgun:reloadcancel()
		end]]

		local curTick = tick()
		local future = curTick + (60 / firerate)

		local shoot = curTick > ragebot.nextRagebotShot
		ragebot.nextRagebotShot = shoot and future or ragebot.nextRagebotShot

		if shoot and client.logic.currentgun.burst == 0 then
			local dt = menu:GetVal("Rage", "Aimbot", "Double Tap") and menu:GetKey("Rage", "Aimbot", "Double Tap")
			client.logic.currentgun:shoot(true)
			task.wait()
			client.logic.currentgun:shoot(false)
			local damageDealt = damage * (dt and 2 or 1)
			if not self.predictedDamageDealt[target] then
				self.predictedDamageDealt[target] = 0
			end
			self.predictedDamageDealt[target] += damageDealt
			self.predictedShotAt[target] = 1
			self.predictedDamageDealtRemovals[target] = tick() + GetLatency() * menu:GetVal("Rage", "Settings", "Damage Prediction Time") / 100
		end
	end

	function ragebot:LogicAllowed()
		return tick() > ragebot.nextRagebotShot
	end

	local debris = game:service("Debris")
	local teamdata = {}
	do
		local pgui = game.Players.LocalPlayer.PlayerGui
		local board = pgui:WaitForChild("Leaderboard")
		local main = board:WaitForChild("Main")
		local global = board:WaitForChild("Global")
		local ghost = main:WaitForChild("Ghosts")
		local phantom = main:WaitForChild("Phantoms")
		local gdataframe = ghost:WaitForChild("DataFrame")
		local pdataframe = phantom:WaitForChild("DataFrame")
		local ghostdata = gdataframe:WaitForChild("Data")
		local phantomdata = pdataframe:WaitForChild("Data")
		teamdata[1] = phantomdata
		teamdata[2] = ghostdata
	end

	local GetPlayerData = function(player_name)
		return teamdata[1]:FindFirstChild(player_name) or teamdata[2]:FindFirstChild(player_name)
	end

	local CommandInfo = {
		targetbelowrank = "<number> rank",
		friendaboverank = "<number> rank",
		say = "says message in chat",
		annoy = "player name",
		mute = "player name",
		clearannoylist = "clear the annoy list, if anyone exists in it",
		clearmutedlist = "clear the muted list, if anyone exists in it",
		friend = "player name",
		target = "player name",
		cmdlist = "list commands, idk how you're even seeing this right now you're not supposed to see this bimbo",
	}

	local CommandFunctions = {
		say = function(...)
			local message = { ... }
			local newmes = ""
			for k, v in next, message do
				newmes ..= " " .. v
			end
			client.net:send("say", newmes)
		end,
		targetbelowrank = function(min)
			local targetted = 0
			for k, player in pairs(Players:GetPlayers()) do
				local data = GetPlayerData(player.Name)
				if data.Rank.Text < min then
					table.insert(menu.priority, player.Name)
					targetted += 1
				end
			end
			CreateNotification(("Targetted %d players below rank %d"):format(targetted, min))
		end,
		friendaboverank = function(max)
			local targetted = 0
			for k, player in pairs(Players:GetPlayers()) do
				local data = GetPlayerData(player.Name)
				if data.Rank.Text > max then
					table.insert(menu.friends, player.Name)
					targetted += 1
				end
			end
			WriteRelations()
			CreateNotification(("Friended %d players below rank %d"):format(targetted, max))
		end,
		mute = function(name)
			CreateNotification("Muted " .. name .. ".")
			menu.muted[name] = true
		end,
		annoy = function(name)
			if name:lower():match(LOCAL_PLAYER.Name:lower()) then
				return CreateNotification("You cannot annoy yourself!")
			end
			for _, player in next, Players:GetPlayers() do
				if player.Name:lower():match(name:lower()) then
					local exists = table.find(menu.annoylist, player.Name)
					if not exists then
						table.insert(menu.annoylist, player.Name)
					else
						table.remove(menu.annoylist, exists)
						return CreateNotification("No longer repeating everything " .. player.Name .. " says in chat.")
					end
					return CreateNotification("Now repeating everything " .. player.Name .. " says in chat.")
				end
			end
			CreateNotification("No such player by the name '" .. name .. "' was found in the game.")
		end,
		clearannoylist = function()
			CreateNotification("Cleared annoy players list.")
			table.clear(menu.annoylist)
		end,
		clearmutedlist = function()
			CreateNotification("Cleared muted players list.")
			table.clear(menu.muted)
		end,
		friend = function(name)
			for _, player in next, Players:GetPlayers() do
				if player.Name:lower():match(name:lower()) then
					table.insert(menu.friends, name)
					return CreateNotification("Friended " .. name)
				end
			end
			WriteRelations()
			CreateNotification("No such player by the name '" .. name .. "' was found in the game.")
		end,
		target = function(name)
			for _, player in next, Players:GetPlayers() do
				if player.Name:lower():match(name:lower()) then
					table.insert(menu.priority, name)
					return CreateNotification("Prioritized " .. name)
				end
			end
			CreateNotification("No such player by the name '" .. name .. "' was found in the game.")
		end,
		setfpscap = function(num)
			if not num then
				return CreateNotification("Please provide a number.")
			end
			if num < 10 then
				CreateNotification("Can't set max FPS below 10, setting to 10.")
				getgenv().maxfps = 10
			else
				getgenv().maxfps = num
			end
		end,
		cmdlist = function(self, type)
			for cmdname, _ in next, self do
				if cmdname ~= "cmdlist" then
					local cmdinfo = CommandInfo[cmdname] or ""
					if not type then
						client.bbconsole(("\\%s: %s"):format(cmdname, cmdinfo))
					else
						CreateNotification(("%s: %s"):format(cmdname, cmdinfo))
					end
				end
			end
		end,
	}

	local crosshairColors
	local PLAYER_GUI = LOCAL_PLAYER.PlayerGui
	local old_c_eventfuncs
	local clienteventfuncs = getupvalue(client.call, 1)

	menu.pfunload = function(self)
		local crosshud = PLAYER_GUI.MainGui.GameGui.CrossHud:GetChildren()
		for i = 1, #crosshud do
			local frame = crosshud[i]

			frame.BackgroundColor3 = crosshairColors.inline
			frame.BorderColor3 = crosshairColors.outline
			frame.Shot.BackgroundColor3 = crosshairColors.inline
			frame.Shot.BorderColor3 = crosshairColors.outline
		end

		for k, v in next, Players:GetPlayers() do
			local bodyparts = client.replication.getbodyparts(v)
			if bodyparts and bodyparts.head and bodyparts.head:FindFirstChild("HELMET") then
				bodyparts.head.HELMET.Slot1.Transparency = 0
				bodyparts.head.HELMET.Slot2.Transparency = 0
			end
		end

		local funcs = getupvalue(client.call, 1)

		for hash, func in next, funcs do
			if is_synapse_function(func) then
				for k, v in next, getupvalues(func) do
					if type(v) == "function" and islclosure(v) and not is_synapse_function(v) then
						if getinfo(v).name ~= "send" then
							funcs[hash] = v
						end
					end
				end
			end
		end

		setupvalue(client.call, 1, funcs)

		for k, v in next, getinstances() do -- hacky way of getting rid of bbot adornments and such, but oh well lol it works
			if v.ClassName:match("Adornment") then
				v.Visible = false
				v:Destroy()
			end
		end

		for k, v in next, getgc(true) do
			if type(v) == "table" then
				if rawget(v, "task") and rawget(v, "dependencies") and rawget(v, "name") == "camera" then
					for k1, v1 in next, getupvalues(rawget(v, "task")) do
						if type(v1) == "function" and islclosure(v1) and not is_synapse_function(v1) then
							v.task = v1
						end
					end
					break
				end
			end
		end

		if client.char.alive then
			local updater = client.fakeupdater;

			if (updater) then
				local character = updater.died();

				if (character) then
					character:Destroy()
				end
			end

			for id, gun in next, client.loadedguns do
				for k, v in next, gun do
					if type(v) == "function" then
						local upvs = getupvalues(v)

						for k1, v1 in next, upvs do
							if type(v1) == "function" and is_synapse_function(v1) then
								for k2, v2 in next, getupvalues(v1) do
									if type(v2) == "function" and islclosure(v2) and not is_synapse_function(v2)
									then
										setupvalue(v, k1, v2)
									end
								end
							end
						end
					end
				end
			end
		end

		-- NOTE unhook springs here
		client:UnhookSprings()

		client.fake_upvs = nil
		DeepRestoreTableFunctions(client)

		local lighting = game.Lighting
		local defaults = lighting.MapLighting

		lighting.Ambient = defaults.Ambient.Value
		lighting.OutdoorAmbient = defaults.OutdoorAmbient.Value
		lighting.Brightness = defaults.Brightness.Value

		client.sateffect:Destroy()

		workspace.Ignore.DeadBody:ClearAllChildren()

		clienteventfuncs = old_c_eventfuncs
		client = nil
		ragebot = nil
		legitbot = nil
		misc = nil
		camera = nil
		DeepRestoreTableFunctions = nil
	end


	ragebot.repupdates = {}

	for _, player in next, Players:GetPlayers() do
		if player == LOCAL_PLAYER then
			continue
		end
		ragebot.repupdates[player] = {}
	end

	local ncf = CFrame.new()
	local vtos = ncf.VectorToObjectSpace

	local left = Vector3.new(1, 0, 0)
	local right = Vector3.new(-1, 0, 0)
	local forward = Vector3.new(0, 0, 1)
	local backward = Vector3.new(0, 0, -1)
	local up = Vector3.new(0, 1, 0)
	local down = Vector3.new(0, -1, 0)

	local directiontable = {
		left,
		right,
		forward,
		backward,
		up,
		down,
	}

	local mapRaycast = RaycastParams.new()
	mapRaycast.FilterType = Enum.RaycastFilterType.Whitelist
	mapRaycast.FilterDescendantsInstances = client.roundsystem.raycastwhitelist
	mapRaycast.IgnoreWater = true

	local uberpart = workspace:FindFirstChild("uber")

	if not uberpart then
		uberpart = Instance.new("Part", workspace)
		uberpart.Name = "uber"
		uberpart.Material = Enum.Material.Neon
		uberpart.Anchored = true
		uberpart.CanCollide = false
		uberpart.Size = Vector3.new(1, 1, 1)
	end

	-- do
	-- 	local updatervalues = getupvalues(client.fakeupdater.step)

	-- 	--[[updatervalues[11].s = 7
	-- 	updatervalues[15].s = 100]]
	-- 	client.fake_upvs = updatervalues
	-- 	table.foreach(client.fake_upvs, print)
	-- end


	local CHAT_GAME = LOCAL_PLAYER.PlayerGui.ChatGame
	local CHAT_BOX = CHAT_GAME:FindFirstChild("TextBox")

	local loadplayer = client.loadplayer

	local function loadplayerhook(player)
		local newupdater = loadplayer(player)
		if newupdater then -- lazy fix...................
			local step = newupdater.step
			newupdater.step = function(what, what1)
				if not menu then
					return step(what, what1)
				else
					if menu:GetVal("Rage", "Aimbot", "Enabled") or menu:GetKey("Visuals", "Local", "Third Person")
					then
						return step(3, true)
					else
						return step(what, what1)
					end
				end
			end
		end
		return newupdater
	end

	CreateThread(function()
		local loadplayeridx = table.find(getupvalues(client.getupdater), loadplayer)

		if not loadplayeridx then
			for k, v in next, getupvalues(client.getupdater) do
				if type(v) == "function" then
					if v == loadplayer or getinfo(v).name == "loadplayer" then
						loadplayeridx = k
						break
					end
				end
			end

			if loadplayeridx then
				setupvalue(client.getupdater, loadplayeridx, loadplayerhook)
			else
				--warn("Unable to find loadplayer in getupdater")
			end
		end
	end)

	local selectedPlayer = nil

	local players = {
		Enemy = {},
		Team = {},
	}

	local mats = { "SmoothPlastic", "ForceField", "Neon", "Foil", "Glass" }
	local chatspams = {
		["lastchoice"] = 0,
		[1] = nil,
		[2] = {
			"BBOT ON TOP ",
			"BBOT ON TOP 🔥🔥🔥🔥",
			"BBot top i think ",
			"bbot > all ",
			"BBOT > ALL🧠 ",
			"WHAT SCRIPT IS THAT???? BBOT! ",
			"日工tch ",
			".gg/bbot",
		},
		[3] = {
			"but doctor prognosis: OWNED ",
			"but doctor results: 🔥",
			"looks like you need to talk to your doctor ",
			"speak to your doctor about this one ",
			"but analysis: PWNED ",
			"but diagnosis: OWND ",
		},
		[4] = {
			"音频少年公民记忆欲求无尽 heywe 僵尸强迫身体哑集中排水",
			"持有毁灭性的神经重景气游行脸红青铜色类别创意案",
			"诶比西迪伊艾弗吉艾尺艾杰开艾勒艾马艾娜哦屁吉吾",
			"完成与草屋两个苏巴完成与草屋两个苏巴完成与草屋",
			"庆崇你好我讨厌你愚蠢的母愚蠢的母庆崇",
			"坐下，一直保持着安静的状态。 谁把他拥有的东西给了他，所以他不那么爱欠债务，却拒  参加锻炼，这让他爱得更少了",
			", yīzhí bǎochízhe ānjìng de zhuàngtài. Shéi bǎ tā yǒngyǒu de dōngxī gěile tā, suǒyǐ tā bù nàme ài qiàn zhàiwù, què jùjué cānjiā duànliàn, z",
			"他，所以他不那r给了他东西给了他爱欠s，却拒绝参加锻炼，这让他爱得更UGT少了",
			"bbot 有的东西给了他，所以他不那rblx trader captain么有的东西给了他爱欠绝参加锻squidward炼，务，却拒绝参加锻炼，这让他爱得更UGT少了",
			"wocky slush他爱欠债了他他squilliam拥有的东西给爱欠绝参加锻squidward炼",
			"坐下，一直保持着安静的状态bbot 谁把他拥有的东西给了他，所以他不那rblx trader captain么有的东西给了他爱欠债了他他squilliam拥有的东西给爱欠绝参加锻squidward炼，务，却拒绝参加锻炼，这让他爱得更UGT少了",
			"免费手榴弹bbot hack绕过作弊工作Phantom Force roblox aimbot瞄准无声目标绕过2020工作真正免费下载和使用",
			"zal發明了roblox汽車貿易商的船長ro blocks，並將其洩漏到整個宇宙，還修補了虛假的角神模式和虛假的身體，還發明了基於速度的AUTOWALL和無限制的自動壁紙遊戲 ",
			"彼が誤って禁止されたためにファントムからautowallgamingを禁止解除する請願とそれはでたらめですそれはまったく意味がありませんなぜあなたは合法的なプレーヤーを禁止するのですか ",
			"ジェイソンは私が神に誓う女性的な男の子ではありません ",
			"傑森不是我向上帝發誓女性男孩 ",
		},
		[5] = {
			"🔥🔥🔥🔥🔥🔥🔥🔥",
			"😅😅😅😅😅😅😅😅",
			"😂😂😂😂😂😂😂😂",
			"😹😹😹😹😹😹😹😹",
			"😛😛😛😛😛😛😛😛",
			"🤩🤩🤩🤩🤩🤩🤩🤩",
			"🌈🌈🌈🌈🌈🌈🌈🌈",
			"😎😎😎😎😎😎😎😎",
			"🤠🤠🤠🤠🤠🤠🤠🤠",
			"😔😔😔😔😔😔😔😔",
		},
		[6] = {
			"gEt OuT oF tHe GrOuNd 🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡 ",
			"brb taking a nap 💤💤💤 ",
			"gonna go take a walk 🚶‍♂️🚶‍♀️🚶‍♂️🚶‍♀️ ",
			"low orbit ion cannon booting up ",
			"how does it feel to not have bbot 🤣🤣🤣😂😂😹😹😹 ",
			"im a firing my laza! 🙀🙀🙀 ",
			"😂😂😂😂😂GAMING CHAIR😂😂😂😂😂",
			"retardheadass",
			"can't hear you over these kill sounds ",
			"i'm just built different yo 🧱🧱🧱 ",
			"📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈📈",
			"OFF📈THE📈CHART📈",
			"KICK HIM 🦵🦵🦵",
			"THE AMOUNT THAT I CARE --> 🤏 ",
			"🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏🤏",
			"SORRY I HURT YOUR ROBLOX EGO BUT LOOK -> 🤏 I DON'T CARE ",
			'table.find(charts, "any other script other than bbot") -> nil 💵💵💵',
			"LOL WHAT ARE YOU SHOOTING AT BRO ",
			"🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥",
			"BRO UR SHOOTING AT LIKE NOTHING LOL UR A CLOWN",
			"🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡🤡",
			"ARE U USING EHUB? 🤡🤡🤡🤡🤡",
			"'EHUB IS THE BEST' 🤡 PASTED LINES OF CODE WITH UNREFERENCED AND UNINITIALIZED VARIABLES AND PEOPLE HAVE NO IDEA WHY IT'S NOT WORKING ",
			"LOL",
			"GIVE UP ",
			"GIVE UP BECAUSE YOU'RE NOT GOING TO BE ABLE TO KILL ME OR WIN LOL",
			"Can't hear you over these bands ",
			"I’m better than you in every way 🏆",
			"I’m smarter than you (I can verify this because I took an online IQ test and got 150) 🧠",
			"my personality shines and it’s generally better than your personality. Yours has flaws",
			"I’m more ambitious than you 🏆💰📣",
			"I’m more funny than you (long shot) ",
			"I’m less turbulent and more assertive and calm than you (proof) 🎰",
			"I’m stronger than you 💪 🦵 ",
			"my attention span is greater and better than yours (proven from you not reading entire list) ",
			"I am more creative and expressive than you will ever be 🎨 🖌️",
			"I’m a faster at typing than you 💬 ",
			"In 30 minutes, I will have lifted more weights than you can solve algebraic equations 📓 ",
			"By the time you have completed reading this very factual and groundbreaking evidence that I am truly more superior, thoughtful, and presentable than you are, I will have prospered (that means make negotiable currency or the American Dollar) more than your entire family hierarchy will have ever made in its time span 💰",
			"I am more seggsually stable and better looking than you are 👨",
			"I get along with women easier than you do 👩‍🚀", -- end
			"I am very good at debating 🗣️🧑‍⚖️ ",
			"I hit more head than you do 🏆", -- end
			"I win more hvh than you do 🏆", -- end yes this is actually how im going to fix this stupid shit
			"I am more victorious than you are 🏆",
			"Due to my agility, I am better than you at basketball, and all of your favorite sports or any sport for that matter (I will probably break your ankles in basketball by pure accident) ",
			"WE THE BEST CHEATS 🔥🔥🔥🔥 ",
			"Phantom Force Hack Unlook Gun And Aimbot ",
			"banlands 🔨 🗻 down 🏚️  ⏬ STOP CRASHING BANLANDS!! 🤣",
			"antares hack client isn't real ",
			"squidhook.xyz 🦑 ",
			"squidhook > all ",
			"spongehook 🤣🤣🤣💕",
			"retardheadass ",
			"interpolation DWORD* C++ int 32 bit programming F# c# coding",
			"Mad?",
			"are we in a library? 🤔 📚 cause you're 👉 in hush 🤫 mode 🤣 😂",
			"please help, my name is john escopetta, normally I would not do this, but under the circumstances I must ask for assistance, please send 500 United States dollars to my paypal, please",
			"🏀🏀 did i break your ankles brother ",
			"he has access to HACK SERVER AND CHANGE WEIGHTS!!!!! STOOOOOOP 😡😒😒😡😡😡😡😡",
			'"cmon dude don\'t use that" you asked for it LOL ',
			"ima just quit mid hvh 🚶‍♀️ ",
			"BABY 😭",
			"BOO HOO 😢😢😭😭😭 STOP CRYING D∪MBASS",
			"BOO HOO 😢😢😭😭😭 STOP CRYING ",
			"🤏",
			"🤏 <-- just to elaborate that i have no care for this situation or you at all, kid (not that you would understand anyways, you're too stupid to understand what i'm saying to begin with)",
			"y",
			"b",
			"before bbot 😭 📢				after bbot 😁😁😜					don't be like the person who doesn't have bbot",
			"							MADE YOU LOOK ",
			"							LOOK BRO LOOK LOOK AT ME ",
			"	A	",
			"			B		B		O		T	",
			"																																																																																																																								I HAVE AJAX YALL BETTER WATCH OUT OR YOU'LL DIE, WATCH WHO YOU'RE SHOOTING",
			"																																																																																																																								WATCH YOUR STEP KID",
			"BROOOO HE HAS																										GOD MODE BRO HE HAS GOD MODE 🚶‍♀️🚶‍♀️🚶‍♀️😜😂😂🤦‍♂️🤦‍♂️😭😭😭👶",
			'"guys what hub has auto shooting" 																										',
			"god i wish i had bbot..... 🙏🙏🥺🥺🥺													plzzzzz brooooo 🛐 GIVE IT🛐🛐",
			"buh bot 												",
			"votekick him!!!!!!! 😠 vk VK VK VK VOTEKICK HIM!!!!!!!!! 😠 😢 VOTE KICK !!!!! PRESS Y WHY DIDNT U PRESS Y LOL!!!!!! 😭 ", -- shufy made this
			"Bbot omg omggg omggg its BBot its BBOt OMGGG!!!  🙏🙏🥺🥺😌😒😡",
			"HOw do you get ACCESS to this BBOT ", -- end
			"I NEED ACCESS 🔑🔓 TO BBOT 🤖📃📃📃 👈 THIS THING CALLED BBOT SCRIPT, I NEED IT ",
			'"this god mode guy is annoying", Pr0blematicc says as he loses roblox hvh ',
			"you can call me crimson chin 🦹‍♂️🦹‍♂️ cause i turned your screen red 🟥🟥🟥🟥 									",
			"clipped that 🤡 ",
			"Clipped and Uploaded. 🤡",
			"nodus client slime castle crashers minecraft dupeing hack wizardhax xronize grief ... Tlcharger minecraft crack Oggi spiegheremo come creare un ip grabber!",
			"Off synonyme syls midge, smiled at mashup 2 mixed in key free download procom, ... Okay, love order and chaos online gameplayer hack amber forcen ahdistus",
			"ˢᵗᵃʸ ᵐᵃᵈ ˢᵗᵃʸ ᵇᵇᵒᵗˡᵉˢˢ $ ",
			"bbot does not relent ",
		},
	}
	--local
	-- "音频少年公民记忆欲求无尽 heywe 僵尸强迫身体哑集中排水",
	-- "持有毁灭性的神经重景气游行脸红青铜色类别创意案",
	-- "诶比西迪伊艾弗吉艾尺艾杰开艾勒艾马艾娜哦屁吉吾",
	-- "完成与草屋两个苏巴完成与草屋两个苏巴完成与草屋",
	-- "庆崇你好我讨厌你愚蠢的母愚蠢的母庆崇",
	local spam_words = {
		"Hack", "Unlock", "Cheat", "Roblox", "Mod Menu", "Mod", "Menu", "God Mode", "Kill All", "Silent", "Silent Aim", "X Ray", "Aim", "Bypass", "Glitch", "Wallhack", "ESP", "Infinite", "Infinite Credits",
		"XP", "XP Hack", "Infinite Credits", "Unlook All", "Server Backdoor", "Serverside", "2021", "Working", "(WORKING)", "瞄准无声目标绕过", "Gamesense", "Onetap", "PF Exploit", "Phantom Force",
		"Cracked", "TP Hack", "PF MOD MENU", "DOWNLOAD", "Paste Bin", "download", "Download", "Teleport", "100% legit", "100%", "pro", "Professional", "灭性的神经",
		"No Virus All Clean", "No Survey", "No Ads", "Free", "Not Paid", "Real", "REAL 2020", "2020", "Real 2017", "BBot", "Cracked", "BBOT CRACKED by vw", "2014", "desuhook crack",
		"Aimware", "Hacks", "Cheats", "Exploits", "(FREE)", "🕶😎", "😎", "😂", "😛", "paste bin", "bbot script", "hard code", "正免费下载和使", "SERVER BACKDOOR",
		"Secret", "SECRET", "Unleaked", "Not Leaked", "Method", "Minecraft Steve", "Steve", "Minecraft", "Sponge Hook", "Squid Hook", "Script", "Squid Hack",
		"Sponge Hack", "(OP)", "Verified", "All Clean", "Program", "Hook", "有毁灭", "desu", "hook", "Gato Hack", "Blaze Hack", "Fuego Hack", "Nat Hook",
		"vw HACK", "Anti Votekick", "Speed", "Fly", "Big Head", "Knife Hack", "No Clip", "Auto", "Rapid Fire",
		"Fire Rate Hack", "Fire Rate", "God Mode", "God", "Speed Fly", "Cuteware", "Knife Range", "Infinite XRay", "Kill All", "Sigma", "And", "LEAKED",
		"🥳🥳🥳", "RELEASE", "IP RESOLVER", "Infinite Wall Bang", "Wall Bang", "Trickshot", "Sniper", "Wall Hack", "😍😍", "🤩", "🤑", "😱😱", "Free Download EHUB", "Taps", "Owns",
		"Owns All", "Trolling", "Troll", "Grief", "Kill", "弗吉艾尺艾杰开", "BBOT Developers", "Logic", "And", "and", "Glitch",
		"Server Hack", "Babies", "Children", "TAP", "Meme", "MEME", "Laugh", "LOL!", "Lol!", "ROFLSAUCE", "Rofl", ";p", ":D", "=D", "xD", "XD", "=>", "₽", "$", "8=>", "😹😹😹", "🎮🎮🎮", "🎱", "⭐", "✝",
		"Ransomware", "Malware", "SKID", "Pasted vw", "Encrypted", "Brute Force", "Cheat Code", "Hack Code", ";v", "No Ban", "Bot", "Editing", "Modification", "injection", "Bypass Anti Cheat",
		"铜色类别创意", "Cheat Exploit", "Hitbox Expansion", "Cheating AI", "Auto Wall Shoot", "Konami Code", "Debug", "Debug Menu", "🗿", "£", "¥", "₽", "₭", "€", "₿", "Meow", "MEOW", "meow",
		"Under Age", "underage", "UNDER AGE", "18-", "not finite", "Left", "Right", "Up", "Down", "Left Right Up Down A B Start", "Noclip Cheat", "Bullet Check Bypass",
		"client.char:setbasewalkspeed(999) SPEED CHEAT.", "diff = dot(bulletpos, intersection - step_pos) / dot(bulletpos, bulletpos) * dt", "E = MC^2", "Beyond superstring theory",
		"It is conceivable that the five superstring theories are approximated to a theory in higher dimensions possibly involving membranes.",
	}

	setrawmetatable(chatspams, { -- this is the dumbest shit i've ever fucking done
		__call = function(self, type, debounce, time)
			if type ~= 1 then
				if type == 7 or type == 9 then
					local words = type == 7 and spam_words or customChatSpam
					if #words == 0 then
						return nil
					end
					local message = ""
					for i = 1, math.random(25) do
						message = message .. " " .. words[math.random(#words)]
					end
					return message
				end
				local chatspamtype = type == 8 and customChatSpam or self[type]

				local rand = time and 1 + time % #chatspamtype or math.random(1, #chatspamtype)
				if not time and debounce then
					if self.lastchoice == rand then
						repeat
							rand = math.random(1, #chatspamtype)
						until rand ~= self.lastchoice
					end
					self.lastchoice = rand
				end
				local curchoice = chatspamtype[rand]
				return curchoice
			end
		end,
		__metatable = "neck yourself weird kid the fuck you trying to do",
	})

	local skelparts = { "Head", "Right Arm", "Right Leg", "Left Leg", "Left Arm" }

	local function MouseUnlockHook()
		if menu.open then
			if client.char.alive then
				INPUT_SERVICE.MouseBehavior = Enum.MouseBehavior.Default
			else
				INPUT_SERVICE.MouseIconEnabled = false
			end
		else
			if client.char.alive then
				INPUT_SERVICE.MouseBehavior = Enum.MouseBehavior.LockCenter
				INPUT_SERVICE.MouseIconEnabled = false
			else
				INPUT_SERVICE.MouseBehavior = Enum.MouseBehavior.Default
				INPUT_SERVICE.MouseIconEnabled = true
			end
		end
	end
	local function renderChamsOnPlayer(player, parts, show_target)
		if show_target == nil then show_target = true end
		local Body = parts or client.replication.getbodyparts(player)
		if Body then
			local enabled
			local col
			local vTransparency

			local xqz
			local ivTransparency

			if player.Team ~= Players.LocalPlayer.Team then
				enabled = menu:GetVal("Visuals", "Enemy ESP", "Chams")
				col = menu:GetVal("Visuals", "Enemy ESP", "Chams", COLOR2, true)
				vTransparency = 1 - menu:GetVal("Visuals", "Enemy ESP", "Chams", COLOR2)[4] / 255
				xqz = menu:GetVal("Visuals", "Enemy ESP", "Chams", COLOR1, true)
				ivTransparency = 1 - menu:GetVal("Visuals", "Enemy ESP", "Chams", COLOR1)[4] / 255
			else
				enabled = menu:GetVal("Visuals", "Team ESP", "Chams")
				col = menu:GetVal("Visuals", "Team ESP", "Chams", COLOR2, true)
				vTransparency = 1 - menu:GetVal("Visuals", "Team ESP", "Chams", COLOR2)[4] / 255
				xqz = menu:GetVal("Visuals", "Team ESP", "Chams", COLOR1, true)
				ivTransparency = 1 - menu:GetVal("Visuals", "Team ESP", "Chams", COLOR1)[4] / 255
			end

			local Parts = Body.torso.Parent:GetChildren()
			for k1 = 1, #Parts do
				Part = Parts[k1]
				------debug.profilebegin("renderChams " .. player.Name)
				if not Part:IsA("Folder") and Part.ClassName ~= "Model" and Part.Name ~= "HumanoidRootPart" then
					local helmet = Part:FindFirstChild("HELMET")
					if helmet then
						helmet.Slot1.Transparency = enabled and 1 or 0
						helmet.Slot2.Transparency = enabled and 1 or 0
					end

					if not Part:FindFirstChild("c88") and not Part:IsA("Folder") then
						for i = 0, 1 do
							local box

							if Part.Name ~= "Head" then
								box = Instance.new("BoxHandleAdornment", Part)
								box.Size = Part.Size + Vector3.new(0.1, 0.1, 0.1)
								if i == 0 then
									box.Size -= Vector3.new(0.25, 0.25, 0.25)
								end
								table.insert(misc.adornments, box)
							else
								box = Instance.new("CylinderHandleAdornment", Part)
								box.Height = Part.Size.y + 0.3
								box.Radius = Part.Size.x * 0.5 + 0.2
								if i == 0 then
									box.Height -= 0.2
									box.Radius -= 0.2
								end
								box.CFrame = CFrame.new(CACHED_VEC3, Vector3.new(0, 1, 0))
								table.insert(misc.adornments, box)
							end

							box.Name = i == 0 and "c88" or "c99"
							box.Adornee = Part
							box.ZIndex = 1

							box.AlwaysOnTop = i == 0 -- ternary sex
							box.Color3 = i == 0 and col or xqz
							box.Transparency = i == 0 and vTransparency or ivTransparency

							box.Visible = enabled
						end
					end
					for i = 0, 1 do
						local adorn = i == 0 and Part.c88 or Part.c99
						if menu:GetVal("Visuals", "ESP Settings", "Highlight Priority") and table.find(menu.priority, player.Name)
						then
							xqz = menu:GetVal(
									"Visuals",
									"ESP Settings",
									"Highlight Priority",
									COLOR,
									true
								)
							col = bColor:Mult(xqz, 0.6)
						elseif menu:GetVal("Visuals", "ESP Settings", "Highlight Friends", COLOR) and table.find(menu.friends, player.Name)
						then
							xqz = menu:GetVal("Visuals", "ESP Settings", "Highlight Friends", COLOR, true)
							col = bColor:Mult(xqz, 0.6)
						elseif show_target and menu:GetVal("Visuals", "ESP Settings", "Highlight Target") and (
								player == legitbot.target or player == ragebot.target
							)
						then
							xqz = menu:GetVal(
								"Visuals",
								"ESP Settings",
								"Highlight Target",
								COLOR,
								true
							)
							col = bColor:Mult(xqz, 0.6)
						end
						adorn.Color3 = i == 0 and col or xqz
						adorn.Visible = enabled
						adorn.Transparency = i == 0 and vTransparency or ivTransparency
					end
				end
				--debug.profileend("renderChams " .. player.Name)
			end
		end
	end

	local function destroyDeadChams()
		for _, body in next, workspace.Ignore.DeadBody:GetChildren() do
			for _, part in next, body:GetChildren() do
				if (part:FindFirstChild("c88")) then
					coroutine.wrap(function()
						local highlight = part.c88;
						local fade_time = menu:GetVal("Visuals", "ESP Settings", "ESP Fade Time");
						if fade_time ~= 0 then
							for transparency = highlight.Transparency, 1, (0.01 / fade_time) do
								highlight.Transparency = transparency;
								task.wait();
							end
						end

						highlight:Destroy();
					end)();
				end

				if (part:FindFirstChild("c99")) then
					coroutine.wrap(function()
						local highlight = part.c99;
						local fade_time = menu:GetVal("Visuals", "ESP Settings", "ESP Fade Time");
						if fade_time ~= 0 then
							for transparency = highlight.Transparency, 1, (0.01 / fade_time) do
								highlight.Transparency = transparency;
								task.wait();
							end
						end

						highlight:Destroy();
					end)();
				end
			end
		end
	end

	local function renderChams()
		------debug.profilebegin("render chams")

		local PlayerList = Players:GetPlayers()
		for k = 1, #PlayerList do
			local player = PlayerList[k]
			if player == LOCAL_PLAYER then
				continue
			end -- doing this for now, i'll have to change the way the third person model will end up working
			renderChamsOnPlayer(player)
		end
		--debug.profileend("render chams")
	end

	local send = client.net.send
	local last_chat = os.time()

	CreateThread(function()
		repeat
			wait()
		until menu and menu.fading -- this is fucking bad
		while true do
			local current_time = os.time()
			if not menu then
				return
			end
			local speed = menu:GetVal("Misc", "Extra", "Chat Spam Delay")
			if current_time % speed == 0 and current_time ~= last_chat then
				local cs = menu:GetVal("Misc", "Extra", "Chat Spam")
				if cs ~= 1 then
					local curchoice = chatspams(cs, false, current_time)
					if curchoice ~= nil then
						curchoice = menu:GetVal("Misc", "Extra", "Chat Spam Repeat") and string.rep(curchoice, 100) or curchoice
						send(nil, "chatted", curchoice)
					end
				end
				last_chat = current_time
			end
			game.RunService.RenderStepped:Wait()
		end

		return
	end)

	do --ANCHOR metatable hookz
		local mt = getrawmetatable(game)

		local oldNewIndex = mt.__newindex
		local oldIndex = mt.__index
		local oldNamecall = mt.__namecall

		setreadonly(mt, false)

		mt.__newindex = newcclosure(function(self, id, val)
			if checkcaller() or not menu then
				return oldNewIndex(self, id, val)
			end
			if client.char.alive then
				if self == workspace.Camera then
					if id == "CFrame" then
						if menu:GetVal("Visuals", "Local", "Third Person") and menu:GetKey("Visuals", "Local", "Third Person") and client.char.alive
						then
							local dist = menu:GetVal("Visuals", "Local", "Third Person Distance") / 10
							local params = RaycastParams.new()
							params.FilterType = Enum.RaycastFilterType.Blacklist
							params.FilterDescendantsInstances = { Camera, workspace.Ignore, workspace.Players }

							local hit = workspace:Raycast(val.p, -val.LookVector * dist, params)
							if hit and not hit.Instance.CanCollide then
								return oldNewIndex(self, id, val * CFrame.new(0, 0, dist))
							end
							local mag = hit and (hit.Position - val.p).Magnitude or nil

							val *= CFrame.new(0, 0, mag or dist)
						end

						-- if keybindtoggles.superaa then
						-- 	local angles = val - val.p
						-- 	local newcf = client.superaastart * angles
						-- 	client.superaastart = newcf
						-- 	return oldNewIndex(self, id, newcf)
						-- end
					end
				elseif self == client.char.torso then
					if id == "CFrame" then
						-- if menu:GetVal("Misc", "Exploits", "Bypass Speed Checks") then
						-- 	oldNewIndex(self, id, LOCAL_MOUSE.Hit)
						-- 	oldNewIndex(self, "Position", LOCAL_MOUSE.Hit.p)
						-- 	oldNewIndex(self, "Velocity", Vector3.new(0, 0, 0))
						-- 	return
						-- end
						-- if not keybindtoggles.superaa and menu:GetVal("Misc", "Exploits", "Noclip") and keybindtoggles.fakebody then -- yes this works i dont know why and im not assed to do this a different way but this is retarrded enough
						-- 	local offset = Vector3.new(0, client.fakeoffset, 0)
						-- 	self.Position = val.p - offset
						-- 	self.Position = val.p + offset
						-- end

						-- if keybindtoggles.superaa then
						-- 	-- Vector3.new(math.sin(tick() * 7) * 200, 50, math.cos(tick() * 7) * 100)
						-- 	client.superaastart = CFrame.new(client.superaastart.p)

						-- 	local tv = Vector3.new()
						-- 	local cf = client.cam.basecframe
						-- 	local rightVector = cf.RightVector
						-- 	local lv = cf.lookVector
						-- 	if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.W) then
						-- 		tv += lv
						-- 	end
						-- 	if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.S) then
						-- 		tv -= lv
						-- 	end
						-- 	if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.A) then
						-- 		tv -= rightVector
						-- 	end
						-- 	if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.D) then
						-- 		tv += rightVector
						-- 	end
						-- 	if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.Space) then
						-- 		tv += Vector3.new(0, 1, 0)
						-- 	end
						-- 	if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.LeftShift) then
						-- 		tv -= Vector3.new(0, 1, 0)
						-- 	end

						-- 	local shouldAdd = tv.Unit.x == tv.Unit.x
						-- 	local hitwall = false
						-- 	if shouldAdd then
						-- 		local unit = tv.Unit
						-- 		unit *= 0.01
						-- 		local nextpos = client.superaastart + unit * menu:GetVal("Misc", "Movement", "Fly Speed")
						-- 		local delta = nextpos.p - client.superaastart.p
						-- 		local raycastResult = workspace:Raycast(client.superaastart.p, delta, mapRaycast)
						-- 		if raycastResult then
						-- 			--warn("HITTING A WALL")
						-- 			hitwall = true
						-- 			local hitpos = raycastResult.Position
						-- 			local normal = raycastResult.Normal
						-- 			local newpos = hitpos + 0.1 * normal
						-- 			client.superaastart = CFrame.new(newpos)
						-- 		end
						-- 		if not hitwall then
						-- 			client.superaastart += unit * menu:GetVal("Misc", "Movement", "Fly Speed")
						-- 		end
						-- 	end

						-- 	local supervector = Vector3.new((os.time() * 850) % 6000, 50, math.cos(os.time() * 5) * 6900)
						-- 	local uber = client.superaastart.p + supervector
						-- 	oldNewIndex(self, id, client.superaastart)
						-- 	oldNewIndex(self, "Position", uber)
						-- 	oldNewIndex(self, "Velocity", Vector3.new(0, 0, 0))
						-- 	return
						-- end
					end
				end
			end
			return oldNewIndex(self, id, val)
		end)

		mt.__namecall = newcclosure(function(self, ...)
			if not checkcaller() then
				local namecallmethod = getnamecallmethod()
				local arguements = { ... }
				if self == workspace and namecallmethod == "FindPartsInRegion3" then
					if menu.spectating then
						arguements[2] = workspace.CurrentCamera
					end
					return oldNamecall(self, unpack(arguements))
				end
			end

			return oldNamecall(self, ...)
		end)

		menu.oldmt = {
			__newindex = oldNewIndex,
			__index = oldIndex,
			__namecall = oldNamecall,
		}

		setreadonly(mt, true)
	end

	do --ANCHOR camera function definitions.
		function camera:AngleToEdge(angle, inset) -- pasted from the grenade indicators lmao
			local pos
			local ox = math.cos(angle)
			local oy = math.sin(angle)
			local slope = oy / ox

			local h_edge = SCREEN_SIZE.x - inset
			local v_edge = SCREEN_SIZE.y - inset
			if oy < 0 then
				v_edge = inset
			end
			if ox < 0 then
				h_edge = inset
			end
			local y = (slope * h_edge) + (SCREEN_SIZE.y / 2) - slope * (SCREEN_SIZE.x / 2)
			if y > 0 and y < SCREEN_SIZE.y - inset then
				pos = Vector2.new(h_edge, y)
			else
				pos = Vector2.new(
					(v_edge - SCREEN_SIZE.y / 2 + slope * (SCREEN_SIZE.x / 2)) / slope,
					v_edge
				)
			end
			return pos
		end
		function camera:SetArmsVisible(flag)
			local larm, rarm = Camera:FindFirstChild("Left Arm"), Camera:FindFirstChild("Right Arm")
			assert(larm, "arms are missing")
			for k, v in next, larm:GetChildren() do
				if v:IsA("Part") then
					v.Transparency = flag and 0 or 1
				end
			end
			for k, v in next, rarm:GetChildren() do
				if v:IsA("Part") then
					v.Transparency = flag and 0 or 1
				end
			end
		end

		function camera:GetFOV(Part, originPart) originPart = originPart or workspace.Camera
			local directional = CFrame.new(originPart.CFrame.Position, Part.Position)
			local ang = Vector3.new(directional:ToOrientation()) - Vector3.new(originPart.CFrame:ToOrientation())
			return math.deg(ang.Magnitude)
		end

		function camera:GetPlayersOrganizedByFov(players)
			local result = {}
			local playerobjects = {}
			players = players or Players:GetPlayers()
			for i, player in next, players do
				local curbodyparts = client.replication.getbodyparts(player)
				if curbodyparts and client.hud:isplayeralive(player) then
					local fov = camera:GetFOV(curbodyparts.torso)
					result[i] = fov
				else
					result[i] = 999
				end
			end
			table.sort(result)
			for i, fov in next, result do
				playerobjects[fov] = players[i]
			end
			return playerobjects
		end

		function camera:IsVisible(Part, origin) origin = origin or Camera.CFrame.Position

			local hit, position = workspace:FindPartOnRayWithWhitelist(Ray.new(origin, Part.Position - origin), client.roundsystem.raycastwhitelist)

			if hit then
				if hit.CanCollide and hit.Transparency == 0 then
					return false
				else
					return self:IsVisible(Part, position + (Part.Position - origin).Unit * 0.01)
				end
			else
				return true
			end

			-- return (position == Part.Position or (Parent and hit and Parent:IsAncestorOf(hit)))
		end

		function camera:LookAt(pos)
			local angles = camera:GetAnglesTo(pos, true)
			local delta = client.cam.angles - angles
			client.cam.angles = angles
			client.cam.delta = delta
		end

		function camera:GetAngles()
			local pitch, yaw = Camera.CFrame:ToOrientation()
			return { ["pitch"] = pitch, ["yaw"] = yaw, ["x"] = pitch, ["y"] = yaw }
		end

		function camera:GetAnglesTo(Pos, useVector)
			local pitch, yaw = CFrame.new(Camera.CFrame.Position, Pos):ToOrientation()
			if useVector then
				return Vector3.new(pitch, yaw, 0)
			else
				return { ["pitch"] = pitch, ["yaw"] = yaw }
			end
		end

		function camera:GetTrajectory(pos, origin)
			if client.logic.currentgun and client.logic.currentgun.data then origin = origin or Camera.CFrame.Position
				local traj = client.trajectory(origin, GRAVITY, pos, client.logic.currentgun.data.bulletspeed)
				return traj and origin + traj or false
			end
		end
	end

	do --ANCHOR ragebot definitions
		ragebot.sprint = true
		ragebot.shooting = false
		ragebot.predictedDamageDealt = {}
		ragebot.predictedDamageDealtRemovals = {}
		ragebot.predictedMisses = {}
		ragebot.predictedShotAt = {}
		ragebot.fakePositionsResolved = {}
		ragebot.firsttarget = nil
		ragebot.spin = 0
		ragebot.angles = Vector2.new(0, 0)
		do
			local function GetPartTable(player)
				local tbl = {}
				for k, v in pairs(player) do
					tbl[v] = true
				end
				return tbl
			end
		end

		local timehit = client.physics.timehit

		local function isdirtyfloat(f) -- if we dont use this theres a large chance the autowall will break
			local dirtyflag = true -- that being said this function is actually useful, pretty much a QNAN check or whatever
			if f == f then
				dirtyflag = true
				if f ~= (1 / 0) then
					dirtyflag = f == (-1 / 0)
				end
			end
			return dirtyflag
		end

		local bulletLifeTime = client.publicsettings.bulletLifeTime

		local function ignorecheck(p)
			if p.Name == "abcdefg" then
				return false
			end
			if not p.CanCollide then
				return true
			end
			if p.Transparency == 1 then
				return true
			end
			if p.Name ~= "Window" then
				return
			end
			return true
		end

		local dot = Vector3.new().Dot

		local bulletcheckresolution = 0.03333333333333333

		function ragebot.bulletcheck(origin, dest, velocity, acceleration, penetration, whitelist) -- reversed
			local ignorelist = { workspace.Terrain, workspace.Players, workspace.Ignore, workspace.CurrentCamera }
			local bullettime = 0
			local exited = false
			local penetrated = true
			local step_pos = origin
			local penetration = penetration
			local intersection
			local maxtime = timehit(step_pos, velocity, acceleration, dest)
			if not (not isdirtyfloat(maxtime)) or bulletLifeTime < maxtime or maxtime == 0 then
				return false
			end
			while bullettime < maxtime do
				local dt = maxtime - bullettime
				if dt > bulletcheckresolution then
					dt = bulletcheckresolution
				end
				local bulletvelocity = dt * velocity + dt * dt / 2 * acceleration
				local enter = raycastutil.raycast(step_pos, bulletvelocity, ignorelist, ignorecheck, true)
				if enter then
					local hit = enter.Instance
					if enter.Position then
						intersection = enter.Position
					end
					local normalized = bulletvelocity.unit
					if whitelist and whitelist[hit] then
						penetrated = true
						step_pos = intersection
						break
					end
					local exit = raycastutil.raycastSingleExit(intersection, hit.Size.magnitude * normalized, hit)
					if exit then
						local norm = exit.Normal
						local dist = dot(normalized, exit.Position - intersection)
						local diff = dot(bulletvelocity, intersection - step_pos) / dot(bulletvelocity, bulletvelocity)  * dt
						step_pos = intersection + 0.01 * normalized
						velocity = velocity + diff * acceleration
						bullettime = bullettime + diff
						if not (dist < penetration) then
							penetrated = false
							break
						end
						penetration = penetration - dist
						table.insert(ignorelist, hit)
						exited = true
					else
						step_pos = step_pos + bulletvelocity
						velocity = velocity + dt * acceleration
						bullettime = bullettime + dt
					end
				else
					step_pos = step_pos + bulletvelocity
					velocity = velocity + dt * acceleration
					bullettime = bullettime + dt
				end
			end

			return penetrated, exited, step_pos
		end

		function ragebot:GetResolvedPosition(player, torso_cframe, root_cframe)
			if not menu:GetVal("Rage", "Settings", "Resolve Fake Positions") then return end
			local resolvedPosition
			local misses = self.predictedMisses[player]
			local modmisses = misses and misses % 5

			curbodyparts = curbodyparts or client.replication.getbodyparts(player)
			if not torso_cframe or not client.hud:isplayeralive(player) or not torso_cframe then
				return
			end
			local rep = ragebot.repupdates[player]
			if rep and rep.position and rep.position and (rep.position - torso_cframe.Position).Magnitude > 18  then
				resolvedPosition = rep.position
			end
			if (root_cframe.Position - torso_cframe.Position).Magnitude > 10 then
				resolvedPosition = root_cframe.Position
			end
			if modmisses and modmisses > 3 then
				local rep = self.fakePositionsResolved[player]

				if rep and (rep - torso_cframe.Position).Magnitude > 18 then
					resolvedPosition = rep
				end
			end

			return resolvedPosition
		end

		function ragebot:GetDamage(distance, headshot)
			local data = client.logic.currentgun.data
			local r0, r1, d0, d1 = data.range0, data.range1, data.damage0, data.damage1
			return (
					distance < r0 and d0 or distance < r1 and (d1 - d0) / (r1 - r0) * (distance - r0) + d0 or d1
				)  * (headshot and data.multhead or 1)
		end

		function ragebot:bulletcheck_legacy(origin, destination, penetration, whitelist)
			local dir = (destination - origin)
			if dot(dir, dir) < 0 then
				return true
			end

			local hit, enter = workspace:FindPartOnRayWithWhitelist(Ray.new(origin, dir), client.roundsystem.raycastwhitelist)

			if hit then
				local unit = dir.Unit
				local maxextent = hit.Size.Magnitude * unit
				local _, exit = workspace:FindPartOnRayWithWhitelist(Ray.new(enter + maxextent, -maxextent), { hit })
				local diff = exit - enter
				local dist = dot(unit, diff)
				if dist < 0 then
					return true
				end
				local pass = not hit.CanCollide or hit.Name == "Window" or hit.Transparency == 1
				local exited = false

				local newpos = enter + 0.01 * unit

				if not pass then
					if dist < penetration then
						penetration = penetration - dist
					else
						return false
					end
				end

				return ragebot:bulletcheck_legacy(newpos, destination, penetration, whitelist)
			else
				return true
			end
		end

		function ragebot:CanPenetrate(origin, target, penetration, whitelist)
			if not whitelist then
				whitelist = { [target] = true }
			end

			local d, t = client.trajectory(origin, GRAVITY, target.Position, client.logic.currentgun.data.bulletspeed)
			if not t then
				return
			end
			if not d then
				return ragebot:bulletcheck_legacy(origin, target.Position, penetration, whitelist)
			end
			local z = d.Unit * client.logic.currentgun.data.bulletspeed -- bullet speed cheat --PATCHED. :(
			-- bulletcheck dumps if you fucking do origin + traj idk why you do it but i didnt do it and it fixed the dumping
			return ragebot.bulletcheck(origin, target.Position, z, GRAVITY, penetration, whitelist)
		end

		function ragebot:AimAtTarget(part, target, head, origin, resolved)
			local origin = origin or client.cam.cframe.p
			if not part then
				ragebot.silentVector = nil
				ragebot.firepos = nil
				if ragebot.target then
					renderChamsOnPlayer(ragebot.target)
				end
				ragebot.target = nil
				ragebot.shooting = false
				return
			end

			local position = (part and part.Position)
			local target_pos = position
			local dist = (position - origin).Magnitude
			local dir = camera:GetTrajectory(position, origin) - origin
			if not menu:GetVal("Rage", "Aimbot", "Silent Aim") then
				camera:LookAt(dir + origin)
			end
			ragebot.silentVector = dir.unit
			ragebot.target = target
			if ragebot.target then
				renderChamsOnPlayer(ragebot.target)
			end
			ragebot.targetpart = part
			ragebot.firepos = origin
			ragebot.shooting = true
			ragebot.time = tick()
			if menu:GetVal("Rage", "Aimbot", "Auto Shoot") then
				local firerate = type(client.logic.currentgun.data.firerate) == "table" and client.logic.currentgun.data.firerate[1] or client.logic.currentgun.data.firerate
				local scaledFirerate = firerate  * menu:GetVal("Misc", "Weapon Modifications", "Fire Rate Scale") / 100
				local damage = self:GetDamage(dist, head)
				damage *= client.logic.currentgun.data.pelletcount or 1 -- super shotgun cheat
				ragebot:shoot(scaledFirerate, target, damage)
				misc.autopeekposition = nil
			end
		end

		local HITBOX_SHIFT_SIZE = Vector3.new(3, 3, 3)
		local HITBOX_SHIFT_AMOUNT = 12.5833333333333
		local lastHitboxPriority

		function ragebot:GetTarget(hitboxPriority, players, origin)
			hitboxPriority = hitboxPriority == 1 and "head" or "torso"
			hitboxPriority = hitboxPriority or lastHitboxPriority
			lastHitboxPriority = hitboxPriority or lastHitboxPriority
			self.intersection = nil

			------debug.profilebegin("BB self GetTarget")
			--local hitscan = hitscan or {}
			local partPreference = hitboxPriority or "you know who i am? well you about to find out, your barbecue boy"
			local closest, cpart, theplayer = math.huge, nil, nil
			if not players then
				players = { self.firsttarget, table.unpack(Players:GetPlayers()) } --= this is so much fucking ebtter but it's still ultra shit
			end

			local autowall = menu:GetVal("Rage", "Aimbot", "Auto Wallbang")
			local aw_resolve = menu:GetVal("Rage", "Hack vs. Hack", "Autowall Hitscan")
			local hitboxshift = menu:GetVal("Rage", "Hack vs. Hack", "Hitbox Shifting")
			--local campos = client.cam.basecframe
			local zerocf = client.cam.basecframe - client.cam.basecframe.p
			local campos = origin or zerocf + client.lastrepupdate
			local camposreal = campos
			local camposv3 = camposreal.p
			local firepos
			local head
			local resolvedPosition
			local newbone
			local realbone

			local aimbotFov = menu:GetVal("Rage", "Aimbot", "Aimbot FOV")
			for usingbacktrack = 0, 1 do
				if cpart and usingbacktrack == 1 then break end
				for i, player in next, players do
					if player.Team ~= LOCAL_PLAYER.Team and player ~= LOCAL_PLAYER then
						if table.find(menu.friends, player.Name) and menu:GetVal("Misc", "Extra", "Ignore Friends") then
							continue
						end
						if
							not table.find(menu.priority, player.Name)
							and menu:GetVal("Misc", "Extra", "Target Only Priority Players")
						then
							continue
						end
						if
							menu:GetVal("Rage", "Settings", "Aimbot Damage Prediction")
							and self.predictedDamageDealt[player]
							and self.predictedDamageDealt[player] > menu:GetVal("Rage", "Settings", "Damage Prediction Limit")
						then
							continue
						end
						local misses = self.predictedMisses[player] or 1
						local curbodyparts = client.replication.getbodyparts(player)
						if curbodyparts and client.hud:isplayeralive(player) then
							local newhitboxshift = hitboxshift
							resolvedPosition = self:GetResolvedPosition(player, curbodyparts.torso.CFrame, curbodyparts.torso.CFrame)
							local resolved = false

							if resolvedPosition then
								menu.parts.resolverHitbox.Position = resolvedPosition
								resolved = true
								newhitboxshift = false
							end
							local bone = curbodyparts.torso
							realbone = curbodyparts[hitboxPriority]
							if bone.ClassName == "Part" then
								local newbone = realbone
								if resolved then
									newbone = menu.parts.resolverHitbox
									self.intersection = menu.parts.resolverHitbox.Position
								end
								local fovToBone = camera:GetFOV(newbone)
								if fovToBone < aimbotFov or aimbotFov > 180 then -- Awesome
									if camera:IsVisible(newbone, camposv3) then
										if fovToBone < closest then
											closest = fovToBone
											cpart = bone
											theplayer = player
											firepos = camposv3
											head = hitboxPriority == "head"
											if menu.priority[player.Name] then
												break
											end
										else
											continue
										end
									elseif autowall then
										------debug.profilebegin("BB self Penetration Check " .. player.Name)
										local directionVector = camera:GetTrajectory(newbone.Position, camposv3)
										-- self:CanPenetrate(LOCAL_PLAYER, player, directionVector, newbone.Position, barrel, menu:GetVal("Rage", "Hack vs. Hack", "Extend Penetration"))
										-- self:CanPenetrate(origin, target, velocity, penetration)
										if not directionVector then
											continue
										end
										if
										self:CanPenetrate(
												camposv3,
												newbone,
												client.logic.currentgun.data.penetrationdepth
											)
										then
											cpart = realbone
											theplayer = player
											firepos = camposv3
											head = hitboxPriority == "head"
											if menu.priority[player.Name] then
												break
											end
										elseif aw_resolve then
											local axisPosition, bulletintersection =
												self:HitscanOnAxes(camposreal, player, newbone, newhitboxshift)
											if axisPosition then
												self.firepos = axisPosition
												cpart = realbone
												theplayer = player
												firepos = axisPosition
												head = hitboxPriority == "head"
												if menu.priority[player.Name] then
													break
												end
											end
										end
										--debug.profileend("BB self Penetration Check " .. player.Name)
									end
								end
							end
						end
					end
				end
			end
			--debug.profileend("BB self GetTarget")

			return cpart, theplayer, closest, firepos, head
		end

		function ragebot:GetKnifeTargets(flight)
			local hitscan = menu:GetVal("Rage", "Extra", "Knife Hitscan")
			hitscan = hitscan == 1 and "head" or hitscan == 2 and "torso" or "rleg"
			local sightlines = menu:GetVal("Rage", "Extra", "Knife Visible Only")
			local range = menu:GetVal("Rage", "Extra", "Knife Range")
			local results = {}

			for i, player in ipairs(Players:GetPlayers()) do
				if table.find(menu.friends, player.Name) and menu:GetVal("Misc", "Extra", "Ignore Friends") then
					continue
				end
				if not table.find(menu.priority, player.Name) and menu:GetVal("Misc", "Extra", "Target Only Priority Players")
				then
					continue
				end

				if player.Team ~= LOCAL_PLAYER.Team and client.hud:isplayeralive(player) then
					local parts = client.replication.getbodyparts(player)
					if not parts then
						continue
					end



					local target_pos = parts.torso.Position
					local target_direction = target_pos - client.cam.cframe.p
					local target_dist = (target_pos - client.cam.cframe.p).Magnitude
					if not flight then
						if range ~= 26 and target_dist > range then
							continue
						end
					end

					local ignore = { LOCAL_PLAYER, Camera, workspace.Ignore, workspace.Players }

					local part1, ray_pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(client.cam.cframe.p, target_direction), ignore)

					if part and sightlines then
						continue -- if this ignores workspace.Players actually then this should work
						-- voila it wrks
					end

					local part2, ray_pos = workspace:FindPartOnRayWithIgnoreList(
							Ray.new(client.cam.cframe.p - Vector3.new(0, 2, 0), target_direction),
							ignore
						)

					local ray_distance = (target_pos - ray_pos).Magnitude
					table.insert(results, {
						player = player,
						part = parts[hitscan],
						tppos = ray_pos,
						direction = target_direction,
						dist = target_dist,
						insight = ray_distance < 15 and part1 == part2,
					})
				end
			end

			return results
		end

		function ragebot:KnifeBotMain()
			if not client.char.alive then
				return
			end
			if not LOCAL_PLAYER.Character or not LOCAL_PLAYER.Character:FindFirstChild("HumanoidRootPart") then
				return
			end

			if menu:GetVal("Rage", "Extra", "Knife Bot") and menu:GetKey("Rage", "Extra", "Knife Bot", true) then
				local knifetype = menu:GetVal("Rage", "Extra", "Knife Bot Type")
				if knifetype == 2 then
					ragebot:KnifeAura()
				elseif knifetype == 3 then
					ragebot:FlightAura()
				elseif knifetype == 5 then
					ragebot:TeleportAura()
				end
			end
		end

		function ragebot:FlightAura()
			local targets = ragebot:GetKnifeTargets(true)

			for i, target in pairs(targets) do
				if not target.insight then
					continue
				end
				LOCAL_PLAYER.Character.HumanoidRootPart.Anchored = false
				LOCAL_PLAYER.Character.HumanoidRootPart.Velocity = target.direction.Unit * math.random(50, 125)

				return ragebot:KnifeAura()
			end
		end

		function ragebot:TeleportAura()
			if (tick() - ragebot.teleportpath.last) >= 1 then
				local targets = ragebot:GetKnifeTargets(true)

				for i, target in pairs(targets) do
					if target.insight then
						--LOCAL_PLAYER.Character.HumanoidRootPart.Anchored = false
						--LOCAL_PLAYER.Character.HumanoidRootPart.Velocity = target.direction.Unit * math.random(50, 125)
						--
						return ragebot:KnifeAura()
					else
						if ragebot.teleportpath.path and not ragebot.teleportpath.path[ragebot.teleportpath.current] then
							ragebot.teleportpath.path = nil
						end
						--
						if not ragebot.teleportpath.path then
							local path = game:GetService("PathfindingService"):FindPathAsync(client.cam.cframe.p, client.replication.getbodyparts(target.player).torso.CFrame.Position)
							local waypoints = path:GetWaypoints()
							local currentpath = {}
							--
							for Index, Value in pairs(waypoints) do
								--if Index % 2 == 1 then
									currentpath[#currentpath + 1] = Value
								--end
							end
							--
							ragebot.teleportpath.path = currentpath
							ragebot.teleportpath.current = 1
						end
						--
						if ragebot.teleportpath.path[ragebot.teleportpath.current] then
                            local pos = ragebot.teleportpath.path[ragebot.teleportpath.current].Position
                            local direction = (pos - client.cam.cframe.p)
                            local distance = direction.Magnitude
                            local unit = direction.Unit
                            local vel = direction
                            --
                            LOCAL_PLAYER.Character.HumanoidRootPart.Anchored = false
						    LOCAL_PLAYER.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
							--
							ragebot.teleportpath.current = ragebot.teleportpath.current + 1
							ragebot.teleportpath.last = tick()
						end
					end
				end
			end
		end

		function ragebot:KnifeAura(t)
			local targets = t or ragebot:GetKnifeTargets()
			for i, target in ipairs(targets) do
				if target.player then
					ragebot:KnifeTarget(target)
				end
			end
		end

		function ragebot:KnifeTarget(target, stab)
			if target and target.part then
				local cfc = client.cam.cframe
				--send(client.net, "repupdate", cfc.p, client.cam.angles) -- Makes knife aura work with anti nade tp
				if stab then
					send(client.net, "stab")
				end
				local newhit = nil
				newhit = { Name = target.part.Name, Position = client.cam.cframe.p } -- fuckin hack
				send(client.net, "knifehit", target.player, target.part.Name)
			end
		end

		function ragebot:GetCubicMultipoints(origin, extent)
			assert(extent % 2 == 0, "extent value must be even")
			local start = origin or client.cam.basecframe.p
			local max_step = extent or 8

			start -= Vector3.new(max_step, -max_step, max_step) / 2

			local pos = start
			local half = max_step / 2

			local points = { corner = table.create(8), inside = table.create(19) }

			for x = 0, max_step do
				for y = 0, -max_step, -1 do
					for z = 0, max_step do
						local isPositionCorner = x % max_step == 0 and y % max_step == 0 and z % max_step == 0
						local isPositionInside = x % half == 0 and y % half == 0 and z % half == 0
						if isPositionCorner then
							pos = start + Vector3.new(x, y, z)

							table.insert(points.corner, 1, pos)
						elseif isPositionInside then
							pos = start + Vector3.new(x, y, z)

							table.insert(points.inside, 1, pos)
						end
					end
				end
			end

			return points
		end

		function ragebot:CubicHitscan(studs, origin, selectedpart) -- Scans in a cubic square area of size (studs) and resolves a position to hit target at
			assert(
				studs,
				"what are you trying to do young man, this is illegal.  you do know that you have to provide us with shit to use to calculate this, you do realize this right?"
			) -- end
			assert( origin,
				"just like before, we need information to even apply this to our things we made to provide you with ease of p100 hits ðŸ¤¡"
			)
			assert(
				selectedpart,
				"what are you attempting to do what the fuck are you dumb?? you are just testing my patience"
			) -- end

			local dapointz = ragebot:GetCubicMultipoints(origin, studs or 18 * 2)

			local pos
			-- ragebot:CanPenetrate(origin, target, velocity, penetration)
			for i, point in pairs(dapointz.corner) do
				local penetrated = ragebot:CanPenetrate(point, selectedpart, client.logic.currentgun.data.penetrationdepth)

				if penetrated then
					pos = point
					return
				end
			end

			if pos then
				return pos
			end

			for i, point in pairs(dapointz.inside) do
				local penetrated = ragebot:CanPenetrate(point, selectedpart, client.logic.currentgun.data.penetrationdepth)

				if penetrated then
					pos = point
					return
				end
			end

			if pos then
				return pos
			end

			return nil
		end

		local hitscanPoints = { 0, 0, 0, 0, 0, 0, 0, 0 }
		local hitboxShiftPoints = { 0, 0, 0, 0, 0 }
		local hitboxShiftAmount = { 0, 0 }
		if BBOT.username == "dev" then
			StatMenuRendered:connect(function(text)
				text.Text ..= string.format("\n--menu-- %d %d %d", menu.inmenu and 1 or 0, menu.inmiddlemenu and 1 or 0, menu.intabs and 1 or 0)
				text.Text ..= string.format("\n--hitscan-- %d %d %d %d %d %d %d %d", unpack(hitscanPoints))
				text.Text ..= string.format("\n--hitbox shift method-- %d %d %d %d %d", unpack(hitboxShiftPoints))
				text.Text ..= string.format("\n--hitbox-- %d %d", unpack(hitboxShiftAmount))
				text.Text ..= string.format("\n--smart legitbot-- %0.1f", legitbot.smart)
				if misc.normalPositive and misc.speedDirection then
					text.Text ..= string.format("\n--avoid collisions-- %0.2f %0.2f %0.2f %0.2f", misc.normalPositive, misc.normal.x, misc.normal.y, misc.normal.z)
					text.Text ..= string.format("\n--circle strafe-- %0.2f %0.2f", misc.speedDirection.x, misc.speedDirection.z)
				end
			end)
		end
		local shiftmode = 1
		local shiftmodes = {
			function(part, position)
				return (part.Position - position).Unit
			end,
			function(part, position)
				return part.Velocity.Unit
			end,
			function(part, position)
				return -part.Velocity.Unit
			end,
			function(part, position, localpart)
				return localpart.Velocity.Unit
			end,
			function(part, position, localpart)
				return -localpart.Velocity.Unit
			end
		}
		-- local function GetHitBoxShift(person, bodypart, position)
		-- 	local misses = ragebot.predictedMisses[person] or 0
		-- 	local HITBOX_SHIFT_TOTAL = menu:GetVal("Rage", "Hack vs. Hack", "Hitbox Shift Distance")
		-- 	local HITBOX_SHIFT_AMOUNT = HITBOX_SHIFT_TOTAL / 2
		-- 	local pullAmount =
		-- 		clamp((HITBOX_SHIFT_AMOUNT - HITBOX_SHIFT_AMOUNT * misses / 10), 2, HITBOX_SHIFT_AMOUNT)
		-- 	local shiftSize = clamp(HITBOX_SHIFT_AMOUNT - misses, 1, HITBOX_SHIFT_AMOUNT)
		-- 	local pullVector = (bodypart.Position - position).Unit * pullAmount
		-- 	local newTargetPosition = bodypart.Position - pullVector
		-- 	menu.parts.sphereHitbox.Size = Vector3.new(shiftSize, shiftSize, shiftSize)
		-- 	menu.parts.sphereHitbox.Position = newTargetPosition -- ho. ly. fu. cking. shit,.,m
		-- 	hitboxShiftAmount[1] = shiftSize
		-- 	hitboxShiftAmount[2] = pullAmount
		-- 	return menu.parts.sphereHitbox, { [menu.parts.sphereHitbox] = true }, pullAmount, shiftSize
		-- end


		local function GetHitBoxShift(person, bodypart, position)
			shiftmode += 1
			shiftmode %= #shiftmodes
			shiftmode += 1
			local misses = ragebot.predictedMisses[person] or 0
			local HITBOX_SHIFT_TOTAL = menu:GetVal("Rage", "Hack vs. Hack", "Hitbox Shift Distance")
			local HITBOX_SHIFT_AMOUNT = HITBOX_SHIFT_TOTAL / 2
			local HITBOX_SHIFT_SIZE = HITBOX_SHIFT_AMOUNT
			local pullAmount = clamp((HITBOX_SHIFT_AMOUNT - HITBOX_SHIFT_AMOUNT * misses / 10), 1, HITBOX_SHIFT_AMOUNT)
			local shiftSize = clamp(HITBOX_SHIFT_AMOUNT - misses, 1, HITBOX_SHIFT_AMOUNT)
			local pullVector = shiftmodes[shiftmode](bodypart, position, LOCAL_PLAYER.Character.HumanoidRootPart) * pullAmount
			local newTargetPosition = bodypart.Position - pullVector

			menu.parts.sphereHitbox.Size = Vector3.new(shiftSize, shiftSize, shiftSize)
			menu.parts.sphereHitbox.Position = newTargetPosition -- ho. ly. fu. cking. shit,.,m
			hitboxShiftAmount[1] = shiftSize
			hitboxShiftAmount[2] = pullAmount
			return menu.parts.sphereHitbox, { [menu.parts.sphereHitbox] = true }, shiftmode
		end

		function ragebot:HitscanOnAxes(origin, person, bodypart, hitboxshift)
			local step = 9.5
			local hitscanOffsets = {
				CFrame.new(0, step, 0),
				CFrame.new(0, -step, 0),
				CFrame.new(-step, 0, 0),
				CFrame.new(step, 0, 0),
				CFrame.new(0, 0, -step),
				CFrame.new(0, 0, step),
				CFrame.new(),
			}
			local whitelist = { [bodypart] = true }
			assert(bodypart, "hello")

			local dest = typeof(bodypart) ~= "Vector3" and bodypart.Position or bodypart -- fuck

			assert(person, "something went wrong in your nasa rocket launch")
			assert(typeof(origin) == "CFrame", "what are you trying to do young man") -- end

			local maxPoints = client.aliveplayers
					and math.ceil(menu:GetVal("Rage", "Settings", "Max Hitscan Points") / client.aliveplayers)
				or #hitscanOffsets
			-- ragebot:CanPenetrateRaycast(barrel, bone.Position, client.logic.currentgun.data.penetrationdepth, true, menu.parts.sphereHitbox)
			-- for k, v in next, hitscanPoints do
			-- 	print(k, v)
			-- end
			local resolverPoints = menu:GetVal("Rage", "Hack vs. Hack", "Hitscan Points")
			if resolverPoints[8] then
				local position = origin
				local pull = (bodypart.Position - position.p).Unit * step
				position = position.p + pull
				local hitbox = bodypart
				local shifttype
				if hitboxshift then
					hitbox, whitelist, shifttype = GetHitBoxShift(person, bodypart, position)
				end
				local pen, exited, bulletintersection =
					ragebot:CanPenetrate(position, hitbox, client.logic.currentgun.data.penetrationdepth, whitelist)

				if pen then
					hitscanPoints[8] += 1
					if shifttype then
						hitboxShiftPoints[shifttype] += 1
					end
					return position, bulletintersection
				end
			end
			for i = 1, math.min(#hitscanOffsets, maxPoints) do -- this makes it skip if ur using low max Hitscan Points rofl suace super fast speed cheat :)
				if resolverPoints[i] == true then -- this is so that it doesn't skip for the origin point
					local position = origin * hitscanOffsets[i]
					local hitbox = bodypart
					local shifttype
					if hitboxshift then
						hitbox, whitelist, shifttype = GetHitBoxShift(person, bodypart, position.p)
					end
					local pen, exited, bulletintersection =
						ragebot:CanPenetrate(position.p, hitbox, client.logic.currentgun.data.penetrationdepth, whitelist)
					if pen then
						hitscanPoints[i] += 1
						if shifttype then
							hitboxShiftPoints[shifttype] += 1
						end
						return position.p, bulletintersection
					else
						position = origin
					end
				end
			end

			return nil
		end

		function ragebot:MainLoop() -- lfg
			ragebot.silentVector = nil
			local prioritizedpart = menu:GetVal("Rage", "Aimbot", "Hitscan Priority")

			ragebot:Stance()

			if client.char.alive and menu:GetVal("Rage", "Aimbot", "Enabled") and menu:GetKey("Rage", "Aimbot", "Enabled", true)
			then
				if client.logic.currentgun and client.logic.currentgun.type ~= "KNIFE" then -- client.loogic.poop.falsified_directional_componenet = Vector8.new(math.huge) [don't fuck with us]
					if ragebot:LogicAllowed() then
						local playerlist = Players:GetPlayers()

						if not client then
							return
						end
						local priority_list = {}
						for k, PlayerName in pairs(menu.priority) do
							if Players:FindFirstChild(PlayerName) then
								table.insert(priority_list, game.Players[PlayerName])
							end
						end
						local targetPart, targetPlayer, fov, firepos, head = ragebot:GetTarget(prioritizedpart, priority_list)
						if not targetPart and not menu:GetVal("Misc", "Extra", "Target Only Priority Players") then
							targetPart, targetPlayer, fov, firepos, head = ragebot:GetTarget(prioritizedpart, playerlist)
						end
						ragebot:AimAtTarget(targetPart, targetPlayer, head, firepos, resolved)
					end
				else
					self.target = nil
				end
			end
		end

		ragebot.stance = "prone"
		ragebot.sprint = false
		ragebot.stancetick = tick()
		function ragebot:Stance()
			if menu:GetVal("Rage", "Anti Aim", "Enabled") then
				if (tick() - ragebot.stancetick) >= 0.5 then
					ragebot.stancetick = tick()
					local stanceId = menu:GetVal("Rage", "Anti Aim", "Force Stance")
					if stanceId ~= 1 then
						newStance =  --ternary sex/
							stanceId == 2 and "stand" or stanceId == 3 and "crouch" or stanceId == 4 and "prone"
						ragebot.stance = newStance
						send(client.net, "stance", newStance)
					end
					if menu:GetVal("Rage", "Anti Aim", "Lower Arms") then
						ragebot.sprint = true
						send(nil, "sprint", true)
					end
					if menu:GetVal("Rage", "Anti Aim", "Tilt Neck") then
						ragebot.tilt = true
						send(nil, "aim", true)
					end
				end
			end
		end
	end

	local _3pweps = {}

	-- Framework errors here

	local function create_outlined_square(pos, destroydelay, colordata)
		local newpart = Instance.new("Part", workspace)
		newpart.CanCollide = false
		newpart.Anchored = true
		newpart.Size = Vector3.new(0.35, 0.35, 0.35)
		newpart.Position = pos
		newpart.Material = Enum.Material.Neon
		newpart.Transparency = 0.85

		local colors = colordata or { Color3.fromRGB(255, 255, 255), Color3.fromRGB(239, 62, 62) }

		for i = 1, 2 do
			local box = Instance.new("BoxHandleAdornment", newpart)
			box.AlwaysOnTop = true
			box.Adornee = box.Parent
			box.ZIndex = i == 1 and 5 or 1
			box.Color3 = i == 1 and colors[1] or colors[2]
			box.Size = i == 1 and newpart.Size / 1.3 or newpart.Size * 1.3
			box.Transparency = i == 1 and 0 or 0.3
			table.insert(misc.adornments, box)
		end

		debris:AddItem(newpart, destroydelay)
	end

	local function create_line(origin_att, ending_att, destroydelay) -- pasting this from the misc create beam but oh well im a faggot so yeah :troll:
		local beam = Instance.new("Beam")
		beam.LightEmission = 1
		beam.LightInfluence = 1
		beam.Enabled = true
		beam.Color = ColorSequence.new(menu:GetVal("Visuals", "Dropped ESP", "Grenade ESP", COLOR2, true))
		beam.Attachment0 = origin_att
		beam.Attachment1 = ending_att
		beam.Width0 = 0.5
		beam.Width1 = 0.5
		beam.FaceCamera = true

		beam.Parent = workspace

		debris:AddItem(beam, destroydelay)
		debris:AddItem(origin_att, destroydelay)
		debris:AddItem(ending_att, destroydelay)
	end

    for hash, func in next, clienteventfuncs do
        local curconstants = getconstants(func)
        local found = table.find(curconstants, "Trigger")
		local found5 = table.find(curconstants, "Votekick ")
		local found6 = table.find(curconstants, " studs")
		local found7 = table.find(curconstants, "setstance")
        local found9 = table.find(curconstants, "kickweapon")
        local found10 = table.find(curconstants, "equip")
        local found11 = table.find(curconstants, "equipknife")
		if found then
			clienteventfuncs[hash] = function(thrower, gtype, gdata, wdata, gtime)
				if thrower.team ~= LOCAL_PLAYER.Team or thrower == LOCAL_PLAYER then
					local frames = gdata
					local startT = frames[1].t
					local endFrame = frames[#frames]
					if menu:GetVal("Visuals", "Dropped ESP", "Grenade ESP") then
						local c1 = menu:GetVal("Visuals", "Dropped ESP", "Grenade ESP", COLOR1, true)
						local c2 = menu:GetVal("Visuals", "Dropped ESP", "Grenade ESP", COLOR2, true)
						local colorz = {c1, c2}
						for _, frame in next, frames do
							create_outlined_square(frame.p, (frame.t - startT), colorz)
						end
					end

					if menu:GetVal("Visuals", "Dropped ESP", "Grenade Warning") then
						table.insert(menu.activenades, {
							type = gtype,
							thrower = thrower.Name,
							blowupat = endFrame.p,
							blowuptick = endFrame.t, -- might need to be tested more
							start = startT
						})
					end
				end
				return func(thrower, gtype, gdata, wdata, gtime)
			end
		end
		if found5 then
			clienteventfuncs[hash] = function(name, countdown, endtick, reqs)
				func(name, countdown, endtick, reqs)
				local friends = menu:GetVal("Misc", "Extra", "Vote Friends")
				local priority = menu:GetVal("Misc", "Extra", "Vote Priority")
				local default = menu:GetVal("Misc", "Extra", "Default Vote")

				if name == LOCAL_PLAYER.Name then
					client.hud:vote("no")
				else
					if table.find(menu.friends, name) and friends ~= 1 then
						local choice = friends == 2 and "yes" or "no"
						client.hud:vote(choice)
					end
					if table.find(menu.priority, name) and priority ~= 1 then
						local choice = priority == 2 and "yes" or "no"
						client.hud:vote(choice)
					end
					if default ~= 1 then
						local choice = default == 2 and "yes" or "no"
						client.hud:vote(choice)
					end
				end
			end
		end

		if found6 then
			clienteventfuncs[hash] = function(killer, victim, dist, weapon, head)
				if killer == LOCAL_PLAYER and victim ~= LOCAL_PLAYER then
					if menu:GetVal("Misc", "Sounds", "Kill Sound") then
						local soundid = menu:GetVal("Misc", "Sounds", "killsoundid")
						local soundEmpty = soundid == ""
						soundid = soundEmpty and "rbxassetid://5709456554" or soundid

						if not soundEmpty then
							local isSoundPath = soundid:match("%D+") or false
							if isSoundPath then
								if not soundid:match("^rbxassetid://") then
									local validPath = isfile(soundid)
									if validPath then
										soundid = getsynasset(soundid)
									end
								end
							else
								local shit = soundid:match("%d+")
								soundid = string.format("rbxassetid://%d", shit)
							end
						end

						client.sound.PlaySoundId(
							soundid,
							menu:GetVal("Misc", "Sounds", "Kill Sound Volume") / 10,
							1.0,
							workspace,
							nil,
							0,
							0.03
						)
					end
					if menu:GetVal("Misc", "Extra", "Kill Say") then
						local killsay = menu.lastkillsay
						while killsay == menu.lastkillsay do
							killsay = math.random(#customKillSay)
						end
						menu.lastkillsay = killsay
						local message = customKillSay[killsay]
						message = message:gsub("%[hitbox%]", head and "head" or "body")
						message = message:gsub("%[name%]", victim.Name)
						message = message:gsub("%[weapon%]", weapon)
						client.net:send("chatted", message)
					end
				end

				if victim ~= LOCAL_PLAYER then
					if victim == ragebot.firsttarget then
						ragebot.firsttarget = nil
					end
					-- if not ragebot.repupdates[victim] then
					-- 	printconsole("Unable to find position data for " .. victim.Name)
					-- end
					ragebot.repupdates[victim] = {}
					ragebot.fakePositionsResolved[victim] = nil
				else
					if ragebot then
						ragebot.predictedDamageDealt = table.create(Players.MaxPlayers)
						ragebot.predictedDamageDealtRemovals = table.create(Players.MaxPlayers)
						ragebot.firsttarget = killer
					end
				end
				ragebot.predictedDamageDealt[victim] = 0
				ragebot.predictedMisses[victim] = 0
				ragebot.predictedDamageDealtRemovals[victim] = nil
				return func(killer, victim, dist, weapon, head)
			end
		end
		if found7 then
			clienteventfuncs[hash] = function(player, newstance)
				local chosenstance = newstance
				if menu and menu.GetVal then
					local ting = menu:GetVal("Rage", "Hack vs. Hack", "Force Player Stances")
					local choice = menu:GetVal("Rage", "Hack vs. Hack", "Stance Choice")
					choice = choice == 1 and "stand" or choice == 2 and "crouch" or "prone"
					chosenstance = ting and choice or newstance
				end
				return func(player, chosenstance)
			end
		end
		if found9 then
			clienteventfuncs[hash] = function(bulletdata)
				ragebot.fakePositionsResolved[bulletdata.player] = bulletdata.firepos
				local misses = ragebot.predictedMisses[bulletdata.player]
				-- if misses and misses > 16 then
				-- 	ragebot.predictedMisses[bulletdata.player] = 5
				-- end
				local vec = Vector3.new()
				for k, bullet in next, bulletdata.bullets do
					if typeof(bullet) ~= "Vector3" then
						bulletdata.bullets[k][1] = vec
					end
				end

				if typeof(bulletdata.firepos) ~= "Vector3" then
					bulletdata.firepos = vec
				end

				return func(bulletdata)
			end
		end
        if found10 then
            clienteventfuncs[hash] = function(player, weapon, camodata, attachments)
                _3pweps[player] = weapon
                return func(player, weapon, camodata, attachments)
            end
        end
        if found11 then
            clienteventfuncs[hash] = function(player, weapon, camodata)
                _3pweps[player] = weapon
                return func(player, weapon, camodata)
            end
        end
    end

    local VirtualUser = game:GetService("VirtualUser")
		menu.connections.local_player_id_connect = LOCAL_PLAYER.Idled:Connect(function()
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)

		local oldmag = client.cam.setmagnification
		local oldmenufov = client.cam.changemenufov
		client.cam.changemenufov = function(...)
			if menu and menu.open then
				return
			end
			oldmenufov(...)
		end
		local magspeed = 1
		client.cam.magspring.s = 1
		-- local mt = {__index = function(self, i) if i == "s" then return magspeed or 1 end end, __newindex = function(self, i, v) if i == "s" then magspeed = v end end}
		-- setrawmetatable(client.cam.magspring, mt)
		client.cam.setmagnification = function(self, m)
			local lnm = math.log(m)
			if menu and menu:GetVal("Visuals", "Camera Visuals", "Disable ADS FOV") then
				if lnm > self.magspring.p then
					return
				end
			end
			self.magspring.p = lnm
			self.magspring.t = lnm
			self.magspring.v = 0
		end
		client.cam.setmagnificationspeed = function(self, s)
			self.magspring.s = s
		end

		local shake = client.cam.shake
		client.cam.shake = function(self, magnitude)
			if menu and menu:GetVal("Visuals", "Camera Visuals", "Reduce Camera Recoil") then
				local scale = 1 - menu:GetVal("Visuals", "Camera Visuals", "Camera Recoil Reduction") * 0.01
				magnitude *= scale
			end
			return shake(client.cam, magnitude)
		end

		local suppress = client.cam.suppress
		client.cam.suppress = function(...)
			if menu and menu:GetVal("Visuals", "Camera Visuals", "No Visual Suppression") then
				return
			end
			return suppress(...)
		end

		local setscope = client.hud.setscope

		function client.hud:setscope(vis, nosway)
			isPlayerScoped = vis
			setscope(self, vis, nosway)
		end
	do
		local tween = game:service("TweenService")

		local partnames = { "head", "torso", "lleg", "rleg", "larm", "rarm" }
		local partexpansionarray = { 0.75, 1.5, 1.5, 1.5, 1.5, 1.5 }

		local nv = Vector3.new()
		local dot = nv.Dot

		misc.beams = {}
		function misc:CreateBeam(origin_att, ending_att, texture)
			local beam = Instance.new("Beam")
			beam.Texture = texture or "http://www.roblox.com/asset/?id=446111271"
			beam.TextureMode = Enum.TextureMode.Wrap
			beam.TextureSpeed = 8
			beam.LightEmission = 1
			beam.LightInfluence = 1
			beam.TextureLength = 12
			beam.FaceCamera = true
			beam.Enabled = true
			beam.ZOffset = -1
			beam.Transparency = NumberSequence.new((menu:GetVal("Visuals", "Extra", "Bullet Tracers", COLOR)[4]/255),(menu:GetVal("Visuals", "Extra", "Bullet Tracers", COLOR)[4]/255))
			beam.Color = ColorSequence.new(menu:GetVal("Visuals", "Extra", "Bullet Tracers", COLOR, true), Color3.new(0, 0, 0))
			beam.Attachment0 = origin_att
			beam.Attachment1 = ending_att
			debris:AddItem(beam, 3)
			debris:AddItem(origin_att, 3)
			debris:AddItem(ending_att, 3)

			local speedtween = TweenInfo.new(5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 0, false, 0)
			tween:Create(beam, speedtween, { TextureSpeed = 2 }):Play()
			beam.Parent = workspace
			table.insert(misc.beams, { beam = beam, time = tick() })
			return beam
		end

		function misc:UpdateBeams()
			local time = tick()
			for i = #self.beams, 1, -1 do
				if self.beams[i].beam  then
					local transp = 1 - (menu:GetVal("Visuals", "Extra", "Bullet Tracers", COLOR)[4]/255)
					local transparency = transp + (((time - self.beams[i].time) - 2) * (1 - transp))
					self.beams[i].beam.Transparency = NumberSequence.new(transparency, transparency)
				else
					table.remove(self.beams, i)
				end
			end
		end

		function misc:Teleport(newpos)
			if not client.char.alive then return end
			local rootparts = { LOCAL_PLAYER.Character and client.char.torso, self.invisroot, self.newroot }
			local start = Camera.CFrame.p
			if not newpos then
				local part, newpos_ = workspace:FindPartOnRayWithWhitelist(
					Ray.new(Camera.CFrame.p, Camera.CFrame.LookVector * 1000),
					client.roundsystem.raycastwhitelist
				)
				newpos = newpos_
			end
			local unit = (newpos - start).Unit
			local dist = (newpos - start).Magnitude
			for i = 1, dist, 2 do
				for j = 1, #rootparts do
					local rootpart = rootparts[j]
					if not rootpart then continue end
					rootpart.Position += unit
				end
				--
				client.net:send("repupdate", rootpart.Position + Vector3.new(0, client.char.headheight, 0), ragebot.angles, client.net:getTime())
			end

		end
		local setsway = client.cam.setswayspeed
		client.cam.setswayspeed = function(self, v)
			if menu then
				setsway(self, menu:GetVal("Visuals", "Camera Visuals", "No Scope Sway") and 0 or v)
			else
				setsway(self, v)
			end
		end

		function misc:GetParts(parts)
			parts["Head"] = parts[1]
			parts["Torso"] = parts[2]
			parts["Right Arm"] = parts[3]
			parts["Left Arm"] = parts[3]
			parts["Right Leg"] = parts[4]
			parts["Left Leg"] = parts[4]
			parts["rleg"] = parts[4]
			parts["lleg"] = parts[4]
			parts["rarm"] = parts[3]
			parts["larm"] = parts[3]
			parts["head"] = parts[1]
			parts["torso"] = parts[2]
			return parts
		end
		local rootpart1
		local humanoid

		function misc:SpotPlayers()
			if not menu:GetVal("Misc", "Extra", "Auto Spot") then
				return
			end
			local players = {}
			for k, player in pairs(game.Players:GetPlayers()) do
				if player == game.Players.LocalPlayer then
					continue
				end
				table.insert(players, player)
			end
			return send("spotplayers", players)
		end

		local weps = {};
		local ignore = {"JUGGUN", "HK417Old", "PAINTBALL GUN", "RAILGUN OLD", "PPK12", "SVK12E", "MG42"};

		for i,v in pairs(game.ReplicatedStorage.Content.ProductionContent.WeaponDatabase:GetChildren()) do
			for Index, Value in pairs(v:GetChildren()) do
				if not table.find(ignore, Value.Name) then
					local WeapData = Value:FindFirstChild("WeaponData")
					--
					if WeapData and WeapData:IsA("ModuleScript") then
						weps[Value.Name] = require(WeapData);
					end
				end
			end
		end

		function misc:ApplyGunMods()
			local mods_enabled = menu:GetVal("Misc", "Weapon Modifications", "Enabled")
			local firerate_scale = menu:GetVal("Misc", "Weapon Modifications", "Fire Rate Scale") / 100
			local recoil_scale = menu:GetVal("Misc", "Weapon Modifications", "Recoil Scale") / 100
			local empty_animations = menu:GetVal("Misc", "Weapon Modifications", "Remove Animations")
			local instant_equip = menu:GetVal("Misc", "Weapon Modifications", "Instant Equip")
			local fully_auto = menu:GetVal("Misc", "Weapon Modifications", "Fully Automatic")

			local currentGun = client.logic.currentgun

			if (not currentGun or not currentGun.data) then
				return
			end

			local oldData = weps[currentGun.name];

			if (currentGun.data) then
				local data = debug.getupvalue(currentGun.nextfiremode, 3);
				local data2 = debug.getupvalue(currentGun.nextfiremode, 2);

				local function createMod(Index, Value)
					if (data[Index] ~= nil) then
						data[Index] = Value;
					end

					if (data2[Index] ~= nil) then
						data2[Index] = Value;
					end
				end
                --
                if menu:GetVal("Misc", "Weapon Modifications", "Infinite Ammo") then
                	debug.setupvalue(currentGun.memes, 1, 9999)
                	debug.setupvalue(currentGun.memes, 3, 9999)
				end
				debug.setupvalue(currentGun.memes, 4, mods_enabled and (oldData.variablefirerate and oldData.firerate[1] * firerate_scale or oldData.firerate * firerate_scale) or (oldData.variablefirerate and oldData.firerate[1] or oldData.firerate));
				debug.setupvalue(currentGun.memes, 5, (mods_enabled and fully_auto) and { true, 1, 3 } or oldData.firemodes);

				createMod("equipspeed", (mods_enabled and instant_equip) and 999999 or oldData.equipspeed);
				createMod("hipfirespread", mods_enabled and oldData.hipfirespread * recoil_scale or oldData.hipfirespread);
				createMod("rotkickmin", mods_enabled and oldData.rotkickmin * recoil_scale or oldData.rotkickmin);
				createMod("rotkickmax", mods_enabled and oldData.rotkickmax * recoil_scale or oldData.rotkickmax);
				createMod("transkickmin", mods_enabled and oldData.transkickmin * recoil_scale or oldData.transkickmin);
				createMod("transkickmax", mods_enabled and oldData.transkickmax * recoil_scale or oldData.transkickmax);
				createMod("camkickmin", mods_enabled and oldData.camkickmin * recoil_scale or oldData.camkickmin);
				createMod("camkickmax", mods_enabled and oldData.camkickmax * recoil_scale or oldData.camkickmax);
				createMod("aimrotkickmin", mods_enabled and oldData.aimrotkickmin * recoil_scale or oldData.aimrotkickmin);
				createMod("aimrotkickmax", mods_enabled and oldData.aimrotkickmax * recoil_scale or oldData.aimrotkickmax);
				createMod("aimtranskickmin", mods_enabled and oldData.aimtranskickmin * recoil_scale or oldData.aimtranskickmin);
				createMod("aimtranskickmax", mods_enabled and oldData.aimtranskickmax * recoil_scale or oldData.aimtranskickmax);
				createMod("aimcamkickmin", mods_enabled and oldData.aimcamkickmin * recoil_scale or oldData.aimcamkickmin);
				createMod("aimcamkickmax", mods_enabled and oldData.aimcamkickmax * recoil_scale or oldData.aimcamkickmax);
			end
		end
		do
			client.springhooks = {}
			function client:UnhookSprings()
				for i = 1, #client.springhooks do
					local hook = client.springhooks[i]
					setrawmetatable(hook.spring, hook.meta)
				end
				table.clear(client.springhooks)
			end
			function client:HookSpring(spring, newMetatable)
				if #client.springhooks > 0 then
					for i = 1, #client.springhooks do
						local hook = client.springhooks[i]
						if hook.spring == spring then
							--warn("Error, tried to hook spring twice")
							return
						end
					end
				end
				local originalMetatable = getrawmetatable(spring)
				assert(originalMetatable, "Invalid argument given for 'spring'")
				client.springhooks[#client.springhooks + 1] = {
					spring = spring,
					meta = originalMetatable,
				}
				for metafunc, func in next, originalMetatable do
					if not newMetatable[metafunc] then
						newMetatable[metafunc] = originalMetatable[metafunc]
					else
						local userFunc = newMetatable[metafunc]
						newMetatable[metafunc] = function(t, p)
							return userFunc(t, p, originalMetatable)
						end
					end
				end
				setrawmetatable(spring, newMetatable)
			end
			local swingspring = debug.getupvalue(client.char.step, 14)
			local sprintspring = debug.getupvalue(client.char.setsprint, 10)
			local zoommodspring = debug.getupvalue(client.char.step, 1) -- sex.

			client.zoommodspring = zoommodspring -- fuck

			local oldjump = client.char.jump
			function client.char:jump(height)
				height = (menu and menu:GetVal("Misc", "Tweaks", "Jump Power")) and (height * menu:GetVal("Misc", "Tweaks", "Jump Power Percentage") / 100) or height
				return oldjump(self, height)
			end

			client:HookSpring(swingspring, {
				__index = function(t, p, oldSpring)
					if p == "v" and menu:GetVal("Misc", "Weapon Modifications", "Run and Gun") then
						return Vector3.new()
					end
					return oldSpring.__index(t, p)
				end,
			})

			client:HookSpring(sprintspring, {
				__index = function(t, p, oldSpring)
					if p == "p" and menu:GetVal("Misc", "Weapon Modifications", "Run and Gun") then
						return 0
					end
					return oldSpring.__index(t, p)
				end,
			})
		end
		menu.connections.button_pressed_pf = ButtonPressed:connect(function(tab, gb, name)
			if name == "Join New Game" then
				local Servers = game.HttpService:JSONDecode(game:HttpGet(("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100"):format(game.PlaceId)))
				--
				for Index, Value in pairs(Servers.data) do
					if Value.playing ~= Value.maxPlayers and Value.playing > 10 then
						TELEPORT_SERVICE:TeleportToPlaceInstance(game.PlaceId, Value.id)
					end
				end
			end

			if name == "Votekick" then
				local rank = 100--client.rankcalculator(client.dirtyplayerdata.stats.experience)
				if not selectedPlayer then
					return
				end

				if rank >= 25 then
					client.net:send("modcmd", string.format("/votekick:%s:cheating", selectedPlayer.Name))
					CreateNotification(string.format("Started a votekick on %s", selectedPlayer.Name))
				else
					CreateNotification(string.format("Your account must be rank 25 or above to votekick! (Rank %d)", rank))
				end
			elseif name == "Spectate" then
				if menu.spectating ~= selectedPlayer and client.hud:isplayeralive(selectedPlayer) then
					client.cam:setspectate(selectedPlayer)
					menu.spectating = selectedPlayer
					CreateNotification(string.format("Started spectating %s", selectedPlayer.Name))
				else
					if client.char.alive then
						client.cam:setfirstpersoncam()
					else
						local lobby = workspace:FindFirstChild("MenuLobby")
						if lobby then
							client.cam:setmenucam(lobby)
						else
							client.menu:loadmenu()
						end
					end
					menu.spectating = false
					if not client.hud:isplayeralive(selectedPlayer) then
						CreateNotification("Can't soectate player because player isnt alive")
					else
						CreateNotification("Stopped spectating")
					end
				end
			end
		end)

		menu.connections.toggle_pressed_pf = TogglePressed:connect(function(tab, name, class)
			if name == "Enabled" and tab == "Weapon Modifications" then
				client.animation.player = (class[1] and menu:GetVal("Misc", "Weapon Modifications", "Remove Animations")) and animhook or client.animation.oldplayer
				client.animation.reset = (class[1] and menu:GetVal("Misc", "Weapon Modifications", "Remove Animations")) and animhook or client.animation.oldreset
			end
			if name == "Remove Animations" then
				client.animation.player = (class[1] and menu:GetVal("Misc", "Weapon Modifications", "Enabled")) and animhook or client.animation.oldplayer
				client.animation.reset = (class[1] and menu:GetVal("Misc", "Weapon Modifications", "Remove Animations")) and animhook or client.animation.oldreset
			end
			if name == "Arm Chams" then -- TODO try to return the arms and weapon back to their original  colors and everything and shit
				if not class[1] then
					local vm = workspace.CurrentCamera:GetChildren()
					for i = 1, #vm do
						local model = vm[i]
						if model.Name:match(".*Arm$") then
							local children = model:GetChildren()
							for j = 1, #children do
								local part = children[j]
								--part.Color = originalArmColor
								if part.Transparency ~= 1 then
									part.Transparency = 0
								end
								--part.Material = mats[armmaterial]
								if part.ClassName == "MeshPart" or part.Name == "Sleeve" then
									--part.Color = menu:GetVal("Visuals", "Local", "Arm Chams", COLOR1, true)
									if part.Transparency ~= 1 then
										part.Transparency = 0
									end
								end
							end
						end
					end
				end
			elseif name == "Weapon Chams" then
				if not class[1] then
					local vm = workspace.CurrentCamera:GetChildren()
					for i = 1, #vm do
						local model = vm[i]
						if not model.Name:match(".*Arm$") then
							local children = model:GetChildren()
							for j = 1, #children do
								local part = children[j]
								--part.Color = originalWeaponColor
								if part.Transparency ~= 1 then
									part.Transparency = 0
								end
								--part.Material = mats[Weaponmaterial]
								if part.ClassName == "MeshPart" or part.Name == "Sleeve" then
									--part.Color = menu:GetVal("Visuals", "Local", "Weapon Chams", COLOR1, true)
									if part.Transparency ~= 1 then
										part.Transparency = 0
									end
								end
							end
						end
					end
				end
			end
		end)
		do
			local updC = client.char.updatecharacter; client.char.updatecharacter = function(spawnPosition)
				updC(spawnPosition);

				debug.setupvalue(client.loadplayer, 1, nil);
				local updater = client.loadplayer(LOCAL_PLAYER);
				debug.setupvalue(client.loadplayer, 1, LOCAL_PLAYER);

				if (updater) then
					updater.spawn(spawnPosition);

					local upvalues = debug.getupvalues(updater.step);

					for _, data in next, upvalues do
						if (typeof(data) == "table" and rawget(data, "makesound")) then
							data.makesound = false;
							break
						end
					end

					client.fakereceiver = upvalues[3];
					client.fakecharacter = debug.getupvalue(updater.spawn, 3);
					client.fakeupdater = updater;
				end

				client.characterParts = nil;

				local character = client.fakecharacter;
				local parts = {};
				local backup = {};
				local isA = game.IsA;

				for _, child in next, character:getDescendants() do
					if (isA(child, "BasePart") and child.Transparency == 0) then
						parts[#parts + 1] = child;
					elseif (isA(child, "Texture")) then
						parts[#parts + 1] = child;
					elseif (isA(child, "Decal")) then
						parts[#parts + 1] = child;
					elseif (isA(child, "SpecialMesh")) then
						parts[#parts + 1] = child;
					end
				end

				for _, part in next, parts do
					backup[#backup + 1] = part:Clone();
				end

				character.DescendantAdded:Connect(function(child)
					local prevAmount = #parts;

					if (isA(child, "BasePart") and child.Transparency == 0) then
						parts[#parts + 1] = child;
					elseif (isA(child, "Texture")) then
						parts[#parts + 1] = child;
					elseif (isA(child, "Decal")) then
						parts[#parts + 1] = child;
					elseif (isA(child, "SpecialMesh")) then
						parts[#parts + 1] = child;
					end

					if (#parts ~= prevAmount) then
						backup[#backup + 1] = child;
					end
				end);

				client.characterParts = { parts = parts, backup = backup };
			end
		end

		function misc:FlyHack()
			if menu:GetVal("Misc", "Movement", "Fly") and menu:GetKey("Misc", "Movement", "Fly") then
				local speed = menu:GetVal("Misc", "Movement", "Fly Speed")

				local travel = CACHED_VEC3
				local looking = Camera.CFrame.lookVector --getting camera looking vector
				local rightVector = Camera.CFrame.RightVector
				if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.W) then
					travel += looking
				end
				if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.S) then
					travel -= looking
				end
				if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.D) then
					travel += rightVector
				end
				if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.A) then
					travel -= rightVector
				end
				if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.Space) then
					travel += Vector3.new(0, 1, 0)
				end
				if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.LeftShift) then
					travel -= Vector3.new(0, 1, 0)
				end
				if travel.Unit.x == travel.Unit.x then
					rootpart.Anchored = false
					rootpart.Velocity = travel.Unit * speed --multiplaye the unit by the speed to make
				else
					rootpart.Velocity = Vector3.new(0, 0, 0)
					rootpart.Anchored = true
				end
			end
			if not menu:GetKey("Misc", "Movement", "Fly") then
				rootpart.Anchored = false
			end
		end

		client.char.ondied:Connect(function()
			local updater = client.fakeupdater;

			if (updater) then
				local character = updater.died();

				if (character) then
					character:Destroy();
				end
			end

			client.fakeupdater = nil;
			client.fakereceiver = nil;
			client.fakecharacter = nil;
			client.characterParts = nil;
		end)

		misc.speedDirection = Vector3.new(1,0,0)
		function misc:SpeedHack()
			if menu:GetKey("Misc", "Movement", "Fly") then
				return
			end
			local speedtype = menu:GetVal("Misc", "Movement", "Speed Type")
			if menu:GetVal("Misc", "Movement", "Speed") then
				local speed = menu:GetVal("Misc", "Movement", "Speed Factor")

				local travel = CACHED_VEC3
				local looking = Camera.CFrame.LookVector
				local rightVector = Camera.CFrame.RightVector
				local moving = false
				if not menu:GetKey("Misc", "Movement", "Circle Strafe") then
					if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.W) then
						travel += looking
					end
					if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.S) then
						travel -= looking
					end
					if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.D) then
						travel += rightVector
					end
					if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.A) then
						travel -= rightVector
					end
					misc.speedDirection = Vector3.new(travel.x, 0, travel.z).Unit
					-- if misc.speedDirection.x ~= misc.speedDirection.x then
					-- 	misc.speedDirection = Vector3.new(looking.x, 0, looking.y)
					-- end
					misc.circleStrafeAngle = -0.1
				else
					if misc.speedDirection.x ~= misc.speedDirection.x then
						misc.speedDirection = Vector3.new(looking.x, 0, looking.y)
					end
					travel = misc.speedDirection
					misc.circleStrafeAngle = -0.1

					if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.D) then
						misc.circleStrafeAngle = 0.1
					end
					if INPUT_SERVICE:IsKeyDown(Enum.KeyCode.A) then
						misc.circleStrafeAngle = -0.1
					end
					local cd = Vector2.new(misc.speedDirection.x, misc.speedDirection.z)
					cd = bVector2:getRotate(cd, misc.circleStrafeAngle)
					misc.speedDirection = Vector3.new(cd.x, 0, cd.y)
				end

				travel = misc.speedDirection
				if menu:GetKey("Misc", "Movement", "Avoid Collisions") then
					if menu:GetKey("Misc", "Movement", "Circle Strafe") then
						local scale = menu:GetVal("Misc", "Movement", "Avoid Collisions Scale") / 1000
						local position = client.char.torso.CFrame.p
						local part, position, normal = workspace:FindPartOnRayWithWhitelist(
							Ray.new(position, (travel * speed * scale)),
							client.roundsystem.raycastwhitelist
						)
						if part then
							for i = -10, 10 do
								local cd = Vector2.new(travel.x, travel.z)
								cd = bVector2:getRotate(cd, misc.circleStrafeAngle * i * -1)
								cd = Vector3.new(cd.x, 0, cd.y)
								local part, position, normal = workspace:FindPartOnRayWithWhitelist(
									Ray.new(position, (cd * speed * scale)),
									client.roundsystem.raycastwhitelist
								)
								misc.normal = normal
								if not part then
									travel = cd
								end
							end
						end
					else
						local position = client.char.torso.CFrame.p
						for i = 1, 10 do
							local part, position, normal = workspace:FindPartOnRayWithWhitelist(
								Ray.new(position, (travel * speed / 10) + Vector3.new(0,rootpart.Velocity.y/10,0)),
								client.roundsystem.raycastwhitelist
							)
							misc.normal = normal
							if part then
								local dot = normal.Unit:Dot((client.char.torso.CFrame.p - position).Unit)
								misc.normalPositive = dot
								if dot > 0 then
									travel += normal.Unit * dot
									travel = travel.Unit
									if travel.x == travel.x then
										misc.circleStrafeDirection = travel
									end
								end
							end
						end
					end
				end
				if travel.x == travel.x and humanoid:GetState() ~= Enum.HumanoidStateType.Climbing then
					if speedtype == 2 and (humanoid:GetState() ~= Enum.HumanoidStateType.Freefall or not humanoid.Jump)
					then
						return
					elseif speedtype == 3 and not INPUT_SERVICE:IsKeyDown(Enum.KeyCode.Space) then
						return
					end

					if menu:GetKey("Misc", "Movement", "Speed", true) then
						rootpart.Velocity = Vector3.new(travel.x * speed, rootpart.Velocity.y, travel.z * speed)
					end
				end
			end
		end

		local autopeekiterator = 5
		function misc:AutoPeek()
			if self.autopeektimeout and self.autopeektimeout > 0 then
				self.autopeektimeout -= 1
				return
			end

			if not client.char.alive then
				return
			end
			if menu:GetKey("Rage", "Extra", "Auto Peek") and menu:GetVal("Rage", "Aimbot", "Enabled") then
				local hitscanpreference = misc:GetParts({ [menu:GetVal("Rage", "Aimbot", "Hitscan Priority")] = true })
				local prioritizedpart = menu:GetVal("Rage", "Aimbot", "Hitscan Priority")

				autopeekiterator += 10
				local dist = (autopeekiterator % 20) + 10
				local origin = client.lastrepupdate + Camera.CFrame.LookVector * dist
				if not self.autopeekposition then
					local targetPart, targetPlayer, fov, firepos, head, newbone, hitbox = ragebot:GetTarget(prioritizedpart, nil, CFrame.new(origin))


					self.autopeekposition = firepos
					if self.autopeekposition and workspace:Raycast(
							client.lastrepupdate,
							self.autopeekposition - client.lastrepupdate,
							mapRaycast
						)
					then
						self.autopeekposition = nil
					end
				end
				if self.autopeekposition and not workspace:Raycast(client.lastrepupdate, self.autopeekposition - client.lastrepupdate, mapRaycast)
				then
					misc:Teleport(self.autopeekposition)
					self.autopeekposition = nil
					self.autopeektimeout = 100
				end
			else
				self.autopeekposition = nil
			end
		end

		function misc:AutoJump()
			if menu:GetVal("Misc", "Movement", "Auto Jump") and INPUT_SERVICE:IsKeyDown(Enum.KeyCode.Space) then
				humanoid.Jump = true
			end
		end

		function misc:GravityShift()
			if menu:GetVal("Misc", "Tweaks", "Gravity Shift") then
				local scaling = menu:GetVal("Misc", "Tweaks", "Gravity Shift Percentage")
				local mappedGrav = map(scaling, -100, 100, -196.2, 196.2)
				workspace.Gravity = 196.2 + mappedGrav
			else
				workspace.Gravity = 196.2
			end
		end

		function misc:MainLoop()
			rootpart = LOCAL_PLAYER.Character and client.char.rootpart
			humanoid = LOCAL_PLAYER.Character and LOCAL_PLAYER.Character:FindFirstChild("Humanoid")
			if rootpart and humanoid then
				if not CHAT_BOX.Active then
					misc:SpeedHack()
					misc:FlyHack()
					misc:AutoJump()
					misc:GravityShift()
					misc:AutoPeek()
					--misc:RoundFreeze()
				elseif menu:GetKey("Misc", "Movement", "Fly") then
					rootpart.Anchored = true
				end
				misc:ApplyGunMods()
			end
			local newval, lastval = menu:GetVal("Misc", "Extra", "Break Windows")
			if newval ~= lastval and newval then
				CreateThread(function()
					local parts = workspace.Map:GetDescendants()
					for i = 1, #parts do
						local part = parts[i]
						if part.Name == "Window" then
							client.effects:breakwindow(part, Vector3.new())
						end
					end
				end)
			end
		end
		client.stutterFrames = 0

		do --ANCHOR send hook
			client.net.send = function(self, ...)

				if menu == nil then return end

				local args = { ... }
				if args[1] == "spawn" then
					UnpackRelations()
					client.spawns = { }
					CreateThread(function()
						local parts = workspace.Map:GetDescendants()
						for i = 1, #parts do
							local part = parts[i]

							if menu:GetVal("Misc", "Extra", "Break Windows") then
								if part.Name == "Window" then
									client.effects:breakwindow(part, Vector3.new())
								end
							end
							if part.Name == "Spawn" then
								table.insert(client.spawns, part)
							end
						end
					end)
					misc.model = nil
					misc:ApplyGunMods()
					misc.autopeektimeout = 100
				end
				if args[1] == "logmessage" or args[1] == "debug" then
					CreateThread(function()
						wait(1)
						menu.debugged = true
					end)
					local message = ""
					for i = 1, #args - 1 do
						message ..= tostring(args[i]) .. ", "
					end
					message ..= tostring(args[#args])
					if message:find("Kick") then
						if menu:GetVal("Misc", "Extra", "Join New Game On Kick") then
							local Servers = game.HttpService:JSONDecode(game:HttpGet(("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100"):format(game.PlaceId)))
							--
							for Index, Value in pairs(Servers.data) do
								if Value.playing ~= Value.maxPlayers then
									TELEPORT_SERVICE:TeleportToPlaceInstance(game.PlaceId, Value.id)
								end
							end
						end
						return
					end
					if not menu.debugged then
						CreateNotification(message)
					end
					return
				end
				if args[1] == "repupdate" then
					if args[2] ~= args[2] or args[2].Unit.X ~= args[2].Unit.X then
						return
					end
				end
				if args[1] == "chatted" then
					local message = args[2]
					local commandLocation = #message > 1 and string.find(message, "\\")
					if commandLocation == 1 then
						local i = 1
						local args = {}
						local func
						local name
						for f in message:gmatch("%w+") do
							if i == 1 then
								name = f:lower()
								func = CommandFunctions[f:lower()]
							else
								table.insert(args, f)
							end
							i += 1
						end
						if name == "cmdlist" or name == "help" then
							return CommandFunctions.cmdlist(CommandFunctions, unpack(args))
						end
						if func then
							return func(unpack(args))
						else
							return CreateNotification("Not a command, try \"\\help\" to see available commands.")
						end
					end
				end
				if args[1] == "bullethit" then
					if menu:GetVal("Misc", "Sounds", "Hit Sounds") then
						local Hit = args[4]
						--
						local soundid
						local soundEmpty
						local soundid
						--
						if tostring(Hit) == "Head" and menu:GetVal("Misc", "Sounds", "Head Hit Sound") then
							soundid = menu:GetVal("Misc", "Sounds", "headhitsoundid")
							soundEmpty = soundid == ""
							soundid = soundEmpty and "rbxassetid://5043539486" or soundid
						else
							soundid = menu:GetVal("Misc", "Sounds", "bodyhitsoundid")
							soundEmpty = soundid == ""
							soundid = soundEmpty and "rbxassetid://3744371342" or soundid
						end
						--
						if not soundEmpty then
							local isSoundPath = soundid:match("%D+") or false
							if isSoundPath then
								if not soundid:match("^rbxassetid://") then
									local validPath = isfile(soundid)
									if validPath then
										soundid = getsynasset(soundid)
									end
								end
							else
								local shit = soundid:match("%d+")
								soundid = string.format("rbxassetid://%d", shit)
							end
						end

						if menu:GetVal("Misc", "Sounds", "Head Hit Sound") or menu:GetVal("Misc", "Sounds", "Body Hit Sound") then
							client.sound.PlaySoundId(
								soundid,
								menu:GetVal("Misc", "Sounds", "Hit Sound Volume") / 10,
								1.0,
								workspace,
								nil,
								0,
								0.03
							)
						end
					end
					--
					if menu:GetVal("Misc", "Extra", "Suppress Only") then
						return
					end
				end
				if args[1] == "bullethit" or args[1] == "knifehit" then
					if table.find(menu.friends, args[2].Name) and menu:GetVal("Misc", "Extra", "Ignore Friends")
					then
						return
					end
				end
				if args[1] == "stance" and menu:GetVal("Rage", "Anti Aim", "Enabled") and menu:GetVal("Rage", "Anti Aim", "Force Stance") ~= 1
				then
					return
				end
				if args[1] == "sprint" and menu:GetVal("Rage", "Anti Aim", "Enabled") and menu:GetVal("Rage", "Anti Aim", "Lower Arms")
				then
					return
				end
				if args[1] == "falldamage" then
					if menu:GetVal("Misc", "Tweaks", "Prevent Fall Damage") or misc.teleporting then
						return
					end
				end
				if args[1] == "newbullets" then

					if legitbot.silentVector then
						for k = 1, #args[2].bullets do
							local bullet = args[2].bullets[k]
							bullet[1] = legitbot.silentVector
						end
					end

					if ragebot.silentVector then
						-- duct tape fix or whatever the fuck its called for this its stupid
						args[2].camerapos = client.lastrepupdate -- attempt to make dumping happen less
						args[2].firepos = ragebot.firepos
						-- if shitting_my_pants == false and menu:GetVal("Misc", "Exploits", "Noclip") and keybindtoggles.fakebody then
						-- 	args[2].camerapos = client.cam.cframe.p - Vector3.new(0, client.fakeoffset, 0)
						-- end
						local cachedtimedata = {}

						local hitpoint = ragebot.intersection or ragebot.targetpart.Position
						-- i need to improve this intersection system a lot, because this can cause problems and nil out and not register the hit
						-- properly when you're using Aimbot Performance Mode... fuggjegrnjeiar ngreoi greion agreino agrenoigenroino

						local angle, bullettime = client.trajectory(
								ragebot.firepos,
								GRAVITY,
								hitpoint,
								client.logic.currentgun.data.bulletspeed
							)
						if not angle or not bullettime then
							return
						end
						for k = 1, #args[2].bullets do
							local bullet = args[2].bullets[k]
							bullet[1] = angle
						end
						ragebot.lasthittime = ragebot.time
						ragebot.lasthittick = tick()
						send(self, unpack(args))

						for k = 1, #args[2].bullets do
							local bullet = args[2].bullets[k]
							if menu:GetVal("Visuals", "Extra", "Bullet Tracers") then
								local origin = args[2].firepos
								local attach_origin = Instance.new("Attachment", workspace.Terrain)
								attach_origin.Position = origin
								local ending = origin + bullet[1].unit.Unit * 300
								local attach_ending = Instance.new("Attachment", workspace.Terrain)
								attach_ending.Position = ending
								local beam = misc:CreateBeam(attach_origin, attach_ending)
								beam.Parent = workspace
							end
							local hitinfo = {
								ragebot.target,
								hitpoint,
								ragebot.targetpart.Name,
								bullet[2],
							}
							client.hud:firehitmarker(ragebot.targetpart.Name == "Head")
							client.sound.PlaySound("hitmarker", nil, 1, 1.5)
							send(self, "bullethit", unpack(hitinfo))
						end
						return
					else
						if menu:GetVal("Visuals", "Extra", "Bullet Tracers") then
							for k = 1, #args[2].bullets do
								local bullet = args[2].bullets[k]
								local origin = args[2].firepos
								local attach_origin = Instance.new("Attachment", workspace.Terrain)
								attach_origin.Position = origin
								local ending = origin + (type(bullet[1]) == "table" and bullet[1].unit.Unit or bullet[1].Unit) * 300
								local attach_ending = Instance.new("Attachment", workspace.Terrain)
								attach_ending.Position = ending
								local beam = misc:CreateBeam(attach_origin, attach_ending)
								beam.Parent = workspace
							end
						end
					end
				elseif args[1] == "stab" then
					syn.set_thread_identity(1)
					if menu:GetVal("Rage", "Extra", "Knife Bot") and menu:GetKey("Rage", "Extra", "Knife Bot", true)
					then
						if menu:GetVal("Rage", "Extra", "Knife Bot Type") == 1 then
							ragebot:KnifeTarget(ragebot:GetKnifeTargets()[1])
						end
						if menu:GetVal("Rage", "Extra", "Knife Bot Type") == 4 then
							local target = ragebot:GetKnifeTargets()[1]
							ragebot:KnifeTarget(target)
							ragebot:KnifeTarget(target)
						end
					end
				elseif args[1] == "repupdate" then
					uberpart.Transparency = menu:GetKey("Rage", "Hack vs. Hack", "Freestanding") and 0 or 1
					if menu:GetKey("Rage", "Hack vs. Hack", "Freestanding") then
						for i = 1, #directiontable do
							--local direction = directiontable[i].Unit * 19
							local cf = client.cam.basecframe
							cf -= cf.UpVector
							local translated = vtos(cf, directiontable[i])
							local direction = translated.Unit * 19
							--local direction = directiontable[i].Unit *

							local raycastResult = workspace:Raycast(args[2], direction, mapRaycast)

							if raycastResult then
								--args[1] = raycastResult.Position
								local normal = raycastResult.Normal
								local hitpos = raycastResult.Position
								local newpos = hitpos + normal
								--local newpos = ptos(raycast)
								uberpart.Position = newpos
								args[2] = newpos
								break
							end
						end
					end
					client.lastrepupdate = args[2]
					-- if shitting_my_pants == false and menu:GetVal("Misc", "Exploits", "Noclip") and keybindtoggles.fakebody then
					-- 	if not client.fakeoffset then client.fakeoffset = 18 end

					-- 	local nextinc = client.fakeoffset + 9
					-- 	client.fakeoffset = nextinc <= 48 and nextinc or client.fakeoffset
					-- end
					if menu:GetVal("Rage", "Anti Aim", "Enabled") then
						--args[2] = ragebot:AntiNade(args[2])
						client.stutterFrames += 1
						local pitch = args[3].x
						local yaw = args[3].y
						local pitchChoice = menu:GetVal("Rage", "Anti Aim", "Pitch")
						local yawChoice = menu:GetVal("Rage", "Anti Aim", "Yaw")
						local spinRate = menu:GetVal("Rage", "Anti Aim", "Spin Rate")
						---"off,down,up,roll,upside down,random"
						--{"Off", "Up", "Zero", "Down", "Upside Down", "Roll Forward", "Roll Backward", "Random"} pitch
						local new_angles
						if pitchChoice == 2 then
							pitch = -4
						elseif pitchChoice == 3 then
							pitch = 0
						elseif pitchChoice == 4 then
							pitch = 4.7
						elseif pitchChoice == 5 then
							pitch = -math.pi
						elseif pitchChoice == 6 then
							pitch = (tick() * spinRate) % 6.28
						elseif pitchChoice == 7 then
							pitch = (-tick() * spinRate) % 6.28
						elseif pitchChoice == 8 then
							pitch = math.random(99999)
						elseif pitchChoice == 9 then
							pitch = math.sin((tick() % 6.28) * spinRate)
						elseif pitchChoice == 10 then
							pitch = 2 ^ 127 + 1
						end



						--{"Off", "Backward", "Spin", "Random"} yaw
						if yawChoice == 2 then
							yaw += math.pi
						elseif yawChoice == 3 then
							yaw = (tick() * spinRate) % 12
						elseif yawChoice == 4 then
							yaw = math.random(99999)
						elseif yawChoice == 5 then
							yaw = 16478887
						elseif yawChoice == 6 then
							yaw = client.stutterFrames % (6 * (spinRate / 4)) >= ((6 * (spinRate / 4)) / 2) and 2 or -2
						elseif yawChoice == 7 then
							new_angles = Vector2.new()
						end

						-- yaw += jitter

						if menu:GetVal("Rage", "Anti Aim", "Hide in Floor") then
							args[2] = args[2] - Vector3.new(0, 1, 0)
						end

						new_angles = new_angles or Vector2.new(clamp(pitch, 1.5, -1.5), yaw)
						args[3] = new_angles
						ragebot.angles = new_angles
					else
						ragebot.angles = args[3]
					end

					local updater = client.fakeupdater;

					if (updater) then
						local position, time = args[2], args[4];
						local reset, frame, velocity = false, self:getTime(), emptyVector3;

						if (updater.receivedPosition and updater.receivedFrameTime) then
							velocity = (position - updater.receivedPosition) / (time - updater.receivedFrameTime);
						end

						if (updater.lastPacketTime and (frame - updater.lastPacketTime) > 0.5) then
							reset = true;
							updater.breakcount = updater.breakcount + 1;
						end

						client.fakereceiver:receive(frame, time, {
							t = time,
							position = position,
							velocity = velocity,
							angles = args[3],
							breakcount = updater.breakcount
						}, reset);

						updater.updaterecieved = true;
						updater.receivedPosition = position;
						updater.receivedFrameTime = time;
						updater.lastPacketTime = frame;
					end
				end
				local updater = client.fakeupdater;
				if (updater) then
					local name = args[1];

					if (name == "aim") then
						updater.setaim(args[2]);
					end

					if (name == "sprint") then
						updater.setsprint(args[2]);
					end

					if (name == "stance") then
						updater.setstance(args[2]);
					end

					if (name == "stab") then
						updater.stab();
					end

					if (name == "equip") then
						local currentGun = client.logic.currentgun;
						local gunName = currentGun.name;
						local WeaponDatabase = game.ReplicatedStorage.Content.ProductionContent.WeaponDatabase;
						local WeaponStuff
						--
						for Index, Value in pairs(WeaponDatabase:GetChildren()) do
							if Value:FindFirstChild(gunName) then
								WeaponStuff = Value:FindFirstChild(gunName)
							end
						end
						--
						local data, model = require(WeaponStuff:FindFirstChild("WeaponData")), WeaponStuff:FindFirstChild("External");

						if (data and model) then
							if (data.type == "KNIFE") then
								updater.equipknife(data, model);
							else
								updater.equip(data, model);
							end
						end
					end
				end
				return send(self, unpack(args))
			end
			-- Legitbot definition defines legit functions
			-- Legitbot definition defines legit functions
			-- Legitbot definition defines legit functions
			-- Legitbot definition defines legit functions
			-- Legitbot definition defines legit functions
			-- Legitbot definition defines legit functions
			-- Not Rage Functons Dumbass

			do -- ANCHOR Legitbot definition defines legit functions
				legitbot.triggerbotShooting = false
				legitbot.silentAiming = false
				legitbot.silentVector = nil

				local function Move_Mouse(delta)
					local coef = client.cam.sensitivitymult * math.atan(
						math.tan(client.cam.basefov * (math.pi / 180) / 2) / 2.72 ^ client.cam.magspring.p
					) / (32 * math.pi)
					local x = client.cam.angles.x - coef * delta.y
					x = x > client.cam.maxangle and client.cam.maxangle or x < client.cam.minangle and client.cam.minangle or x
					local y = client.cam.angles.y - coef * delta.x
					local newangles = Vector3.new(x, y, 0)
					client.cam.delta = (newangles - client.cam.angles) / 0.016666666666666666
					client.cam.angles = newangles
				end

				function legitbot:MainLoop()
					if legitbot.target then
						renderChamsOnPlayer(legitbot.target, nil, false)
					end
					legitbot.target = nil

					if not menu.open and INPUT_SERVICE.MouseBehavior ~= Enum.MouseBehavior.Default and client.logic.currentgun
					then
						------debug.profilebegin("Legitbot Main")
						if menu:GetVal("Legit", "Aim Assist", "Enabled") then
							local keybind = menu:GetVal("Legit", "Aim Assist", "Aimbot Key") - 1
							local fov = menu:GetVal("Legit", "Aim Assist", "Aimbot FOV")
							local sFov = menu:GetVal("Legit", "Bullet Redirection", "Silent Aim FOV")
							local dzFov = menu:GetVal("Legit", "Aim Assist", "Deadzone FOV")
							if not menu:GetVal("Legit", "Aim Assist", "Dynamic FOV") then
								fov = Camera.FieldOfView / client.char.unaimedfov * fov
								dzFov = Camera.FieldOfView / client.char.unaimedfov * dzFov
								sFov = Camera.FieldOfView / client.char.unaimedfov * sFov
							end

							local hitboxPriority = menu:GetVal("Legit", "Aim Assist", "Hitscan Priority") == 1 and "head" or menu:GetVal("Legit", "Aim Assist", "Hitscan Priority") == 2 and "torso" or "closey :)"
							local hitscan = misc:GetParts(menu:GetVal("Legit", "Aim Assist", "Hitscan Points"))

							if client.logic.currentgun.type ~= "KNIFE" and (keybind >= 2 or INPUT_SERVICE:IsMouseButtonPressed(keybind))
							then
								local speed = 1
								if keybind == 3 then
									speed = 0.2
									for i = 0, 1 do
										if INPUT_SERVICE:IsMouseButtonPressed(i) then
											speed += 0.4
										end
									end
								end
								legitbot.smart = speed
								local priority_list = {}
								for k, PlayerName in pairs(menu.priority) do
									if Players:FindFirstChild(PlayerName) then
										table.insert(priority_list, game.Players[PlayerName])
									end
								end
								local targetPart, closest, player = legitbot:GetTargetLegit(hitboxPriority, hitscan, priority_list, fov, dzFov)
								if not targetPart then
									targetPart, closest, player = legitbot:GetTargetLegit(hitboxPriority, hitscan, nil, fov, dzFov)
								end
								legitbot.target = player
								renderChamsOnPlayer(legitbot.target)
								if closest > dzFov then
									local smoothing = menu:GetVal("Legit", "Aim Assist", "Smoothing") * 5 + 10
									if targetPart then
										legitbot:AimAtTarget(
											targetPart,
											smoothing,
											menu:GetVal("Legit", "Aim Assist", "Smoothing Type"),
											speed
										)
									end
								end
							end
						end
						if menu:GetVal("Legit", "Bullet Redirection", "Silent Aim") then
							local fov = menu:GetVal("Legit", "Bullet Redirection", "Silent Aim FOV")
							local hnum = menu:GetVal("Legit", "Bullet Redirection", "Hitscan Priority")
							local hitboxPriority = hnum == 1 and "head" or hnum == 2 and "torso" or hnum == 3 and false
							local hitscan = misc:GetParts(menu:GetVal("Legit", "Bullet Redirection", "Hitscan Points"))
							local priority_list = {}
							for k, PlayerName in pairs(menu.priority) do
								if Players:FindFirstChild(PlayerName) then
									table.insert(priority_list, game.Players[PlayerName])
								end
							end
							local targetPart, closest, player = legitbot:GetTargetLegit(hitboxPriority, hitscan, priority_list, fov)
							if not targetPart then
								targetPart, closest, player = legitbot:GetTargetLegit(hitboxPriority, hitscan, nil, fov)
							end
							if targetPart then
								legitbot.silentVector = legitbot:SilentAimAtTarget(targetPart)
							elseif client.logic.currentgun and client.logic.currentgun.barrel then
								legitbot.silentVector = nil
								local barrel = client.logic.currentgun.barrel
								if client.logic.currentgun.type == "SHOTGUN" and barrel and barrel.Parent then
									local trigger = barrel.Parent.Trigger
									if trigger then
										barrel.Orientation = trigger.Orientation
										client:GetToggledSight(client.logic.currentgun).sightpart.Orientation = trigger.Orientation
									end
								end
							end
						end
						--debug.profileend("Legitbot Main")
					end
				end

				function legitbot:AimAtTarget(targetPart, smoothing, smoothtype, speed)
					------debug.profilebegin("Legitbot AimAtTarget")
					if not targetPart then
						return
					end

					local Pos, visCheck

					if menu:GetVal("Legit", "Aim Assist", "Adjust for Bullet Drop") then
						if not client.logic.currentgun or not client.logic.currentgun.data or not client.logic.currentgun.data.bulletspeed
						then
							return
						end
						local bulletVelocity, bulletTravelTime = client.trajectory(
							client.cam.cframe.p,
							GRAVITY,
							targetPart.Position,
							client.logic.currentgun.data.bulletspeed
						)
						local finalPosition
						if menu:GetVal("Legit", "Aim Assist", "Target Prediction") then
							local playerHit = client.replication.getplayerhit(targetPart)
							local rootpart = client.replication.getbodyparts(playerHit).torso
							local velocity = rootpart.Velocity
							local finalVelocity = velocity * bulletTravelTime
							finalPosition = targetPart.Position + finalVelocity
							bulletVelocity, bulletTravelTime = client.trajectory(
								client.cam.cframe.p,
								GRAVITY,
								finalPosition,
								client.logic.currentgun.data.bulletspeed
							)
						else
							finalPosition = targetPart.Position
						end
						Pos, visCheck = Camera:WorldToScreenPoint(targetPart.Position + bulletVelocity)
						--Pos, visCheck = Camera:WorldToScreenPoint(camera:GetTrajectory(targetPart.Position, Camera.CFrame.Position))
					else
						Pos, visCheck = Camera:WorldToScreenPoint(targetPart.Position)
					end
					local randMag = menu:GetVal("Legit", "Aim Assist", "Randomization") * 5
					Pos += Vector3.new(
						math.noise(time() * 0.1, 0.1) * randMag,
						math.noise(time() * 0.1, 200) * randMag,
						0
					)

					if client.logic.currentgun and client.logic.currentgun.type ~= "KNIFE" and client.logic.currentgun:isaiming() and menu:GetVal("Legit", "Recoil Control", "Weapon RCS")
					then
						local sniping = (menu:GetVal("Legit", "Recoil Control", "Disable RCS While")[1] and client.logic.currentgun.type ~= "SNIPER") or (menu:GetVal("Legit", "Recoil Control", "Disable RCS While")[1] == false)
						local scoping = (menu:GetVal("Legit", "Recoil Control", "Disable RCS While")[2] and client:GetToggledSight(client.logic.currentgun).sightspring.p > 0.5) or (menu:GetVal("Legit", "Recoil Control", "Disable RCS While")[2] == false)
						local shooting = (menu:GetVal("Legit", "Recoil Control", "Disable RCS While")[3] and INPUT_SERVICE:IsMouseButtonPressed(0)) or (menu:GetVal("Legit", "Recoil Control", "Disable RCS While")[3] == false)
						if sniping and scoping and shooting then
							local sight = client:GetToggledSight(client.logic.currentgun).sightpart
							local gunpos2d = Camera:WorldToScreenPoint(sight.Position)

							local rcs = Vector2.new(LOCAL_MOUSE.x - gunpos2d.x, LOCAL_MOUSE.y - gunpos2d.y)

							local xo = menu:GetVal("Legit", "Recoil Control", "Recoil Control X") / 2
							local yo = menu:GetVal("Legit", "Recoil Control", "Recoil Control Y")
							local rcsdelta = Vector3.new(rcs.x * xo / 100, rcs.y * yo / 100, 0)  --* client:GetToggledSight(client.logic.currentgun).sightspring.p
							Pos += rcsdelta
						end
					end
					local aimbotMovement = Vector2.new(Pos.x - LOCAL_MOUSE.x, Pos.y - LOCAL_MOUSE.y)
					if smoothtype == 1 then
						Move_Mouse(aimbotMovement * speed / smoothing)
					else
						local unitMovement = aimbotMovement.Unit
						local newMovement = aimbotMovement.Magnitude > unitMovement.Magnitude and unitMovement or aimbotMovement / 50

						Move_Mouse(newMovement * speed / smoothing * 100)
					end
					--debug.profileend("Legitbot AimAtTarget")
				end

				function legitbot:SilentAimAtTarget(targetPart)
					------debug.profilebegin("Legitbot SilentAimAtTarget")

					if not targetPart or not targetPart.Position or not client.logic.currentgun then
						return
					end
					if not client.logic.currentgun or not client.logic.currentgun.barrel then
						return
					end

					if client.logic.currentgun.type == "KNIFE" then
						return
					end

					if math.random(0, 100) > menu:GetVal("Legit", "Bullet Redirection", "Hit Chance") then
						return
					end

					if not client.logic.currentgun.barrel then
						return
					end
					local origin = client.logic.currentgun.isaiming() and client:GetToggledSight(client.logic.currentgun) or client.logic.currentgun.barrel.Position

					local target = targetPart.Position
					local dir, bulletTravelTime = client.trajectory(
							client.cam.cframe.p,
							GRAVITY,
							target,
							client.logic.currentgun.data.bulletspeed
						)
					if menu:GetVal("Legit", "Aim Assist", "Target Prediction") then
						local playerHit = client.replication.getplayerhit(targetPart)
						local rootpart = client.replication.getbodyparts(playerHit).torso
						local velocity = rootpart.Velocity
						local finalVelocity = velocity * bulletTravelTime
						target += finalVelocity
						dir = client.trajectory(
							client.cam.cframe.p,
							GRAVITY,
							target,
							client.logic.currentgun.data.bulletspeed
						)
					end
					dir = dir.Unit

					local offsetMult = map(
						(menu:GetVal("Legit", "Bullet Redirection", "Accuracy") / 100 * -1 + 1),
						0,
						1,
						0,
						0.3
					)
					local offset = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5)
					dir += offset * offsetMult

					--debug.profileend("Legitbot SilentAimAtTarget")
					if client.logic.currentgun.type == "SHOTGUN" then
						local x, y, z = CFrame.lookAt(Vector3.new(), dir.Unit):ToOrientation()
						client.logic.currentgun.barrel.Orientation = Vector3.new(math.deg(x), math.deg(y), math.deg(z))
						client:GetToggledSight(client.logic.currentgun).sightpart.Orientation = Vector3.new(math.deg(x), math.deg(y), math.deg(z))
						return
					end
					return dir.Unit
				end

				local function isValidTarget(Bone, Player)
					if camera:IsVisible(Bone) then
						return Bone
					end
				end
				function legitbot:GetTargetLegit(partPreference, hitscan, players, maxfov, minfov)
					minfov = minfov or 0

					------debug.profilebegin("Legitbot GetTargetLegit")
					local closest, closestPart, player = math.huge
					partPreference = partPreference or "what"
					hitscan = hitscan or {}
					players = players or game.Players:GetPlayers()

					if legitbot.target and client.hud:isplayeralive(legitbot.target) then
						local Parts = client.replication.getbodyparts(legitbot.target)
						if Parts then
							new_closest = closest
							for k, Bone in pairs(Parts) do
								if Bone.ClassName == "Part" and hitscan[k] then
									local fovToBone = camera:GetFOV(Bone)
									if fovToBone < maxfov and fovToBone < closest then
										local validPart = isValidTarget(Bone, Player)
										if validPart then
											closest = fovToBone
											closestPart = Bone
											player = legitbot.target
											return closestPart, closest, player
										end
									end
								end
							end
						end
					end

					for i, Player in pairs(players) do
						if table.find(menu.friends, Player.Name) and menu:GetVal("Misc", "Extra", "Ignore Friends")
						then
							continue
						end

						if client.hud:isplayeralive(Player) and Player.Team ~= LOCAL_PLAYER.Team and Player ~= LOCAL_PLAYER then
							local Parts = client.replication.getbodyparts(Player)
							if Parts then
								new_closest = closest
								for k, Bone in pairs(Parts) do
									if Bone.ClassName == "Part" and hitscan[k] then
										local fovToBone = camera:GetFOV(Bone)
										if fovToBone < maxfov and fovToBone < closest then
											local validPart = isValidTarget(Bone, Player)
											if validPart then
												closest = fovToBone
												closestPart = Bone
												player = Player
											end
										end
									end
								end
							end
						end
					end

					if player and closestPart then
						local Parts = client.replication.getbodyparts(player)
						if partPreference then
							local PriorityBone = Parts[partPreference]
							if PriorityBone then
								local fov_to_bone = camera:GetFOV(PriorityBone)
								if fov_to_bone and fov_to_bone < closest and camera:IsVisible(PriorityBone) then
									closest = camera:GetFOV(PriorityBone)
									closestPart = PriorityBone
								end
							end
						end
					end
					--debug.profileend("Legitbot GetTargetLegit")
					return closestPart, closest, player
				end

				function legitbot:TriggerBot()
					-- i swear to god the capital GetVal makes me do Menu:GetVal
					if menu:GetVal("Legit", "Trigger Bot", "Enabled") and menu:GetKey("Legit", "Trigger Bot", "Enabled", true)
					then
						local parts = misc:GetParts(menu:GetVal("Legit", "Trigger Bot", "Trigger Bot Hitboxes"))

						local gun = client.logic.currentgun
						if not gun then
							return
						end
						local dsrgposrdjiogjaiogjaoeihjoaiest = "data" -- it loves it
						if not gun.data then
							return
						end

						local thebarrel = gun.barrel
						------debug.profilebegin("Legitbot Triggerbot")
						local bulletspeed = gun.data.bulletspeed
						local isaiming = gun:isaiming()
						local zoomval = menu:GetVal("Legit", "Trigger Bot", "Aim Percentage") / 100
						--local shootallowed = menu:GetVal("Legit", "Trigger Bot", "Trigger When Aiming") and (isaiming and (client.zoommodspring.p > zoomval) or false) or true -- isaiming and (zoommodspring.p > zoomval) or false is somewhat redundant but oh well lmao
						local shootallowed

						if menu:GetVal("Legit", "Trigger Bot", "Trigger When Aiming") then
							shootallowed = isaiming and (client.zoommodspring.p >= zoomval) or false
						else
							shootallowed = true
						end

						if shootallowed then
							for player, bodyparts in next, getupvalue(client.replication.getallparts, 1) do
								if player.Team ~= LOCAL_PLAYER.Team then
									for bpartname, bodypart in next, bodyparts do
										if bodypart:IsA("Part") and bodypart.Transparency == 0 and parts[bpartname]
										then
											if camera:IsVisible(bodypart) then
												local barrel = isaiming and gun.aimsightdata[1].sightpart or thebarrel
												local delta = (bodypart.Position - barrel.Position)
												local direction = client.trajectory(
													barrel.Position,
													GRAVITY,
													bodypart.Position,
													bulletspeed
												).Unit
												local barrelLV = barrel.CFrame.LookVector
												local normalized = barrelLV.unit

												local dot = normalized:Dot(direction)

												if delta.magnitude > 2050 then
													if barrelLV.Y >= direction.Y then
														local dist = delta.magnitude ^ -2.3

														local dotthreshold = 1 - dist

														if dot >= dotthreshold then
															gun:shoot(true)
															legitbot.triggerbotShooting = true
															return
														end
													end
												else
													local whitelist = { bodypart }

													if gun.type == "SHOTGUN" or gun.data.pelletcount then
														table.insert(whitelist, menu.parts.sphereHitbox)
														menu.parts.sphereHitbox.Position = bodypart.Position
													end

													local hit, hitpos = workspace:FindPartOnRayWithWhitelist(
														Ray.new(barrel.Position, normalized * 4000),
														whitelist
													)
													if hit and hit:IsDescendantOf(bodypart.Parent.Parent) or hit == menu.parts.sphereHitbox
													then
														local hitdir = (hitpos - barrel.Position).unit
														if hitdir:Dot(direction) > 0.9993 then
															gun:shoot(true)
															legitbot.triggerbotShooting = true
															return
														end
													end
												end
											end
										elseif legitbot.triggerbotShooting then
											gun:shoot(false)
											legitbot.triggerbotShooting = false
										end
									end
								end
							end
						end
						--debug.profileend("Legitbot Triggerbot")
					end
				end
			end

			local newpart = client.particle.new
			setreadonly(client.particle, false)
			client.particle.new = function(P)
				local new_speed
				-- if menu:GetVal("Misc", "Weapon Modifications", "Edit Bullet Speed") then
				-- 	new_speed = menu:GetVal("Misc", "Weapon Modifications", "Bullet Speed")
				-- end

				local mag = new_speed or P.velocity.Magnitude

				if not P.thirdperson then
					if menu:GetVal("Legit", "Bullet Redirection", "Silent Aim") and legitbot.silentVector then
						P.velocity = legitbot.silentVector.Unit * mag
					elseif menu:GetVal("Rage", "Aimbot", "Enabled") and menu:GetKey("Rage", "Aimbot", "Enabled", true) and ragebot.silentVector
					then
						local oldpos = P.position
						P.velocity = ragebot.silentVector.Unit * mag
						P.visualorigin = ragebot.firepos
						P.position = P.visualorigin + P.velocity
						P.ontouch = nil -- paster gave me this idea it will probably help the ragebot not be detected and other shit
					else
						if new_speed then
							P.velocity = P.velocity.Unit * new_speed
						end
					end
				end

				return newpart(P)
			end

			--ADS Fov hookf
			local lastsaturtation = Color3.fromRGB(140, 145, 145)
			client.lastPlayerPositions = {}

			local saturationEffect = Instance.new("ColorCorrectionEffect", game.Lighting)

			local skyboxes = {
				[1] = {
					["SkyboxBk"] = "rbxassetid://159454299",
					["SkyboxDn"] = "rbxassetid://159454296",
					["SkyboxFt"] = "rbxassetid://159454293",
					["SkyboxLf"] = "rbxassetid://159454286",
					["SkyboxRt"] = "rbxassetid://159454300",
					["SkyboxUp"] = "rbxassetid://159454288"
				},
				[2] = {
					["SkyboxBk"] = "rbxassetid://12064107",
					["SkyboxDn"] = "rbxassetid://12064152",
					["SkyboxFt"] = "rbxassetid://12064121",
					["SkyboxLf"] = "rbxassetid://12063984",
					["SkyboxRt"] = "rbxassetid://12064115",
					["SkyboxUp"] = "rbxassetid://12064131"
				},
				[3] = {
					["SkyboxBk"] = "rbxassetid://271042516",
					["SkyboxDn"] = "rbxassetid://271077243",
					["SkyboxFt"] = "rbxassetid://271042556",
					["SkyboxLf"] = "rbxassetid://271042310",
					["SkyboxRt"] = "rbxassetid://271042467",
					["SkyboxUp"] = "rbxassetid://271077958"
				},
				[4] = {
					["SkyboxBk"] = "rbxassetid://1417494030",
					["SkyboxDn"] = "rbxassetid://1417494146",
					["SkyboxFt"] = "rbxassetid://1417494253",
					["SkyboxLf"] = "rbxassetid://1417494402",
					["SkyboxRt"] = "rbxassetid://1417494499",
					["SkyboxUp"] = "rbxassetid://1417494643"
				},
				[5] = {
					["SkyboxBk"] = "rbxassetid://626460377",
					["SkyboxDn"] = "rbxassetid://626460216",
					["SkyboxFt"] = "rbxassetid://626460513",
					["SkyboxLf"] = "rbxassetid://626473032",
					["SkyboxRt"] = "rbxassetid://626458639",
					["SkyboxUp"] = "rbxassetid://626460625"
				},
				[6] = {
					["SkyboxBk"] = "rbxassetid://153695414",
					["SkyboxDn"] = "rbxassetid://153695352",
					["SkyboxFt"] = "rbxassetid://153695452",
					["SkyboxLf"] = "rbxassetid://153695320",
					["SkyboxRt"] = "rbxassetid://153695383",
					["SkyboxUp"] = "rbxassetid://153695471"
				},
				[7] = {
					["SkyboxBk"] = "rbxassetid://153767241",
					["SkyboxDn"] = "rbxassetid://153767216",
					["SkyboxFt"] = "rbxassetid://153767266",
					["SkyboxLf"] = "rbxassetid://153767200",
					["SkyboxRt"] = "rbxassetid://153767231",
					["SkyboxUp"] = "rbxassetid://153767288"
				},
				[8] = {
					["SkyboxBk"] = "rbxassetid://218955819",
					["SkyboxDn"] = "rbxassetid://218953419",
					["SkyboxFt"] = "rbxassetid://218954524",
					["SkyboxLf"] = "rbxassetid://218958493",
					["SkyboxRt"] = "rbxassetid://218957134",
					["SkyboxUp"] = "rbxassetid://218950090"
				},
				[9] = {
					["SkyboxBk"] = "rbxassetid://401664839",
					["SkyboxDn"] = "rbxassetid://401664862",
					["SkyboxFt"] = "rbxassetid://401664960",
					["SkyboxLf"] = "rbxassetid://401664881",
					["SkyboxRt"] = "rbxassetid://401664901",
					["SkyboxUp"] = "rbxassetid://401664936"
				},
			}

			local skybox = Instance.new("Sky")
			skybox.Name = "cs"
			skybox.CelestialBodiesShown = false
			skybox.MoonTextureId = ""
			skybox.SunTextureId = ""
			skybox.StarCount = 0

			client.sateffect = saturationEffect
			local function renderVisuals(dt)
				local _new, _last = menu:GetVal("Misc", "Extra", "Disable 3D Rendering")
				if _new ~= _last then
					game:GetService("RunService"):Set3dRenderingEnabled(not _new)
				end
				misc:UpdateBeams()
				client.char.unaimedfov = menu.options["Visuals"]["Camera Visuals"]["Camera FOV"][1]
				if menu.open then
					------debug.profilebegin("renderVisuals Char")
					local crosshud = PLAYER_GUI.MainGui.GameGui.CrossHud:GetChildren()
					for i = 1, #crosshud do
						local frame = crosshud[i]
						if not crosshairColors then
							crosshairColors = {
								inline = frame.BackgroundColor3,
								outline = frame.BorderColor3,
							}
						end -- MEOW -core 2021
						local inline = menu:GetVal("Visuals", "Extra", "Crosshair Color", COLOR1, true)
						local outline = menu:GetVal("Visuals", "Extra", "Crosshair Color", COLOR2, true)
						local enabled = menu:GetVal("Visuals", "Extra", "Crosshair Color")
						frame.BackgroundColor3 = enabled and inline or crosshairColors.inline
						frame.BorderColor3 = enabled and outline or crosshairColors.outline
						frame.Shot.BackgroundColor3 = enabled and inline or crosshairColors.inline
						frame.Shot.BorderColor3 = enabled and outline or crosshairColors.outline
					end
					--debug.profileend("renderVisuals Char")
				end -- fun end!
				--------------------------------------world funnies
				------debug.profilebegin("renderVisuals World")
				--debug.profilebegin("renderVisuals World")
				if menu.options["Visuals"]["World"]["Force Time"][1] then
					game.Lighting.ClockTime = menu.options["Visuals"]["World"]["Custom Time"][1]
				end
				if menu.options["Visuals"]["World"]["Ambience"][1] then
					game.Lighting.Ambient = RGB(
						menu.options["Visuals"]["World"]["Ambience"][5][1][1][1][1],
						menu.options["Visuals"]["World"]["Ambience"][5][1][1][1][2],
						menu.options["Visuals"]["World"]["Ambience"][5][1][1][1][3]
					)
					game.Lighting.OutdoorAmbient = RGB(
						menu.options["Visuals"]["World"]["Ambience"][5][1][2][1][1],
						menu.options["Visuals"]["World"]["Ambience"][5][1][2][1][2],
						menu.options["Visuals"]["World"]["Ambience"][5][1][2][1][3]
					)
				else
					game.Lighting.Ambient = game.Lighting.MapLighting.Ambient.Value
					game.Lighting.OutdoorAmbient = game.Lighting.MapLighting.OutdoorAmbient.Value
				end

				local sky = game.Lighting:FindFirstChildOfClass("Sky")

				if (sky) then
					local newSky = skyboxes[menu:GetVal("Visuals", "World", "Skybox")]

					if (newSky) then
						if (not client.oldSkybox or client.oldSkybox.SkyboxBk ~= sky.SkyboxBk and sky.SkyboxBk ~= "") then
							client.oldSkybox = {}

							for i,v in pairs(newSky) do
								client.oldSkybox[i] = sky[i]
							end
						end

						local enabled = menu:GetVal("Visuals", "World", "Skybox Changer")

						skybox.Parent = enabled and game.Lighting or nil

						for i,v in pairs(newSky) do
							skybox[i] = enabled and v or ""
							sky[i] = enabled and "" or client.oldSkybox[i]
						end
					end
				end

				--
				saturationEffect.Enabled = menu.options["Visuals"]["World"]["Custom Saturation"][1]
				saturationEffect.TintColor = RGB(
					menu.options["Visuals"]["World"]["Custom Saturation"][5][1][1],
					menu.options["Visuals"]["World"]["Custom Saturation"][5][1][2],
					menu.options["Visuals"]["World"]["Custom Saturation"][5][1][3]
				)
				saturationEffect.Saturation = menu.options["Visuals"]["World"]["Saturation Density"][1] / 50

				--]]
				--debug.profileend("renderVisuals World")

				------debug.profilebegin("renderVisuals Player ESP Reset")
				-- TODO this reset may need to be improved to a large extent, it's taking up some time but idk if the frame times are becoming worse because of this
				for i = 1, #allesp do
					local drawclass = allesp[i]
					for j = 1, #drawclass do
						local drawdata = drawclass[j]
						for k = 1, #drawdata do
							drawdata[k].Visible = false
						end
					end
				end

				--debug.profileend("renderVisuals Player ESP Reset")

				----------
				------debug.profilebegin("renderVisuals Main")
				if client.logic.currentgun and client.logic.currentgun.barrel and client.char.alive and menu:GetVal("Visuals", "Extra", "Pointer")
				then
					local viewport = workspace.CurrentCamera.ViewportSize
					menu.crosshair.outline[1].Visible = true
					menu.crosshair.outline[2].Visible = true
					menu.crosshair.inner[1].Visible = true
					menu.crosshair.inner[2].Visible = true
					local ignore = { workspace.Ignore, Camera }
					local barrel = client.logic.currentgun:isaiming() and client:GetToggledSight(client.logic.currentgun).sightpart or client.logic.currentgun.barrel
					if barrel.Parent then
						local trigger = barrel.Parent.Trigger
						local hit, hitpos, normal = workspace:FindPartOnRayWithIgnoreList(Ray.new(barrel.Position, trigger.CFrame.LookVector * 100), ignore, false, true)
						local size = menu:GetVal("Visuals", "Extra", "Pointer Size")
						local offset = menu:GetVal("Visuals", "Extra", "Pointer Offset")
						local color = menu:GetVal("Visuals", "Extra", "Pointer", COLOR, true)
						local transparency = menu:GetVal("Visuals", "Extra", "Pointer", COLOR)[4]/255
						--
						menu.crosshair.inner[1].Size = Vector2.new(size * 2 + 1, 1)
						menu.crosshair.inner[2].Size = Vector2.new(1, size * 2 + 1)

						menu.crosshair.inner[1].Color = color
						menu.crosshair.inner[2].Color = color

						menu.crosshair.inner[1].Transparency = transparency
						menu.crosshair.inner[2].Transparency = transparency
						menu.crosshair.outline[1].Transparency = transparency
						menu.crosshair.outline[2].Transparency = transparency

						menu.crosshair.outline[1].Size = Vector2.new(size * 2 + 3, 3)
						menu.crosshair.outline[2].Size = Vector2.new(3, size * 2 + 3)
						local hit2d = menu:GetVal("Visuals", "Extra", "Show Recoil") and Camera:WorldToViewportPoint(hitpos + normal * 0.01) or Vector2.new(viewport.X / 2, viewport.Y / 2)
						local x, y = hit2d.x, hit2d.y

						menu.crosshair.inner[1].Position = Vector2.new(x - size, y)
						menu.crosshair.inner[2].Position = Vector2.new(x, y - size)
						menu.crosshair.outline[1].Position = Vector2.new(x - size - 1, y - 1)
						menu.crosshair.outline[2].Position = Vector2.new(x - 1, y - 1 - size)
					end
				else
					menu.crosshair.outline[1].Visible = false
					menu.crosshair.outline[2].Visible = false
					menu.crosshair.inner[1].Visible = false
					menu.crosshair.inner[2].Visible = false
				end

				if client.cam.type ~= "menu" then
					local players = Players:GetPlayers()
					-- table.sort(players, function(p1, p2)
					-- 	return table.find(menu.priority, p2.Name) ~= table.find(menu.priority, p1.Name) and table.find(menu.priority, p2.Name) == true and table.find(menu.priority, p1.Name) == false
					-- end)
					local cam = client.cam.cframe
					local current_time = tick()
					local priority_color = menu:GetVal("Visuals", "ESP Settings", "Highlight Priority", COLOR, true)
					local priority_alpha = menu:GetVal("Visuals", "ESP Settings", "Highlight Priority", COLOR)[4] / 255

					local friend_color = menu:GetVal("Visuals", "ESP Settings", "Highlight Friends", COLOR, true)
					local friend_alpha = menu:GetVal("Visuals", "ESP Settings", "Highlight Friends", COLOR)[4] / 255

					local target_color = menu:GetVal("Visuals", "ESP Settings", "Highlight Target", COLOR, true)
					local target_alpha = menu:GetVal("Visuals", "ESP Settings", "Highlight Target", COLOR)[4] / 255
					client.aliveplayers = 0
					local size = math.floor(SCREEN_SIZE.x * 0.0078125)
					local big_size = math.floor(SCREEN_SIZE.x * 0.0260416666667)
					for curplayer = 1, #players do

						local player = players[curplayer]
						local playername = player.Name

						local enemy = false

						local GroupBox = "Team ESP"

						if player.Team ~= LOCAL_PLAYER.Team then
							GroupBox = "Enemy ESP"
							enemy = true
							client.aliveplayers += 1
						end

						do
							if not menu:GetVal("Visuals", GroupBox, "Enabled") then
								continue
							end

							local parts = client.replication.getbodyparts(player)

							local torso, rootpart, position, resolved
							local opacity_mult = 1
							local skel_parts = {}
							if not parts then
								local fade_time = menu:GetVal("Visuals", "ESP Settings", "ESP Fade Time")
								if fade_time ~= 0 then
									local log_position = client.lastPlayerPositions[player]
									if log_position then
										torso = log_position.cframe
										opacity_mult = clamp((log_position.time - current_time + fade_time) * 1/fade_time, 0, 1)
										skel_parts = client.lastPlayerPositions[player].parts
										rootpart = torso
									end
								end
							elseif client.hud:isplayeralive(player) then
								if parts.head.Transparency > 0 then continue end -- idk this should work against like floating dead peopluee
								player.Character = parts.head.Parent

								torso = parts.torso.CFrame
								rootpart = parts.torso.CFrame
								client.lastPlayerPositions[player] = {cframe = torso, time = current_time}
								for i = 1, #skelparts do
									local part = player.Character:FindFirstChild(skelparts[i])
									client.lastPlayerPositions[player].parts = {} -- this is fucking dumb but it works whatever
									client.lastPlayerPositions[player].parts[skelparts[i]] = {Position = part.Position}
									skel_parts[skelparts[i]] = part
								end
							end
							if opacity_mult == 0 then continue end
							if not torso then continue end
							position = torso.Position
							resolved = false
							if menu:GetVal("Visuals", "Enemy ESP", "Flags")[4] and parts then
								local newpos = ragebot:GetResolvedPosition(player, parts.torso.CFrame, parts.torso.CFrame)
								if newpos then
									resolved = true
								end
								position = newpos or position
							end
							------debug.profilebegin("renderVisuals Player ESP Box Calculation " .. playername)

							local vTop = position + (torso.UpVector * 1.8) + cam.UpVector
							local vBottom = position - (torso.UpVector * 2.5) - cam.UpVector

							local top, topIsRendered = Camera:WorldToViewportPoint(vTop)
							local bottom, bottomIsRendered = Camera:WorldToViewportPoint(vBottom)


							-- local minY = math.abs(bottom.y - top.y)
							-- local sizeX = math.ceil(math.max(clamp(math.abs(bottom.x - top.x) * 2, 0, minY), minY / 2))
							-- local sizeY = math.ceil(math.max(minY, sizeX * 0.5))

							-- local boxSize = Vector2.new(sizeX, sizeY)
							local _width = math.max(math.floor(math.abs(top.x - bottom.x)), 3)
							local _height = math.max(math.floor(math.max(math.abs(bottom.y - top.y), _width / 2)), 3)
							local boxSize = Vector2.new(math.floor(math.max(_height / 1.5, _width)), _height)
							local boxPosition = Vector2.new(
								math.floor(top.x * 0.5 + bottom.x * 0.5 - boxSize.x * 0.5),
								math.floor(math.min(top.y, bottom.y))
							)

							--debug.profileend("renderVisuals Player ESP Box Calculation " .. playername)

							local GroupBox = player.Team == LOCAL_PLAYER.Team and "Team ESP" or "Enemy ESP"
							local health = math.ceil(client.hud:getplayerhealth(player))
							local spoty = 0
							local boxtransparency = menu:GetVal("Visuals", GroupBox, "Box", COLOR2)[4] / 255 * opacity_mult
							local boxtransparencyfilled = menu:GetVal("Visuals", GroupBox, "Box", COLOR1)[4] / 255 * opacity_mult
							local health_number_transparency = menu.options["Visuals"][GroupBox]["Health Number"][5][1][4] / 255 * opacity_mult
							local name_transparency = menu:GetVal("Visuals", GroupBox, "Name", COLOR)[4] / 255 * opacity_mult
							local espflags = menu:GetVal("Visuals", GroupBox, "Flags")
							local distance = math.floor((rootpart.Position - Camera.CFrame.Position).Magnitude / 5)
							local arrow_dist = menu:GetVal("Visuals", "Enemy ESP", "Arrow Distance")
							local flag_text_size = espflags[1]

							if (topIsRendered or bottomIsRendered) then
								if espflags[2] then
									local playerdata = teamdata[1]:FindFirstChild(playername) or teamdata[2]:FindFirstChild(playername)
									allesp[3][5][curplayer].Visible = true
									allesp[3][5][curplayer].Text = "lv" .. playerdata.Rank.Text
									allesp[3][5][curplayer].Transparency = health_number_transparency
									allesp[3][5][curplayer].Position = Vector2.new(
										math.floor(boxPosition.x) + boxSize.x + 2,
										math.floor(boxPosition.y) - 4 + spoty
									)
									allesp[3][5][curplayer].Font = 2
                                    allesp[3][5][curplayer].Size = 13
                                    spoty += 13
								end


								if espflags[3] then

									allesp[3][6][curplayer].Visible = true
									allesp[3][6][curplayer].Text = tostring(distance).. "m"
									allesp[3][6][curplayer].Transparency = health_number_transparency
									allesp[3][6][curplayer].Position = Vector2.new(
										math.floor(boxPosition.x) + boxSize.x + 2,
										math.floor(boxPosition.y) - 4 + spoty
									)
									allesp[3][6][curplayer].Font = 2
                                    allesp[3][6][curplayer].Size = 13
                                    spoty += 13
								end

								if enemy then
									if espflags[4] then
										allesp[3][4][curplayer].Visible = resolved
										allesp[3][4][curplayer].Transparency = health_number_transparency
										allesp[3][4][curplayer].Position = Vector2.new(
											math.floor(boxPosition.x) + boxSize.x + 2,
											math.floor(boxPosition.y) - 4 + spoty
										)
										allesp[3][4][curplayer].Font = 2
                                        allesp[3][4][curplayer].Size = 13
                                        spoty += 13
									end
								end

								if menu.options["Visuals"][GroupBox]["Name"][1] then
									------debug.profilebegin("renderVisuals Player ESP Render Name " .. playername)
									local name = tostring(playername)
									if menu.options["Visuals"]["ESP Settings"]["Text Case"][1] == 1 then
										name = string.lower(name)
									elseif menu.options["Visuals"]["ESP Settings"]["Text Case"][1] == 3 then
										name = string.upper(name)
									end

									allesp[4][1][curplayer].Text = string_cut(name, menu:GetVal("Visuals", "ESP Settings", "Max Text Length"))
									allesp[4][1][curplayer].Visible = true
									allesp[4][1][curplayer].Transparency = 1

									allesp[4][1][curplayer].Position = Vector2.new(boxPosition.x + boxSize.x * 0.5, boxPosition.y - 15)
								end

								if menu.options["Visuals"][GroupBox]["Box"][1] then
									------debug.profilebegin("renderVisuals Player ESP Render Box " .. playername)
									for i = -1, 1 do
										local box = allesp[2][i + 3][curplayer]
										box.Visible = true
										box.Position = boxPosition + Vector2.new(i, i)
										box.Size = boxSize - Vector2.new(i * 2, i * 2)
										box.Transparency = boxtransparency

										if i ~= 0 then
											box.Color = RGB(20, 20, 20)
										end
										--box.Color = i == 0 and color or bColor:Add(bColor:Mult(color, 0.2), 0.1)
									end

									if boxtransparencyfilled ~= 0 then
										local box = allesp[2][1][curplayer]
										box.Visible = true
										box.Position = boxPosition
										box.Size = boxSize

										box.Transparency = boxtransparencyfilled
										box.Filled = true
									end
									--debug.profileend("renderVisuals Player ESP Render Box " .. playername)
								end


								if menu.options["Visuals"][GroupBox]["Health Bar"][1] then
									------debug.profilebegin("renderVisuals Player ESP Render Health Bar " .. playername)

									local ySizeBar = -math.floor(boxSize.y * health / 100)
									if menu.options["Visuals"][GroupBox]["Health Number"][1]
										and health <= menu.options["Visuals"]["ESP Settings"]["Max HP Visibility Cap"][1]
										and health > 0
									then
										local hptext = allesp[3][3][curplayer]
										hptext.Visible = true
										hptext.Text = tostring(health)
										if flag_text_size then
											hptext.Font = 2
										else
											hptext.Font = 1
										end

										local tb = hptext.TextBounds

										-- clamp(ySizeBar + boxSize.y - tb.y * 0.5, -tb.y, boxSize.y - tb.y )
										hptext.Position = boxPosition + Vector2.new(
											-tb.x - 7,
											clamp(ySizeBar + boxSize.y - tb.y * 0.5, -4, boxSize.y - 10)
										)

										--hptext.Position = Vector2.new(boxPosition.x - 7 - tb.x, boxPosition.y + clamp(boxSize.y + ySizeBar - 8, -4, boxSize.y - 10))
										hptext.Color = menu:GetVal("Visuals", GroupBox, "Health Number", COLOR, true)
										hptext.Transparency = health_number_transparency

									end

									allesp[3][1][curplayer].Visible = true
									allesp[3][1][curplayer].Position = Vector2.new(math.floor(boxPosition.x) - 6, math.floor(boxPosition.y) - 1)
									allesp[3][1][curplayer].Size = Vector2.new(4, boxSize.y + 2)
									allesp[3][1][curplayer].Transparency = opacity_mult

									allesp[3][2][curplayer].Visible = true
									allesp[3][2][curplayer].Position = Vector2.new(
										math.floor(boxPosition.x) - 5,
										math.floor(boxPosition.y + boxSize.y)
									)

									allesp[3][2][curplayer].Size = Vector2.new(2, ySizeBar)

									allesp[3][2][curplayer].Color = ColorRange(health, {
										[1] = {
											start = 0,
											color = menu:GetVal("Visuals", GroupBox, "Health Bar", COLOR1, true),
										},
										[2] = {
											start = 100,
											color = menu:GetVal("Visuals", GroupBox, "Health Bar", COLOR2, true),
										},
									})
									allesp[3][2][curplayer].Transparency = opacity_mult

									--debug.profileend("renderVisuals Player ESP Render Health Bar " .. playername)
								elseif menu.options["Visuals"][GroupBox]["Health Number"][1] and health <= menu.options["Visuals"]["ESP Settings"]["Max HP Visibility Cap"][1]
								then
									------debug.profilebegin("renderVisuals Player ESP Render Health Number " .. playername)

									local hptext = allesp[3][3][curplayer]

									hptext.Visible = true
									hptext.Text = tostring(health)

									local tb = hptext.TextBounds

									hptext.Position = boxPosition + Vector2.new(-tb.x - 2, -4)
									hptext.Color = menu:GetVal("Visuals", GroupBox, "Health Number", COLOR, true)
									hptext.Transparency = health_number_transparency

									--debug.profileend("renderVisuals Player ESP Render Health Number " .. playername)
								end

								local yaddpos = 0
								if menu.options["Visuals"][GroupBox]["Held Weapon"][1] then
									------debug.profilebegin("renderVisuals Player ESP Render Held Weapon " .. playername)

									local charWeapon = _3pweps[player]
									local wepname = charWeapon and charWeapon or "???"

									if menu.options["Visuals"]["ESP Settings"]["Text Case"][1] == 1 then
										wepname = string.lower(wepname)
									elseif menu.options["Visuals"]["ESP Settings"]["Text Case"][1] == 3 then
										wepname = string.upper(wepname)
									end

									local weptext = allesp[4][2][curplayer]

									weptext.Text = string_cut(
										wepname,
										menu:GetVal("Visuals", "ESP Settings", "Max Text Length")
									)
									weptext.Visible = true
									weptext.Position = Vector2.new(boxPosition.x + boxSize.x * 0.5, boxPosition.y + boxSize.y)

									yaddpos += 12
									--debug.profileend("renderVisuals Player ESP Render Held Weapon " .. playername)
								end

								if menu:GetVal("Visuals", GroupBox, "Held Weapon Icon") then
									local charWeapon = _3pweps[player]
									local wepname = charWeapon and charWeapon or "???"

									local tempicon = allesp[3][7][curplayer]


									local tempimage = NameToIcon(wepname)

									if (setwepicons[curplayer] ~= nil or wepname ~= "???") and tempimage ~= nil then

										tempicon.Visible = true
										tempicon.Position = Vector2.new(math.floor(boxPosition.x + boxSize.x * 0.5 - (tempimage.w/2)), math.floor(boxPosition.y + boxSize.y + yaddpos + 2))
										tempicon.Transparency = menu:GetVal("Visuals", GroupBox, "Held Weapon", COLOR)[4]/255 * opacity_mult

									elseif not menu:GetVal("Visuals", GroupBox, "Held Weapon") then

										if menu.options["Visuals"]["ESP Settings"]["Text Case"][1] == 1 then
											wepname = string.lower(wepname)
										elseif menu.options["Visuals"]["ESP Settings"]["Text Case"][1] == 3 then
											wepname = string.upper(wepname)
										end

										local weptext = allesp[4][2][curplayer]

										weptext.Text = string_cut(
											wepname,
											menu:GetVal("Visuals", "ESP Settings", "Max Text Length")
										)
										weptext.Visible = true
										weptext.Position = Vector2.new(boxPosition.x + boxSize.x * 0.5, boxPosition.y + boxSize.y)

									end



									if setwepicons[curplayer] ~= wepname then
										if tempimage ~= nil then


											tempicon.Data = tempimage.data
											tempicon.Size = Vector2.new(tempimage.w, tempimage.h)
										end
										setwepicons[curplayer] = wepname
									end

								end

								-- if menu.options["Visuals"][GroupBox]["Distance"][1] then
								-- 	------debug.profilebegin("renderVisuals Player ESP Render Distance " .. playername)

								-- 	local disttext = allesp[4][3][curplayer]

								-- 	disttext.Text = tostring(distance) .. "m"
								-- 	disttext.Visible = true
								-- 	disttext.Position = Vector2.new(
								-- 		boxPosition.x + boxSize.x * 0.5,
								-- 		boxPosition.y + boxSize.y + spoty
								-- 	)

								-- 	--debug.profileend("renderVisuals Player ESP Render Distance " .. playername)
								-- end

								if menu.options["Visuals"][GroupBox]["Skeleton"][1] then
									------debug.profilebegin("renderVisuals Player ESP Render Skeleton" .. playername)
									local torso = player.Character:FindFirstChild("Torso")
									if torso then
									local torsop = Camera:WorldToViewportPoint(torso.Position)
									for i = 1, #skelparts do
										local line = allesp[1][i][curplayer]

										local posie = Camera:WorldToViewportPoint(player.Character:FindFirstChild(skelparts[i]).Position)
										line.From = Vector2.new(posie.x, posie.y)
										line.To = Vector2.new(torsop.x, torsop.y)
										line.Visible = true
									end
									end
									--debug.profileend("renderVisuals Player ESP Render Skeleton" .. playername)
								end
								--da colourz !!! :D ðŸ”¥ðŸ”¥ðŸ”¥ðŸ”¥

								if menu:GetVal("Visuals", "ESP Settings", "Highlight Priority") and table.find(menu.priority, playername) then
									allesp[4][1][curplayer].Color = priority_color
									allesp[4][1][curplayer].Transparency = priority_alpha * opacity_mult

									allesp[2][3][curplayer].Color = priority_color
									allesp[2][1][curplayer].Color = priority_color

									allesp[4][2][curplayer].Color = priority_color
									allesp[4][2][curplayer].Transparency = priority_alpha * opacity_mult

									for i = 1, #skelparts do
										local line = allesp[1][i][curplayer]
										line.Color = priority_color
										line.Transparency = priority_alpha * opacity_mult
									end
								elseif menu:GetVal("Visuals", "ESP Settings", "Highlight Friends") and table.find(menu.friends, playername)
								then
									allesp[4][1][curplayer].Color = friend_color
									allesp[4][1][curplayer].Transparency = friend_alpha * opacity_mult

									allesp[2][1][curplayer].Color = friend_color
									allesp[2][3][curplayer].Color = friend_color

									allesp[4][2][curplayer].Color = friend_color
									allesp[4][2][curplayer].Transparency = friend_alpha * opacity_mult

									for i = 1, #skelparts do
										local line = allesp[1][i][curplayer]
										line.Color = friend_color
										line.Transparency = friend_alpha * opacity_mult
									end
								elseif menu:GetVal("Visuals", "ESP Settings", "Highlight Target") and (
										player == legitbot.target or player == ragebot.target
									)
								then
									allesp[4][1][curplayer].Color = target_color
									allesp[4][1][curplayer].Transparency = target_alpha * opacity_mult

									allesp[2][3][curplayer].Color = target_color
									allesp[2][1][curplayer].Color = target_color

									allesp[4][2][curplayer].Color = target_color
									allesp[4][2][curplayer].Transparency = target_alpha * opacity_mult

									for i = 1, #skelparts do
										local line = allesp[1][i][curplayer]
										line.Color = target_color
										line.Transparency = target_alpha * opacity_mult
									end
								else
									allesp[4][1][curplayer].Color = menu:GetVal("Visuals", GroupBox, "Name", COLOR, true) -- RGB(menu.options["Visuals"][GroupBox]["Name"][5][1][1], menu.options["Visuals"][GroupBox]["Name"][5][1][2], menu.options["Visuals"][GroupBox]["Name"][5][1][3])
									allesp[4][1][curplayer].Transparency = name_transparency

									allesp[2][3][curplayer].Color = menu:GetVal("Visuals", GroupBox, "Box", COLOR2, true)
									allesp[2][1][curplayer].Color = menu:GetVal("Visuals", GroupBox, "Box", COLOR1, true)

									allesp[4][2][curplayer].Color = menu:GetVal("Visuals", GroupBox, "Held Weapon", COLOR, true)
									allesp[4][2][curplayer].Transparency = menu:GetVal("Visuals", GroupBox, "Held Weapon", COLOR)[4] / 255 * opacity_mult

									for i = 1, #skelparts do
										local line = allesp[1][i][curplayer]
										line.Color = menu:GetVal("Visuals", GroupBox, "Skeleton", COLOR, true)
										line.Transparency = menu:GetVal("Visuals", GroupBox, "Skeleton", COLOR)[4] / 255 * opacity_mult
									end
								end
							elseif enemy and menu:GetVal("Visuals", "Enemy ESP", "Out of View")
							then
								local size = size
								local big_size = big_size
								----debug.profilebegin("renderVisuals Player ESP Render Out of View " .. playername)
								local color = menu:GetVal("Visuals", "Enemy ESP", "Out of View", COLOR, true)
								local color2 = bColor:Add(bColor:Mult(color, 0.2), 0.1)
								if menu:GetVal("Visuals", "ESP Settings", "Highlight Priority") and table.find(menu.priority, playername)
								then
									size *= 1.5
									big_size *= 1.5
									color = menu:GetVal(
											"Visuals",
											"ESP Settings",
											"Highlight Priority",
											COLOR,
											true
										)
									color2 = bColor:Mult(color, 0.6)
								elseif menu:GetVal("Visuals", "ESP Settings", "Highlight Friends", COLOR) and table.find(menu.friends, playername)
								then
									color = menu:GetVal(
											"Visuals",
											"ESP Settings",
											"Highlight Friends",
											COLOR,
											true
										)
									color2 = bColor:Mult(color, 0.6)
								elseif menu:GetVal("Visuals", "ESP Settings", "Highlight Target") and (
										player == legitbot.target or player == ragebot.target
									)
								then
									color = menu:GetVal(
										"Visuals",
										"ESP Settings",
										"Highlight Target",
										COLOR,
										true
									)
									color2 = bColor:Mult(color, 0.6)
								end
								for i = 1, 2 do
								    local torso = player.Character:FindFirstChild("Torso")
									if torso then
									    local Tri = allesp[5][i][curplayer]

    									local rootpartpos = torso.Position -- these HAVE to move now theres no way

    									Tri.Visible = true

    									local relativePos = Camera.CFrame:PointToObjectSpace(rootpartpos)
    									local angle = math.atan2(-relativePos.y, relativePos.x)

    									local distance = dot(relativePos.Unit, relativePos)
    									local arrow_size = menu:GetVal("Visuals", "Enemy ESP", "Dynamic Arrow Size") and map(distance, 1, 100, big_size, size) or size
    									arrow_size = arrow_size > big_size and big_size or arrow_size < size and size or arrow_size

    									direction = Vector2.new(math.cos(angle), math.sin(angle))
    									local pos
    									if arrow_dist ~= 101 then
    										pos = (
    												direction * SCREEN_SIZE.x * arrow_dist / 200
    											) + (SCREEN_SIZE * 0.5)
    									end
    									if not pos or pos.y > SCREEN_SIZE.y - 5 or pos.y < 5 then
    										pos = camera:AngleToEdge(angle, 5)
    									end
    									Tri.PointA = pos
    									Tri.PointB = pos - bVector2:getRotate(direction, 0.5) * arrow_size
    									Tri.PointC = pos - bVector2:getRotate(direction, -0.5) * arrow_size

    									Tri.Color = i == 1 and color or color2
    									Tri.Transparency = menu:GetVal("Visuals", "Enemy ESP", "Out of View", COLOR)[4] / 255 * opacity_mult
    								end
								end
								--debug.profileend("renderVisuals Player ESP Render Out of View " .. playername)
							end
						end
					end
					if menu:GetVal("Visuals", "Extra", "Enemy Spawns") then
						if client.spawns then
							local spawns = client.spawns
							for i = 1, #spawns do
								local position, vis = Camera:WorldToViewportPoint(spawns[i].Position)
								allesp[11][2][i].Position = Vector2.new(position.x, position.y)
								allesp[11][2][i].Text = "spawn"
								allesp[11][2][i].Center = true
								allesp[11][2][i].Visible = vis
								allesp[11][2][i].Transparency = menu:GetVal("Visuals", "Extra", "Enemy Spawns", COLOR)[4]/255
								allesp[11][2][i].Color = menu:GetVal("Visuals", "Extra", "Enemy Spawns", COLOR, true)
							end
						end
					end
					--ANCHOR weapon esp
					if menu:GetVal("Visuals", "Dropped ESP", "Weapon Names") or menu:GetVal("Visuals", "Dropped ESP", "Weapon Ammo") or menu:GetVal("Visuals", "Dropped ESP", "Weapon Icons") then
						----debug.profilebegin("renderVisuals Dropped 1ESP")
						local gunnum = 0
						local dropped = workspace.Ignore.GunDrop:GetChildren()
						local wepadd = menu:GetVal("Visuals", "Dropped ESP", "Weapon Names")
						for k = 1, #dropped do
							local v = dropped[k]
							if not client then
								return
							end
							if v.Name == "Dropped" then
								local slot = v:FindFirstChild("Slot1")
								if not slot then
									continue
								end
								local gunpos = slot.Position
								local gun_dist = (gunpos - client.cam.cframe.p).Magnitude
								if gun_dist < 80 then
									local hasgun = false
									local gunpos2d, gun_on_screen = workspace.CurrentCamera:WorldToScreenPoint(gunpos)
									local children = v:GetChildren()
									for k1 = 1, #children do
										local v1 = children[k1]
										if tostring(v1) == "Gun" then
											hasgun = true
											break
										end
									end

									if gun_on_screen and gunnum <= 50 and hasgun then
										gunnum = gunnum + 1
										local gunclearness = 1
										if gun_dist >= 50 then
											local closedist = gun_dist - 50
											gunclearness = 1 - (1 * closedist / 30)
										end

										if menu:GetVal("Visuals", "Dropped ESP", "Weapon Icons") then

											local tempimage = NameToIcon(v.Gun.Value)

											if tempimage ~= nil then

												wepesp[3][gunnum].Data = tempimage.data
												wepesp[3][gunnum].Size = Vector2.new(tempimage.w, tempimage.h)
												wepesp[3][gunnum].Visible = true

												wepesp[3][gunnum].Position = wepadd and Vector2.new(math.floor(gunpos2d.x - tempimage.w/2), math.ceil(gunpos2d.y + (tempimage.h - 10))) or Vector2.new(math.floor(gunpos2d.x - tempimage.w/2), math.ceil(gunpos2d.y + (tempimage.h)))
												wepesp[3][gunnum].Transparency = menu:GetVal("Visuals", "Dropped ESP", "Weapon Names", COLOR2)[4] * gunclearness / 255
											elseif not menu:GetVal("Visuals", "Dropped ESP", "Weapon Names") then
												if client.logic.currentgun and client.logic.currentgun and client.logic.currentgun.data and v.Gun.Value == client.logic.currentgun.data.name
												then
													wepesp[1][gunnum].Color = menu:GetVal(
														"Visuals",
														"Dropped ESP",
														"Weapon Names",
														COLOR1,
														true
													)
													wepesp[1][gunnum].Transparency = menu:GetVal(
															"Visuals",
															"Dropped ESP",
															"Weapon Names",
															COLOR1
														)[4]  * gunclearness / 255
												else
													wepesp[1][gunnum].Color = menu:GetVal(
														"Visuals",
														"Dropped ESP",
														"Weapon Names",
														COLOR2,
														true
													)
													wepesp[1][gunnum].Transparency = menu:GetVal(
															"Visuals",
															"Dropped ESP",
															"Weapon Names",
															COLOR2
														)[4]  * gunclearness / 255
												end
												wepesp[1][gunnum].Text = v.Gun.Value
												wepesp[1][gunnum].Visible = true
												wepesp[1][gunnum].Position = Vector2.new(math.floor(gunpos2d.x), math.floor(gunpos2d.y + 25))
											end
											--menu:GetVal("Visuals", "Dropped ESP", "Weapon Names", COLOR1)[4]  * gunclearness / 255
										end

										if menu:GetVal("Visuals", "Dropped ESP", "Weapon Names") then
											if client.logic.currentgun and client.logic.currentgun and client.logic.currentgun.data and v.Gun.Value == client.logic.currentgun.data.name
											then
												wepesp[1][gunnum].Color = menu:GetVal(
													"Visuals",
													"Dropped ESP",
													"Weapon Names",
													COLOR1,
													true
												)
												wepesp[1][gunnum].Transparency = menu:GetVal(
														"Visuals",
														"Dropped ESP",
														"Weapon Names",
														COLOR1
													)[4]  * gunclearness / 255
											else
												wepesp[1][gunnum].Color = menu:GetVal(
													"Visuals",
													"Dropped ESP",
													"Weapon Names",
													COLOR2,
													true
												)
												wepesp[1][gunnum].Transparency = menu:GetVal(
														"Visuals",
														"Dropped ESP",
														"Weapon Names",
														COLOR2
													)[4]  * gunclearness / 255
											end
											wepesp[1][gunnum].Text = v.Gun.Value
											wepesp[1][gunnum].Visible = true
											wepesp[1][gunnum].Position = Vector2.new(math.floor(gunpos2d.x), math.floor(gunpos2d.y + 25))
										end
										if menu:GetVal("Visuals", "Dropped ESP", "Weapon Ammo") then
											if v:FindFirstChild("Spare") then
												wepesp[2][gunnum].Text = "[ " .. tostring(v.Spare.Value) .. " ]"
											end
											wepesp[2][gunnum].Color = menu:GetVal(
													"Visuals",
													"Dropped ESP",
													"Weapon Ammo",
													COLOR,
													true
												)
											wepesp[2][gunnum].Transparency = menu:GetVal("Visuals", "Dropped ESP", "Weapon Ammo", COLOR)[4]  * gunclearness / 255
											wepesp[2][gunnum].Visible = true
											wepesp[2][gunnum].Position = Vector2.new(math.floor(gunpos2d.x), math.floor(gunpos2d.y + 36))
										end
									end
								end
							end
						end
						--debug.profileend("renderVisuals Dropped ESP")
					end
					if menu:GetVal("Visuals", "Interface", "Fov Circles") then -- fov circles
						local fovcircles = allesp[9]
						if menu:GetVal("Visuals", "Interface", "Aim Assist") then
							local col = menu:GetVal("Visuals", "Interface", "Aim Assist", COLOR, true)
							local transparency = menu:GetVal("Visuals", "Interface", "Aim Assist", COLOR)[4] / 255
							for i = 1, 2 do
								local circle = fovcircles[1][i]
								circle.Color = i == 2 and col or Color3.new(0, 0, 0)
								circle.Transparency = transparency / (i == 1 and 2 or 1)
								circle.Thickness = i == 2 and 1 or 3
								local fov = menu:GetVal("Legit", "Aim Assist", "Aimbot FOV")
								if not menu:GetVal("Legit", "Aim Assist", "Dynamic FOV") then
									fov = Camera.FieldOfView / client.char.unaimedfov * fov
								end
								circle.Radius = fov / workspace.CurrentCamera.FieldOfView * SCREEN_SIZE.y
								circle.Visible = true
								circle.Position = SCREEN_SIZE / 2
							end
						else
							for i = 1, 2 do
								local circle = fovcircles[1][i]
								circle.Visible = false
							end
						end
						if menu:GetVal("Visuals", "Interface", "Aim Assist Deadzone") then
							local col = menu:GetVal("Visuals", "Interface", "Aim Assist Deadzone", COLOR, true)
							local transparency = menu:GetVal("Visuals", "Interface", "Aim Assist Deadzone", COLOR)[4] / 255
							for i = 1, 2 do
								local circle = fovcircles[2][i]
								circle.Color = i == 2 and col or Color3.new(0, 0, 0)
								circle.Transparency = transparency / (i == 1 and 2 or 1)
								circle.Thickness = i == 2 and 1 or 3
								local fov = menu:GetVal("Legit", "Aim Assist", "Deadzone FOV")
								if not menu:GetVal("Legit", "Aim Assist", "Dynamic FOV") then
									fov = Camera.FieldOfView / client.char.unaimedfov * fov
								end
								circle.Radius = fov / workspace.CurrentCamera.FieldOfView  * SCREEN_SIZE.y
								circle.Position = SCREEN_SIZE / 2
								circle.Visible = true
							end
						else
							for i = 1, 2 do
								local circle = fovcircles[2][i]
								circle.Visible = false
							end
						end
						if menu:GetVal("Visuals", "Interface", "Bullet Redirection") then
							local col = menu:GetVal("Visuals", "Interface", "Bullet Redirection", COLOR, true)
							local transparency = menu:GetVal("Visuals", "Interface", "Bullet Redirection", COLOR)[4] / 255
							for i = 1, 2 do
								local circle = fovcircles[3][i]
								circle.Color = i == 2 and col or Color3.new(0, 0, 0)
								circle.Transparency = transparency / (i == 1 and 2 or 1)
								circle.Thickness = i == 2 and 1 or 3
								local fov = menu:GetVal("Legit", "Bullet Redirection", "Silent Aim FOV")
								if not menu:GetVal("Legit", "Aim Assist", "Dynamic FOV") then
									fov = Camera.FieldOfView / client.char.unaimedfov * fov
								end
								circle.Radius = fov / workspace.CurrentCamera.FieldOfView  * SCREEN_SIZE.y
								circle.Position = SCREEN_SIZE / 2
								circle.Visible = true
							end
						else
							for i = 1, 2 do
								local circle = fovcircles[3][i]
								circle.Visible = false
							end
						end
						local circle = fovcircles[4]
						if menu:GetVal("Visuals", "Interface", "Ragebot") then
							local col = menu:GetVal("Visuals", "Interface", "Ragebot", COLOR, true)
							local transparency = menu:GetVal("Visuals", "Interface", "Ragebot", COLOR)[4] / 255
							for i = 1, 2 do
								local circle = fovcircles[4][i]
								circle.Color = i == 2 and col or Color3.new(0, 0, 0)
								circle.Transparency = transparency / (i == 1 and 2 or 1)
								circle.Thickness = i == 2 and 1 or 3
								circle.Position = SCREEN_SIZE / 2
								circle.Radius = menu:GetVal("Rage", "Aimbot", "Aimbot FOV") / workspace.CurrentCamera.FieldOfView  * SCREEN_SIZE.y
								circle.Visible = true
							end
						else
							for i = 1, 2 do
								local circle = fovcircles[4][i]
								circle.Visible = false
							end
						end
					end

					----debug.profilebegin("renderVisuals Dropped ESP Grenade Warning")
					if menu:GetVal("Visuals", "Dropped ESP", "Grenade Warning") then
						local health = client.char:gethealth()
						local color1 = menu:GetVal("Visuals", "Dropped ESP", "Grenade Warning", COLOR, true)
						local color2 = RGB(
							menu:GetVal("Visuals", "Dropped ESP", "Grenade Warning", COLOR)[1] - 20,
							menu:GetVal("Visuals", "Dropped ESP", "Grenade Warning", COLOR)[2] - 20,
							menu:GetVal("Visuals", "Dropped ESP", "Grenade Warning", COLOR)[3] - 20
						)
						for i = 1, #menu.activenades do
							local nade = menu.activenades[i]
							local headpos = client.char.alive and client.lastrepupdate or Vector3.new()
							local delta = (nade.blowupat - headpos)
							local nade_dist = delta.Magnitude
							local currentTick = client.net:getTime()
							local nade_percent = (currentTick - nade.start) / (nade.blowuptick - nade.start)

							if nade_dist <= 80 then
								local nadepos, nade_on_screen = workspace.CurrentCamera:WorldToScreenPoint(Vector3.new(nade.blowupat.x, nade.blowupat.y, nade.blowupat.z))

								if not nade_on_screen or nadepos.x > SCREEN_SIZE.x - 36 or nadepos.y > SCREEN_SIZE.y - 72 then
									local relativePos = Camera.CFrame:PointToObjectSpace(nade.blowupat)
									local angle = math.atan2(-relativePos.y, relativePos.x)
									local ox = math.cos(angle)
									local oy = math.sin(angle)
									local slope = oy / ox

									local h_edge = SCREEN_SIZE.x - 36
									local v_edge = SCREEN_SIZE.y - 72
									if oy < 0 then
										v_edge = 0
									end
									if ox < 0 then
										h_edge = 36
									end
									local y = (slope * h_edge) + (SCREEN_SIZE.y / 2) - slope * (SCREEN_SIZE.x / 2)
									if y > 0 and y < SCREEN_SIZE.y - 72 then
										nadepos = Vector2.new(h_edge, y)
									else
										nadepos = Vector2.new(
											(v_edge - SCREEN_SIZE.y / 2 + slope * (SCREEN_SIZE.x / 2)) / slope,
											v_edge
										)
									end
								end
								--
								nade_esp[1][i].Visible = true
								nade_esp[1][i].Position = Vector2.new(math.floor(nadepos.x), math.floor(nadepos.y + 36))

								nade_esp[2][i].Visible = true
								nade_esp[2][i].Position = Vector2.new(math.floor(nadepos.x), math.floor(nadepos.y + 36))

								nade_esp[4][i].Visible = true
								nade_esp[4][i].Position = Vector2.new(math.floor(nadepos.x) - 10, math.floor(nadepos.y + 10))

								nade_esp[3][i].Visible = true
								nade_esp[3][i].Position = Vector2.new(math.floor(nadepos.x), math.floor(nadepos.y + 36))

								local data = weps[nade.type]
								local d0 = data.damage0 -- max damage
								local d1 = data.damage1 -- min damage
								local r0 = data.range0 -- maximum range before the damage starts dropping off due to distance
								local r1 = data.range1 -- minimum range i think idk

								local damage = nade_dist < r0 and d0 or nade_dist < r1 and (d1 - d0) / (r1 - r0) * (nade_dist - r0) + d0 or 0

								local wall
								if damage > 0 then
									wall = workspace:FindPartOnRayWithWhitelist(
										Ray.new(headpos, (nade.blowupat - headpos)),
										client.roundsystem.raycastwhitelist
									)
									if wall then
										damage = 0
									end
								end

								local str = damage == 0 and "Safe" or damage >= health and "LETHAL" or string.format("-%d hp", damage)
								nade_esp[3][i].Text = str

								nade_esp[1][i].Color = ColorRange(damage, {
									[1] = { start = 15, color = RGB(20, 20, 20) },
									[2] = { start = health, color = RGB(150, 20, 20) },
								})

								nade_esp[2][i].Color = ColorRange(damage, {
									[1] = { start = 15, color = RGB(50, 50, 50) },
									[2] = { start = health, color = RGB(220, 20, 20) },
								})

								nade_esp[5][i].Visible = true
								nade_esp[5][i].Position = Vector2.new(math.floor(nadepos.x) - 16, math.floor(nadepos.y + 50))

								nade_esp[6][i].Visible = true
								nade_esp[6][i].Position = Vector2.new(math.floor(nadepos.x) - 15, math.floor(nadepos.y + 51))

								nade_esp[7][i].Visible = true
								nade_esp[7][i].Size = Vector2.new(30 * (1 - nade_percent), 2)
								nade_esp[7][i].Position = Vector2.new(math.floor(nadepos.x) - 15, math.floor(nadepos.y + 51))
								nade_esp[7][i].Color = color1

								nade_esp[8][i].Visible = true
								nade_esp[8][i].Size = Vector2.new(30 * (1 - nade_percent), 2)
								nade_esp[8][i].Position = Vector2.new(math.floor(nadepos.x) - 15, math.floor(nadepos.y + 53))
								nade_esp[8][i].Color = color2

								local tranz = 1
								if nade_dist >= 50 then
									local closedist = nade_dist - 50
									tranz = 1 - (1 * closedist / 30)
								end

								for j = 1, #nade_esp do
									nade_esp[j][i].Transparency = tranz
								end
							end
						end
					end

					--debug.profileend("renderVisuals Dropped ESP Grenade Warning")

					----debug.profilebegin("renderVisuals Local Visuals")
					misc.setvis = misc.setvis or {} -- this is for caching the weapons and shit so that when you switche weapons it will execute this code :3
					-- hand chams and such
					if not client then
						return
					end
					local vm = workspace.Camera:GetChildren()
					local armcham = menu:GetVal("Visuals", "Local", "Arm Chams")
					local armmaterial = menu:GetVal("Visuals", "Local", "Arm Material")

					for k, v in pairs(vm) do
						if v.Name == "Left Arm" or v.Name == "Right Arm" then
							for k1, v1 in pairs(v:GetChildren()) do
								if armcham then
									v1.Color = menu:GetVal("Visuals", "Local", "Arm Chams", COLOR2, true)
									v1.Material = mats[armmaterial]
								end
								if v1.Transparency ~= 1 then
									local enabled = menu:GetVal("Visuals", "Local", "Third Person") and menu:GetKey("Visuals", "Local", "Third Person");
									if armcham then
										if not enabled then
											v1.Transparency = 0.999999 + (
													menu:GetVal("Visuals", "Local", "Arm Chams", COLOR2)[4] / -255
												)
										else
											v1.Transparency = 0.999999
										end
									else
										if not enabled then
											v1.Transparency = 0
										else
											v1.Transparency = 0.999999
										end
									end
								end
								if v1.ClassName == "MeshPart" or v1.Name == "Sleeve" then
									if armcham then
										v1.Color = menu:GetVal("Visuals", "Local", "Arm Chams", COLOR1, true)
									end
									if v1.Transparency ~= 1 then
										local enabled = menu:GetVal("Visuals", "Local", "Third Person") and menu:GetKey("Visuals", "Local", "Third Person");
										if armcham then
											if not enabled then
												v1.Transparency = 0.999999 + (
														menu:GetVal("Visuals", "Local", "Arm Chams", COLOR1)[4] / -255
													)
											else
												v1.Transparency = 0.999999
											end
										else
											if not enabled then
												v1.Transparency = 0
											else
												v1.Transparency = 0.999999
											end
										end
									end
									if armcham then
										if v1.TextureID and tostring(material) ~= "ForceField" then
											v1.TextureID = ""
										else
											v1.TextureID = "rbxassetid://2163189692"
										end
										v1:ClearAllChildren()
									end
								end
							end
						end
					end
					local wepcham = menu:GetVal("Visuals", "Local", "Weapon Chams")

					for k, v in pairs(vm) do
						if v.Name ~= "Left Arm" and v.Name ~= "Right Arm" and v.Name ~= "FRAG" then
							for k1, v1 in pairs(v:GetChildren()) do
								if wepcham then
									v1.Color = menu:GetVal("Visuals", "Local", "Weapon Chams", COLOR1, true)
								end
								if v1.Transparency ~= 1 then
									local enabled  = menu:GetVal("Visuals", "Local", "Third Person") and menu:GetKey("Visuals", "Local", "Third Person");
									if wepcham then
										if not enabled then
											v1.Transparency = 0.999999 + (
													menu:GetVal("Visuals", "Local", "Weapon Chams", COLOR1)[4] / -255
												)
										else
											v1.Transparency = 0.999999
										end
									else
										if not enabled then
											v1.Transparency = client.logic.currentgun.transparencydata and client.logic.currentgun.transparencydata[v1] or 0
										else
											v1.Transparency = 0.999999
										end
									end
								end
								if menu:GetVal("Visuals", "Local", "Remove Weapon Skin") and wepcham then
									for i2, v2 in pairs(v1:GetChildren()) do
										if v2.ClassName == "Texture" or v2.ClassName == "Decal" then
											v2:Destroy()
										end
									end
								end

								local mat = mats[menu:GetVal("Visuals", "Local", "Weapon Material")]
								if wepcham then
									v1.Material = mat
								end

								if v1:IsA("UnionOperation") and wepcham then
									v1.UsePartColor = true
								end

								if v1.ClassName == "MeshPart" and wepcham then
									v1.TextureID = mat == "ForceField" and "rbxassetid://5843010904" or ""
								end

								if v1.Name == "LaserLight" and wepcham then
									local transparency = 1 + (
											menu:GetVal("Visuals", "Local", "Weapon Chams", COLOR2)[4] / -255
										)
									v1.Color = menu:GetVal("Visuals", "Local", "Weapon Chams", COLOR2, true)
									v1.Transparency = (transparency / 2) + 0.5
									v1.Material = "ForceField"
								elseif v1.Name == "SightMark" and wepcham then
									if v1:FindFirstChild("SurfaceGui") then
										local color = menu:GetVal("Visuals", "Local", "Weapon Chams", COLOR2, true)
										local transparency = 1 + (
												menu:GetVal("Visuals", "Local", "Weapon Chams", COLOR2)[4] / -255
											)
										if v1.SurfaceGui:FindFirstChild("Margins") then
											v1.SurfaceGui.Margins.BackgroundColor3 = color
											v1.SurfaceGui.Margins.ImageColor3 = color
											v1.SurfaceGui.Margins.ImageTransparency = (transparency / 5) + 0.7
										elseif v1.SurfaceGui:FindFirstChild("Border") then
											v1.SurfaceGui.Border.Scope.ImageColor3 = color
											v1.SurfaceGui.Border.Scope.ImageTransparency = transparency
											v1.SurfaceGui.Border.BackgroundColor3 = color
											v1.SurfaceGui.Border.ImageColor3 = color
											v1.SurfaceGui.Border.ImageTransparency = 1
										end
									end
								end
							end
						end
					end
					--debug.profileend("renderVisuals Local Visuals")
				end
				if menu:GetVal("Visuals", "Interface", "Keybinds List") then
					local texts = allesp[10]
					local listsizes = menu:GetVal("Visuals", "Interface", "Use List Sizes")
					local posy = math.ceil(SCREEN_SIZE.y * menu:GetVal("Visuals", "Interface", "Keybinds List Y") / 100)
					local margin = posy
					local posx = math.ceil(math.max(menu.stat_menu and 330 or 10, SCREEN_SIZE.x * menu:GetVal("Visuals", "Interface", "Keybinds List X") / 100))
					local col = menu:GetVal("Visuals", "Interface", "Keybinds List", COLOR, true)
					local transparency = menu:GetVal("Visuals", "Interface", "Keybinds List", COLOR)[4] / 255
					local newtexts = {}
					for i = 1, #menu.keybinds do
						local keybind = menu.keybinds[i]
						local box1 = texts[1][i]
						local box = texts[2][i]
						local box2 = texts[3][i]
						local box3 = texts[5][i]
						local text = texts[4][i]
						if keybind and keybind[1] and menu:GetVal(keybind[4], keybind[3], keybind[2]) and menu:GetKey(keybind[4], keybind[3], keybind[2])
						then
							table.insert(newtexts, keybind[3] .. ": " .. keybind[2])
						end
						text.Visible = false
						if box then
							box.Visible = false
						end
						box1.Visible = false
						box2.Visible = false
						box3.Visible = false
					end
					table.sort(newtexts, function(s, s1)
						return #s > #s1
					end) -- i hate this shit
					table.insert(newtexts, 1, "Keybinds")
					local maxwidth = Vector2.new(0, 0)
					local maxwidth2 = Vector2.new(0, 0)
					for i = 1, #newtexts do
						local text = texts[4][i]
						text.Center = false
						text.Text = newtexts[i]
						if i <= 1 then
							local newthing = Vector2.new(text.TextBounds.x + 4, text.TextBounds.y)
							if newthing.x > maxwidth.x then
								maxwidth = newthing
							end
						end
						if i <= 2 then
							local newthing = Vector2.new(text.TextBounds.x + 4, text.TextBounds.y)
							if newthing.x > maxwidth2.x then
								maxwidth2 = newthing - maxwidth
							end
						end
					end
					for i = 1, #newtexts do
						local box1 = texts[1][i]
						local box3 = texts[5][i]
						local box = texts[3][i]
						local text = texts[4][i]
						text.Position = Vector2.new(posx + 2, margin)
						text.Color = i ~= 1 and col or Color3.new(1, 1, 1)
						text.Transparency = transparency
						text.Visible = true
						box.Position = Vector2.new(posx, margin)
						box.Visible = true
						box1.Position = Vector2.new(posx - 1, margin - 3)
						box1.Visible = true
						box1.Color = Color3.new(0, 0, 0)-- THIS IS FUCKING STUPID
						box3.Visible = true
						box3.Color = Color3.new(0, 0, 0)
						box3.Transparency = 0.4
						if listsizes then
							local w = 8
							local h = 15
							if i == 1 then
								h = 9 * #newtexts
								w = 8
							end
							if i == #newtexts then
								h += 7
							end
							local x = posx - 2
							local y = margin - 4
							-- if i == 2 then
							-- 	x += 4
							-- 	w -= 4
							-- end
							box.Size = text.TextBounds + Vector2.new(4, 3)
							box1.Size = text.TextBounds + Vector2.new(6, 7)
							box3.Size = Vector2.new(text.TextBounds.x + w, h)
							box3.Position = Vector2.new(x, y)
						else
							box.Size = maxwidth + maxwidth2 + Vector2.new(0, 3)
							box1.Size = maxwidth + maxwidth2 + Vector2.new(2, 7)
							box3.Size = maxwidth + maxwidth2 + Vector2.new(4, (i == #newtexts and i == 1) and 9 or i == #newtexts and 4 or i == 1 and 6 or 3)
							box3.Position = Vector2.new(posx - 2, (i == 1) and margin - 4 or i == #newtexts and margin + 1 or margin)
						end
						margin += 15
					end
					for i = 1, 15 do
						local box = texts[2][i]
						box.Position = Vector2.new(posx, posy + i - 1)
						box.Size = Vector2.new(maxwidth.x + ((not listsizes) and maxwidth2.x or 0), 1)
						box.Visible = true
					end
					for i = 1, 2 do
						local k = i + 15
						local box = texts[2][k]
						local color = (menu:GetVal("Settings", "Cheat Settings", "Menu Accent") and menu:GetVal("Settings", "Cheat Settings", "Menu Accent", COLOR, true) or Color3.fromRGB(100, 100, 225))
						color = i == 1 and color or Color3.fromRGB(color.R * 255 - 40, color.G * 255 - 40, color.B * 255 - 40) -- super shit
						box.Color = color
						box.Position = Vector2.new(posx, posy + i - 3)
						box.Size = Vector2.new(maxwidth.x+((not listsizes) and maxwidth2.x or 0), 1)
						box.Visible = true
					end
					if listsizes then
						for i = 1, 2 do
							local k = i + 17
							local box = texts[2][k]
							local color = (menu:GetVal("Settings", "Cheat Settings", "Menu Accent") and menu:GetVal("Settings", "Cheat Settings", "Menu Accent", COLOR, true) or Color3.fromRGB(100, 100, 225))
							color = i == 1 and color or Color3.fromRGB(color.R * 255 - 40, color.G * 255 - 40, color.B * 255 - 40) -- super shit
							box.Color = color
							box.Position = Vector2.new(posx+maxwidth.x + 1, posy + i + 12)
							box.Size = Vector2.new(maxwidth2.x - 1, 1)
							box.Visible = maxwidth2.x ~= 0
						end
					end
				end
				--debug.profileend("renderVisuals Main")
				----debug.profilebegin("renderVisuals No Scope")
                do -- no scope pasted from v1 lol
					local gui = LOCAL_PLAYER.PlayerGui
					local frame = gui.NonScaled.ScopeFrame
					--
					if frame then
						local sightRear = frame:FindFirstChild("SightRear")
						if sightRear then
							local children = sightRear:GetChildren()
							for i = 1, #children do
								local thing = children[i]
								if thing.ClassName == "Frame" then
									thing.Visible = #thing.Name ~= 1 and not menu:GetVal("Visuals", "Camera Visuals", "No Scope Border") or false
								end
							end
							frame.SightFront.Visible = not menu:GetVal("Visuals", "Camera Visuals", "No Scope Border")
							sightRear.ImageTransparency = 1
						end
					end
				end
				--debug.profileend("renderVisuals No Scope")
			end

			menu.connections.deadbodychildadded = workspace.Ignore.DeadBody.ChildAdded:Connect(function(newchild)
				if menu:GetVal("Visuals", "Extra", "Ragdoll Chams") then
					local children = newchild:GetDescendants()
					for i = 1, #children do
						local curvalue = children[i]

						if curvalue:IsA("BasePart") then
							matname = mats[menu:GetVal("Visuals", "Extra", "Ragdoll Material")]

							curvalue.Material = Enum.Material[matname]
							curvalue.Transparency = 1 - menu:GetVal("Visuals", "Extra", "Ragdoll Chams", COLOR)[4]/255
							curvalue.Color = menu:GetVal("Visuals", "Extra", "Ragdoll Chams", COLOR, true)
							local vertexcolor = Vector3.new(curvalue.Color.R, curvalue.Color.G, curvalue.Color.B)
							local mesh = curvalue:FindFirstChild("Mesh")
							if mesh then
								mesh.VertexColor = vertexcolor -- color da texture baby  ! ! ! ! ! ðŸ‘¶ðŸ‘¶
								-- DA BABY????? WTF
							end

							if curvalue:IsA("Pants") then
								curvalue:Destroy()
							end

							local pant = curvalue:FindFirstChild("Pant")
							local ShirtTexture = curvalue:FindFirstChild("Shirt")
							if pant then
								pant:Destroy()
							end
							if mesh then
								mesh:Destroy()
							end
							if ShirtTexture then
								ShirtTexture:Destroy()
							end
						end
					end
				end
			end)

			menu.connections.dropweaponadded = workspace.Ignore.GunDrop.ChildAdded:Connect(function(newchild)
				if menu:GetVal("Visuals", "Dropped ESP", "Dropped Weapon Chams") then
					newchild:WaitForChild("Slot1", 1)
					local children = newchild:GetChildren()

					for i = 1, #children do
						local curvalue = children[i]

						if not curvalue:IsA("Model") and curvalue.Name ~= "Humanoid" and curvalue.ClassName == "Part"
						then
							curvalue.Color = menu:GetVal("Visuals", "Dropped ESP", "Dropped Weapon Chams", COLOR, true)
							local vertexcolor = Vector3.new(curvalue.Color.R, curvalue.Color.G, curvalue.Color.B)
							local mesh = curvalue:FindFirstChild("Mesh")

							if mesh then
								mesh.VertexColor = vertexcolor
							end
							local texture = curvalue:FindFirstChild("Texture")
							if texture then
								texture:Destroy()
							end
						end
					end
				end
			end)

			local chat_game = LOCAL_PLAYER.PlayerGui.ChatGame
			local chat_box = chat_game:FindFirstChild(TEXTBOX)
			local oldpos = nil

			local function pfkeycheck(actionName, inputState, inputObject)
				if INPUT_SERVICE:GetFocusedTextBox() then
					return Enum.ContextActionResult.Sink
				end
				if INPUT_SERVICE:GetFocusedTextBox() or menu.textboxopen then
					return Enum.ContextActionResult.Sink
				end
				if actionName == "BB PF check" then
					return Enum.ContextActionResult.Pass
				end
			end

			game:service("ContextActionService"):BindAction("BB PF check", pfkeycheck, false, Enum.UserInputType.Keyboard)

			local FoundThing = table.find(getconstants(client.cam.step), 0.5)
			menu.connections.renderstepped_pf = game.RunService.RenderStepped:Connect(function(dt)
				for index, time in next, ragebot.predictedDamageDealtRemovals do
					if time and (tick() > time) then
						ragebot.predictedDamageDealt[index] = 0
						if not ragebot.predictedMisses[index] then
							ragebot.predictedMisses[index] = 0
						end
						if not ragebot.predictedShotAt[index] then
							ragebot.predictedShotAt[index] = 0
						end
						ragebot.predictedMisses[index] += ragebot.predictedShotAt[index]
						ragebot.predictedShotAt[index] = 0
						time = nil
					end
				end

				MouseUnlockHook()
				-- ----debug.profilebegin("Main BB Loop")
				-- ----debug.profilebegin("Noclip Cheat check")
				if menu:GetVal("Misc", "Extra", "Auto Respawn") and not client.menu:isdeployed() then
					client.menu:deploy() -- this is uber ass
				end
				--debug.profileend("Noclip Cheat check")

				----debug.profilebegin("BB Rendering")
				do --rendering
					renderVisuals(dt)
					--
					if FoundThing then
						setconstant(
							client.cam.step,
							FoundThing,
							menu:GetVal("Visuals", "Camera Visuals", "No Camera Bob") and 0 or 0.5
						)
					end
				end
				--debug.profileend("BB Rendering")
				----debug.profilebegin("BB Legitbot")
				do --legitbot
					legitbot:TriggerBot()
					legitbot:MainLoop()
				end
				--debug.profileend("BB Legitbot")
				----debug.profilebegin("BB Misc.")
				do --misc
					misc:MainLoop()
					----debug.profilebegin("BB Ragebot KnifeBot")
					ragebot:KnifeBotMain()
					--debug.profileend("BB Ragebot KnifeBot")
				end
				--debug.profileend("BB Misc.")
				if not menu:GetVal("Rage", "Settings", "Aimbot Performance Mode") then
					----debug.profilebegin("BB Ragebot (Non Performance)")
					do --ragebot
						ragebot:MainLoop()
					end
					--debug.profileend("BB Ragebot (Non Performance)")
				else
					ragebot.flip = not ragebot.flip
					if ragebot.flip then
						ragebot:MainLoop()
					end
				end

				if menu.spectating and not client.cam:isspectating() then
					if client.menu.isdeployed() then
						client.cam:setfirstpersoncam()
					elseif client.cam.type ~= "menu" then
						local lobby = workspace:FindFirstChild("MenuLobby")
						if lobby then
							client.cam:setmenucam(lobby)
						else
							--client.menu:loadmenu()
						end
					end
					menu.spectating = false
				end

				--debug.profileend("Main BB Loop")
			end)

			client.nextchamsupdate = tick()

			menu.connections.heartbeat_pf = game.RunService.Heartbeat:Connect(function()
				local curTick = client.net:getTime()
				for index, nade in pairs(menu.activenades) do
					local nade_percent = (curTick - nade.start) / (nade.blowuptick - nade.start)
					if nade_percent >= 1 then
						if menu.activenades[index] == nade then
							table.remove(menu.activenades, index)
						end
					end
				end

				if client.nextchamsupdate and curTick > client.nextchamsupdate or menu.open then
					client.nextchamsupdate = curTick + 2
					CreateThread(renderChams)
				end

				CreateThread(destroyDeadChams)

				----debug.profilebegin("BB No Gun Bob or Sway")

				if client.char.alive then
					for id, gun in next, client.loadedguns do
						if not gun.fucku then
							local upvs = getupvalues(gun.step)
							local hopefullyfireroundupvs = getupvalues(upvs[#upvs])
							for i = 1, #upvs do
								local curv = upvs[i]
								if type(curv) == "function" and getinfo(curv).name:match("bob") then
									setupvalue(client.loadedguns[id].step, i, function(...)
										return (menu and menu:GetVal("Visuals", "Camera Visuals", "No Gun Bob or Sway")) and CFrame.new() or curv(...) --TODO FIX THIS
									end)
								end
							end

							for j = 1, #hopefullyfireroundupvs do
								local curupvalue = hopefullyfireroundupvs[j]
								if type(curupvalue) == "table" and rawget(curupvalue, "setpv") then
									local lol = {}
									local mt = getrawmetatable(curupvalue)
									local newindex = mt.__newindex
									local stuff = getupvalues(newindex)
									if type(stuff[6]) == "userdata" then
										setrawmetatable(lol, {
											__newindex = function(t, p, v)
												if menu then
													if p == "a" and menu:GetVal("Misc", "Weapon Modifications", "Enabled")
													then -- this might also break the recoil since idk if they might change this back to like p or v or whatever the fuck idk dick sukkin god
														local recoil_scale = menu:GetVal(
															"Misc",
															"Weapon Modifications",
															"Recoil Scale"
														) / 100
														return newindex(t, p, v * recoil_scale)
													else
														return newindex(t, p, v)
													end
												else
													setrawmetatable(lol, mt)
													return newindex(t, p, v)
												end
											end,
										})
										setupvalue(upvs[#upvs], j, lol)
									end
								end
							end
						end
					end

					if client.logic.currentgun.knife and not client.logic.currentgun.fucku then
						local upvs = getupvalues(client.logic.currentgun.step)
						for i = 1, #upvs do
							local curv = upvs[i]
							if type(curv) == "function" and getinfo(curv).name:match("bob") then
								client.logic.currentgun.fucku = true
								setupvalue(client.logic.currentgun.step, i, function(...)
									return (menu and menu:GetVal("Visuals", "Camera Visuals", "No Gun Bob or Sway")) and CFrame.new() or curv(...)
								end)
							end
						end
					end
				end

				local updater = client.fakeupdater;

				if (updater and updater.alive) then
					updater.step(3, false)
				end

				if (updater) then
					local thirdperson = menu:GetVal("Visuals", "Local", "Third Person") and menu:GetKey("Visuals", "Local", "Third Person");
					local enabled = menu:GetVal("Visuals", "Local", "Local Player Chams");
					local character = client.fakecharacter;
					local characterParts = client.characterParts;
					local isA = game.IsA;

					if (character and characterParts) then
						for index, child in next, characterParts.parts do
							local old = characterParts.backup[index];
							local color = menu:GetVal("Visuals", "Local", "Local Player Chams", COLOR, true);
							local transparency = (1 - (menu:GetVal("Visuals", "Local", "Local Player Chams", COLOR)[4] / 255));
							local material = Enum.Material[mats[menu:GetVal("Visuals", "Local", "Local Player Material")]];

							if (isA(child, "BasePart")) then
								child.Transparency = thirdperson and (enabled and transparency or old.Transparency) or 1;
								child.Material = enabled and material or old.Material;
								child.Color = enabled and color or old.Color;
							elseif (isA(child, "Texture") or isA(child, "Decal")) then
								if (enabled and material == Enum.Material.ForceField) then
									child.Transparency = 1;
								else
									child.Transparency = thirdperson and (enabled and transparency or old.Transparency) or 1;
								end
							elseif (isA(child, "SpecialMesh")) then
								child.VertexColor = enabled and Vector3.new(color.R, color.G, color.B) or old.VertexColor;

								if (child.Parent.Name == "Head") then
									child.TextureId = enabled and child.MeshId or old.TextureId;
								elseif (child.Parent.Name == "Torso") then
									child.TextureId = enabled and "rbxassetid://5614184106" or old.TextureId;
								end
							end
						end
					end
				end
			end);

			menu.Initialize({
				{ --ANCHOR stuffs
					name = "Legit",
					content = {
						{
							name = "Aim Assist",
							autopos = "left",
							autofill = true,
							content = {
								{
									type = TOGGLE,
									name = "Enabled",
									value = true,
								},
								{
									type = SLIDER,
									name = "Aimbot FOV",
									value = 10,
									minvalue = 0,
									maxvalue = 180,
									stradd = "°",
								},
								{
									type = TOGGLE,
									name = "Dynamic FOV",
									value = false,
									tooltip = "Changes all FOV settings in the Legit tab\nto change depending on the magnification.",
								},
								{
									type = SLIDER,
									name = "Smoothing",
									value = 20,
									minvalue = 0,
									maxvalue = 100,
									stradd = "%",
								},
								{
									type = DROPBOX,
									name = "Smoothing Type",
									value = 2,
									values = { "Exponential", "Linear" },
								},
								{
									type = SLIDER,
									name = "Randomization",
									value = 5,
									minvalue = 0,
									maxvalue = 20,
									custom = { [0] = "Off" },
								},
								{
									type = SLIDER,
									name = "Deadzone FOV",
									value = 1,
									minvalue = 0,
									maxvalue = 50,
									stradd = "°",
									decimal = 0.1,
									custom = { [0] = "Off" },
								},
								{
									type = DROPBOX,
									name = "Aimbot Key",
									value = 1,
									values = { "Mouse 1", "Mouse 2", "Always", "Dynamic Always" },
								},
								{
									type = DROPBOX,
									name = "Hitscan Priority",
									value = 1,
									values = { "Head", "Body", "Closest" },
								},
								{
									type = COMBOBOX,
									name = "Hitscan Points",
									values = { { "Head", true }, { "Body", true }, { "Arms", false }, { "Legs", false } },
								},
								{
									type = TOGGLE,
									name = "Adjust for Bullet Drop",
									value = true,
								},
								{
									type = TOGGLE,
									name = "Target Prediction",
									value = true,
								},
							},
						},
						{
							name = "Trigger Bot",
							autopos = "right",
							content = {
								{
									type = TOGGLE,
									name = "Enabled",
									value = false,
									extra = {
										type = KEYBIND,
										key = Enum.KeyCode.M,
									},
								},
								{
									type = COMBOBOX,
									name = "Trigger Bot Hitboxes",
									values = { { "Head", true }, { "Body", true }, { "Arms", false }, { "Legs", false } },
								},
								{
									type = TOGGLE,
									name = "Trigger When Aiming",
									value = false,
								},
								{
									type = SLIDER,
									name = "Aim Percentage",
									minvalue = 0,
									maxvalue = 100,
									value = 90,
									stradd = "%",
								},
							},
						},
						{
							name = "Bullet Redirection",
							autopos = "right",
							content = {
								{
									type = TOGGLE,
									name = "Silent Aim",
									value = false,
								},
								{
									type = SLIDER,
									name = "Silent Aim FOV",
									value = 5,
									minvalue = 0,
									maxvalue = 180,
									stradd = "°",
								},
								{
									type = SLIDER,
									name = "Hit Chance",
									value = 30,
									minvalue = 0,
									maxvalue = 100,
									stradd = "%",
								},
								{
									type = SLIDER,
									name = "Accuracy",
									value = 90,
									minvalue = 0,
									maxvalue = 100,
									stradd = "%",
								},
								{
									type = DROPBOX,
									name = "Hitscan Priority",
									value = 1,
									values = { "Head", "Body", "Closest" },
								},
								{
									type = COMBOBOX,
									name = "Hitscan Points",
									values = { { "Head", true }, { "Body", true }, { "Arms", false }, { "Legs", false } },
								},
							},
						},
						{
							name = "Recoil Control",
							autopos = "right",
							autofill = true,
							content = {
								{
									type = TOGGLE,
									name = "Weapon RCS",
									value = true,
								},
								{
									type = COMBOBOX,
									name = "Disable RCS While",
									values = { { "Holding Sniper", false }, { "Scoping In", false }, { "Not Shooting", true } }
								},
								{
									type = SLIDER,
									name = "Recoil Control X",
									value = 45,
									minvalue = 0,
									maxvalue = 100,
									stradd = "%",
								},
								{
									type = SLIDER,
									name = "Recoil Control Y",
									value = 80,
									minvalue = 0,
									maxvalue = 150,
									stradd = "%",
								},
							},
						},
					},
				},
				{
					name = "Rage",
					content = {
						{
							name = "Aimbot",
							autopos = "left",
							content = {
								{
									type = TOGGLE,
									name = "Enabled",
									value = false,
									extra = {
										type = KEYBIND,
										toggletype = 4,
									},
									unsafe = true,
								},
								{
									type = TOGGLE,
									name = "Silent Aim",
									value = false,
									tooltip = "Stops the camera from rotating toward targetted players.",
								},
								{
									type = TOGGLE,
									name = "Rotate Viewmodel",
									value = false,
									tooltip = "Rotates weapon viewmodel toward the targetted player."
								},
								{
									type = SLIDER,
									name = "Aimbot FOV",
									value = 180,
									minvalue = 0,
									maxvalue = 181,
									stradd = "°",
									custom = { [181] = "Ignored" },
								},
								{
									type = TOGGLE,
									name = "Auto Wallbang",
									value = false
								},
								{
									type = TOGGLE,
									name = "Auto Shoot",
									value = false,
									tooltip = "Automatically shoots players when a target is found."
								},
								{
									type = TOGGLE,
									name = "Double Tap",
									value = false,
									tooltip = "Shoots twice when target is found when Auto Shoot is enabled.",
									extra = {
										type = KEYBIND,
										toggletype = 4,
									},
								},
								{
									type = DROPBOX,
									name = "Hitscan Priority",
									value = 1,
									values = { "Head", "Body" },
								},
							},
						},
						{
							name = "Hack vs. Hack",
							autopos = "left",
							autofill = true,
							content = {
								{
									type = TOGGLE,
									name = "Autowall Hitscan",
									value = false,
									unsafe = true,
									tooltip = "While using Auto Wallbang, this will hitscan multiple points\nto increase penetration and help for peeking.",
								},
								{
									type = COMBOBOX,
									name = "Hitscan Points",
									values = {
										{ "Up", true },
										{ "Down", true },
										{ "Left", false },
										{ "Right", false },
										{ "Forward", true },
										{ "Backward", true },
										{ "Origin", true },
										{ "Towards", true },
									},
								},
								{
									type = TOGGLE,
									name = "Hitbox Shifting",
									value = false,
									tooltip = "Increases possible penetration with Autowall. The higher\nthe Hitbox Shift Distance the more likely it is to miss shots.\nWhen it misses it will try disable this.",
								},
								{
									type = SLIDER,
									name = "Hitbox Shift Distance",
									value = 4,
									minvalue = 1,
									maxvalue = 12.5,
									decimal = 0.1,
									stradd = " studs",
								},
								{
									type = TOGGLE,
									name = "Force Player Stances",
									value = false,
									tooltip = "Changes the stance of other players to the selected Stance Choice.",
								},
								{
									type = DROPBOX,
									name = "Stance Choice",
									value = 1,
									values = { "Stand", "Crouch", "Prone" },
								},
								{
									type = TOGGLE,
									name = "Freestanding",
									value = false,
									extra = {
										type = KEYBIND,
									},
								},
							},
						},
						{
							name = "Anti Aim",
							x = menu.columns.right,
							y = 66,
							width = menu.columns.width,
							height = 253,
							content = {
								{
									type = TOGGLE,
									name = "Enabled",
									value = false,
									tooltip = "When this is enabled, your server-side yaw, pitch and stance are set to the values in this tab.",
								},
								{
									type = DROPBOX,
									name = "Pitch",
									value = 4,
									values = {
										"Off",
										"Up",
										"Zero",
										"Down",
										"Upside Down",
										"Roll Forward",
										"Roll Backward",
										"Random",
										"Bob",
										"Glitch",
									},
								},
								{
									type = DROPBOX,
									name = "Yaw",
									value = 2,
									values = { "Forward", "Backward", "Spin", "Random", "Glitch Spin", "Stutter Spin" },
								},
								{
									type = SLIDER,
									name = "Spin Rate",
									value = 10,
									minvalue = -100,
									maxvalue = 100,
									stradd = "Â°/s",
								},
								{
									type = DROPBOX,
									name = "Force Stance",
									value = 4,
									values = { "Off", "Stand", "Crouch", "Prone" },
								},
								{
									type = TOGGLE,
									name = "Hide in Floor",
									value = true,
									tooltip = "Shifts your body slightly under the ground\nso as to hide it when Force Stance is set to Prone.",
								},
								{
									type = TOGGLE,
									name = "Lower Arms",
									value = false,
									tooltip = "Lowers your arms on the server.",
								},
								{
									type = TOGGLE,
									name = "Tilt Neck",
									value = false,
									tooltip = "Forces the replicated aiming state so that it appears as though your head is tilted.",
								},
							},
						},
						{
							name = { "Extra", "Settings" },
							y = 325,
							x = menu.columns.right,
							width = menu.columns.width,
							height = 258,
							[1] = {
								content = {
									{
										type = TOGGLE,
										name = "Knife Bot",
										value = false,
										extra = {
											type = KEYBIND,
											toggletype = 4,
										},
										unsafe = true,
									},
									{
										type = DROPBOX,
										name = "Knife Bot Type",
										value = 2,
										values = { "Assist", "Multi Aura", "Flight Aura", "Assist+", "Teleport Aura" },
									},
									{
										type = DROPBOX,
										name = "Knife Hitscan",
										value = 1,
										values = { "Head", "Torso", "Other" },
									},
									{
										type = TOGGLE,
										name = "Knife Visible Only",
										value = false,
									},
									{
										type = SLIDER,
										name = "Knife Range",
										value = 26,
										minvalue = 1,
										maxvalue = 26,
										custom = {[26] = "Max"},
										stradd = " studs",
									},
									{
										type = TOGGLE,
										name = "Auto Peek",
										value = false,
										extra = {
											type = KEYBIND,
											toggletype = 1,
										},
										tooltip = "Hitscans from in front of your camera,\nif a target is found it will move you towards the point automatically",
									},
								},
							},
							[2] = {
								content = {
									{
										type = TOGGLE,
										name = "Aimbot Performance Mode",
										value = true,
										tooltip = "Lowers polling rate for targetting in Rage Aimbot.",
									},
									{
										type = TOGGLE,
										name = "Resolve Fake Positions",
										value = true,
										tooltip = "Rage aimbot attempts to resolve Crimwalk on other players.\nDisable if you are having issues with resolver.",
									},
									{
										type = TOGGLE,
										name = "Aimbot Damage Prediction",
										value = true,
										tooltip = "Predicts damage done to enemies as to prevent wasting ammo and time on certain players.\nHelps for users, and against players with high latency.",
									},
									{
										type = SLIDER,
										name = "Damage Prediction Limit",
										value = 100,
										minvalue = 0,
										maxvalue = 300,
										stradd = "hp",
									},
									{
										type = SLIDER,
										name = "Damage Prediction Time",
										value = 200,
										minvalue = 100,
										maxvalue = 500,
										stradd = "%",
									},
									{
										type = SLIDER,
										name = "Max Hitscan Points",
										value = 30,
										minvalue = 0,
										maxvalue = 300,
										stradd = " points",
									},
								},
							},
						},
					},
				},
				{
					name = "Visuals",
					content = {
						{
							name = { "Enemy ESP", "Team ESP", "Local" },
							autopos = "left",
							size = 300,
							[1] = {
								content = {
									{
										type = TOGGLE,
										name = "Enabled",
										value = true,
										tooltip = "Enables 2D rendering, disabling this could improve performance.\nDoes not affect Chams."
									},
									{
										type = TOGGLE,
										name = "Name",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Enemy Name",
											color = { 255, 255, 255, 200 },
										},
									},
									{
										type = TOGGLE,
										name = "Box",
										value = true,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Enemy Box Fill", "Enemy Box" },
											color = { { 255, 0, 0, 0 }, { 255, 0, 0, 150 } },
										},
									},
									{
										type = TOGGLE,
										name = "Health Bar",
										value = true,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Enemy Low Health", "Enemy Max Health" },
											color = { { 255, 0, 0 }, { 0, 255, 0 } },
										},
									},
									{
										type = TOGGLE,
										name = "Health Number",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Enemy Health Number",
											color = { 255, 255, 255, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Held Weapon",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Enemy Held Weapon",
											color = { 255, 255, 255, 200 },
										},
									},
									{
										type = TOGGLE,
										name = "Held Weapon Icon",
										value = false,
									},
									{
										type = COMBOBOX,
										name = "Flags",
										values = { { "Use Large Text", true }, { "Level", true }, { "Distance", true }, { "Resolved", false },  },
									},
									{
										type = TOGGLE,
										name = "Chams",
										value = true,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Visible Enemy Chams", "Invisible Enemy Chams" },
											color = { { 255, 0, 0, 200 }, { 100, 0, 0, 100 } },
										},
									},
									{
										type = TOGGLE,
										name = "Skeleton",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Enemy skeleton",
											color = { 255, 255, 255, 120 },
										},
									},
									{
										type = TOGGLE,
										name = "Out of View",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Arrow Color",
											color = { 255, 255, 255, 255 },
										},
									},
									{
										type = SLIDER,
										name = "Arrow Distance",
										value = 50,
										minvalue = 10,
										maxvalue = 101,
										custom = { [101] = "Max" },
										stradd = "%",
									},
									{
										type = TOGGLE,
										name = "Dynamic Arrow Size",
										value = false,
									},
								},
							},
							[2] = {
								content = {
									{
										type = TOGGLE,
										name = "Enabled",
										value = false,
										tooltip = "Enables 2D rendering, disabling this could improve performance.\nDoes not affect Chams."
									},
									{
										type = TOGGLE,
										name = "Name",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Team Name",
											color = { 255, 255, 255, 200 },
										},
									},
									{
										type = TOGGLE,
										name = "Box",
										value = true,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Enemy Box Fill", "Enemy Box" },
											color = { { 0, 255, 0, 0 }, { 0, 255, 0, 150 } },
										},
									},
									{
										type = TOGGLE,
										name = "Health Bar",
										value = false,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Team Low Health", "Team Max Health" },
											color = { { 255, 0, 0 }, { 0, 255, 0 } },
										},
									},
									{
										type = TOGGLE,
										name = "Health Number",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Team Health Number",
											color = { 255, 255, 255, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Held Weapon",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Team Held Weapon",
											color = { 255, 255, 255, 200 },
										},
									},
									{
										type = TOGGLE,
										name = "Held Weapon Icon",
										value = false,
									},
									{
										type = COMBOBOX,
										name = "Flags",
										values = { { "Use Large Text", false }, { "Level", false }, { "Distance", false },  },
									},
									{
										type = TOGGLE,
										name = "Chams",
										value = false,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Visible Team Chams", "Invisible Team Chams" },
											color = { { 0, 255, 0, 200 }, { 0, 100, 0, 100 } },
										},
									},
									{
										type = TOGGLE,
										name = "Skeleton",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Team skeleton",
											color = { 255, 255, 255, 120 },
										},
									},
								},
							},
							[3] = {
								content = {
									{
										type = TOGGLE,
										name = "Arm Chams",
										value = false,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Sleeve Color", "Hand Color" },
											color = { { 106, 136, 213, 255 }, { 181, 179, 253, 255 } },
										},
									},
									{
										type = DROPBOX,
										name = "Arm Material",
										value = 1,
										values = { "Plastic", "Ghost", "Neon", "Foil", "Glass" },
									},
									{
										type = TOGGLE,
										name = "Weapon Chams",
										value = false,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Weapon Color", "Laser Color" },
											color = { { 106, 136, 213, 255 }, { 181, 179, 253, 255 } },
										},
									},
									{
										type = DROPBOX,
										name = "Weapon Material",
										value = 1,
										values = { "Plastic", "Ghost", "Neon", "Foil", "Glass" },
									},
									{
										type = TOGGLE,
										name = "Animate Ghost Material",
										value = false,
										tooltip = "Toggles whether or not the 'Ghost' material will be animated or not.",
									},
									{
										type = TOGGLE,
										name = "Remove Weapon Skin",
										value = false,
										tooltip = "If a loaded weapon has a skin, it will remove it.",
									},
									{
										type = TOGGLE,
										name = "Third Person",
										value = false,
										extra = {
											type = KEYBIND,
											key = nil,
											toggletype = 2,
										},
									},
									{
										type = SLIDER,
										name = "Third Person Distance",
										value = 60,
										minvalue = 1,
										maxvalue = 150,
									},
									{
										type = TOGGLE,
										name = "Local Player Chams",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Local Player Chams",
											color = { 106, 136, 213, 255 },
										},
										tooltip = "Changes the color and material of the local third person body when it is on.",
									},
									{
										type = DROPBOX,
										name = "Local Player Material",
										value = 1,
										values = { "Plastic", "Ghost", "Neon", "Foil", "Glass" },
									},
								},
							},
						},
						{
							name = { "ESP Settings", "Dropped ESP" },
							autopos = "left",
							autofill = true,
							[1] = {
								content = {
									{
										type = SLIDER,
										name = "Max HP Visibility Cap",
										value = 90,
										minvalue = 50,
										maxvalue = 100,
										stradd = "hp",
										custom = {
											[100] = "Always"
										}
									},
									{
										type = DROPBOX,
										name = "Text Case",
										value = 2,
										values = { "lowercase", "Normal", "UPPERCASE" },
									},
									{
										type = SLIDER,
										name = "Max Text Length",
										value = 0,
										minvalue = 0,
										maxvalue = 32,
										custom = { [0] = "Unlimited" },
										stradd = " letters",
									},
									{
										type = SLIDER,
										name = "ESP Fade Time",
										value = 0.5,
										minvalue = 0,
										maxvalue = 2,
										stradd = "s",
										decimal = 0.1,
										custom = { [0] = "Off" }
									},
									{
										type = TOGGLE,
										name = "Highlight Target",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Aimbot Target",
											color = { 255, 0, 0, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Highlight Friends",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Friended Players",
											color = { 0, 255, 255, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Highlight Priority",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Priority Players",
											color = { 255, 210, 0, 255 },
										},
									},
									-- {
									-- 	type = SLIDER,
									-- 	name = "Max Player Text",
									-- 	value = 0,
									-- 	minvalue = 0,
									-- 	maxvalue = 32,
									-- 	custom = {[0] = "None"},
									-- }
								},
							},
							[2] = {
								content = {
									{
										type = TOGGLE,
										name = "Weapon Names",
										value = false,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Highlighted Weapons", "Weapon Names" },
											color = { { 255, 125, 255, 255 }, { 255, 255, 255, 255 } },
										},
										tooltip = "Displays dropped weapons as you get closer to them,\nHighlights the weapon you are holding in the second color.",
									},
									{
										type = TOGGLE,
										name = "Weapon Icons",
										value = false
									},
									{
										type = TOGGLE,
										name = "Weapon Ammo",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Weapon Ammo",
											color = { 61, 168, 235, 150 },
										},
									},
									{
										type = TOGGLE,
										name = "Dropped Weapon Chams",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Dropped Weapon Color",
											color = { 3, 252, 161, 150 },
										},
									},
									{
										type = TOGGLE,
										name = "Grenade Warning",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Slider Color",
											color = { 68, 92, 227 },
										},
										tooltip = "Displays where grenades that will deal\ndamage to you will land and the damage they will deal.",
									},
									{
										type = TOGGLE,
										name = "Grenade ESP",
										value = false,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Inner Color", "Outer Color" },
											color = { { 195, 163, 255 }, { 123, 69, 224 } },
										},
										tooltip = "Displays the full path of any grenade that will deal damage to you is thrown.",
									},
								}
							}
						},
						{
							name = { "Camera Visuals", "Viewmodel" },
							autopos = "right",
							size = 228,
							[1] = {
								content = {
									{
										type = SLIDER,
										name = "Camera FOV",
										value = 80,
										minvalue = 60,
										maxvalue = 120,
										stradd = "°",
									},
									{
										type = TOGGLE,
										name = "No Camera Bob",
										value = false,
									},
									{
										type = TOGGLE,
										name = "No Scope Sway",
										value = false,
									},
									{
										type = TOGGLE,
										name = "Disable ADS FOV",
										value = false,
									},
									{
										type = TOGGLE,
										name = "No Scope Border",
										value = false,
									},
									{
										type = TOGGLE,
										name = "No Visual Suppression",
										value = false,
										tooltip = "Removes the suppression of enemies' bullets.",
									},
									{
										type = TOGGLE,
										name = "No Gun Bob or Sway",
										value = false,
										tooltip = "Removes the bob and sway of weapons when walking.\nThis does not remove the swing effect when moving the mouse.",
									},
									{
										type = TOGGLE,
										name = "Reduce Camera Recoil",
										value = false,
										tooltip = "Reduces camera recoil by X%. Does not affect visible weapon recoil or kick.",
									},
									{
										type = SLIDER,
										name = "Camera Recoil Reduction",
										value = 10,
										minvalue = 0,
										maxvalue = 100,
										stradd = "%",
									},
								},
							},
							[2] = {
								content = {
									{
										type = TOGGLE,
										name = "Enabled",
										value = false,
									},
									{
										type = SLIDER,
										name = "Offset X",
										value = 0,
										minvalue = -3,
										maxvalue = 3,
										decimal = 0.01,
										stradd = " studs",
									},
									{
										type = SLIDER,
										name = "Offset Y",
										value = 0,
										minvalue = -3,
										maxvalue = 3,
										decimal = 0.01,
										stradd = " studs",
									},
									{
										type = SLIDER,
										name = "Offset Z",
										value = 0,
										minvalue = -3,
										maxvalue = 3,
										decimal = 0.01,
										stradd = " studs",
									},
									{
										type = SLIDER,
										name = "Pitch",
										value = 0,
										minvalue = -360,
										maxvalue = 360,
										stradd = "°",
									},
									{
										type = SLIDER,
										name = "Yaw",
										value = 0,
										minvalue = -360,
										maxvalue = 360,
										stradd = "°",
									},
									{
										type = SLIDER,
										name = "Roll",
										value = 0,
										minvalue = -360,
										maxvalue = 360,
										stradd = "°",
									},
								},
							},
						},
						{
							name = { "World", "Interface", "Extra" },
							subtabfill = true,
							autofill = true,
							autopos = "right",
							size = 144,
							[1] = {
								content = {
									{
										type = TOGGLE,
										name = "Ambience",
										value = false,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Inside Ambience", "Outside Ambience" },
											color = { { 117, 76, 236 }, { 117, 76, 236 } },
										},
										tooltip = "Changes the map's ambient colors to your defined colors.",
									},
									{
										type = TOGGLE,
										name = "Force Time",
										value = false,
										tooltip = "Forces the time to the time set by your below.",
									},
									{
										type = SLIDER,
										name = "Custom Time",
										value = 0,
										minvalue = 0,
										maxvalue = 24,
										decimal = 0.1,
										stradd = "hr",
									},
									{
										type = TOGGLE,
										name = "Custom Saturation",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Saturation Tint",
											color = { 255, 255, 255 },
										},
										tooltip = "Adds custom saturation the image of the game.",
									},
									{
										type = SLIDER,
										name = "Saturation Density",
										value = 0,
										minvalue = 0,
										maxvalue = 100,
										stradd = "%",
									},
									{
										type = TOGGLE,
										name = "Skybox Changer",
										value = false,
									},
									{
										type = DROPBOX,
										name = "Skybox",
										value = 9,
										values = { "Purple Nebula", "Night Sky", "Pink Daylight", "Morning Glow", "Setting Sun", "Fade Blue", "Elegant Morning", "Neptune", "Redshift" }
									}
								},
							},
							[2] = {
								content = {
									{
										type = TOGGLE,
										name = "Fov Circles",
										value = false,
									},
									{
										type = TOGGLE,
										name = "Aim Assist",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Aim Assist FOV",
											color = { 155, 155, 255, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Aim Assist Deadzone",
										value = true,
										extra = {
											type = COLORPICKER,
											name = "Deadzone FOV",
											color = { 50, 50, 50, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Bullet Redirection",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Bullet Redirection FOV",
											color = { 163, 72, 127, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Ragebot",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Ragebot FOV",
											color = { 255, 210, 0, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Keybinds List",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Text Color",
											color = { 155, 155, 255, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Use List Sizes",
										value = false,
									},
									{
										type = TOGGLE,
										name = "Log Keybinds",
										value = false
									},
									{
										type = SLIDER,
										name = "Keybinds List X",
										value = 0,
										minvalue = 0,
										maxvalue = 100,
										shift_stepsize = 0.05,
										stradd = "%",
									},
									{
										type = SLIDER,
										name = "Keybinds List Y",
										value = 50,
										minvalue = 0,
										maxvalue = 100,
										shift_stepsize = 0.05,
										stradd = "%",
									},
									{
										type = TOGGLE,
										name = "Watermark",
										value = true,
									}
								},
							},
							[3] = {
								content = {
									{
										type = TOGGLE,
										name = "Crosshair Color",
										value = false,
										extra = {
											type = DOUBLE_COLORPICKER,
											name = { "Inline", "Outline" },
											color = { { 155, 155, 255 }, { 25, 25, 25 } },
										},
									},
									{
										type = TOGGLE,
										name = "Pointer",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Laser Pointer Color",
											color = { 255, 255, 255, 255 },
										},
									},
									{
										type = TOGGLE,
										name = "Show Recoil",
										value = true,
									},
									{
										type = SLIDER,
										name = "Pointer Size",
										value = 6,
										minvalue = 1,
										maxvalue = 20,
										stradd = "px"
									},
									{
										type = SLIDER,
										name = "Pointer Offset",
										value = 0,
										minvalue = 0,
										maxvalue = 25,
										stradd = "px"
									},
									{
										type = TOGGLE,
										name = "Ragdoll Chams",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Ragdoll Chams",
											color = { 106, 136, 213, 255 },
										},
									},
									{
										type = DROPBOX,
										name = "Ragdoll Material",
										value = 1,
										values = { "Plastic", "Ghost", "Neon", "Foil", "Glass" },
									},
									{
										type = TOGGLE,
										name = "Bullet Tracers",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Bullet Tracers",
											color = { 201, 69, 54, 125 },
										},
									},
									{
										type = TOGGLE,
										name = "Enemy Spawns",
										value = false,
										extra = {
											type = COLORPICKER,
											name = "Enemy Spawns",
											color = { 255, 255, 255, 255 }
										}
									}
								}
							}
						},
					},
				},
				{
					name = "Misc",
					content = {
						{
							name = { "Movement", "Tweaks" },
							autopos = "left",
							size = 300,
							[1] = {
								content = {
									{
										type = TOGGLE,
										name = "Fly",
										value = false,
										unsafe = true,
										tooltip = "Manipulates your velocity to make you fly.\nUse 60 speed or below to never get flagged.",
										extra = {
											type = KEYBIND,
											key = Enum.KeyCode.B,
											toggletype = 2,
										},
									},
									{
										type = SLIDER,
										name = "Fly Speed",
										value = 60,
										minvalue = 1,
										maxvalue = 400,
										stradd = " stud/s",
									},
									{
										type = TOGGLE,
										name = "Auto Jump",
										value = false,
										tooltip = "When you hold the spacebar, it will automatically jump repeatedly, ignoring jump delay.",
									},
									{
										type = TOGGLE,
										name = "Speed",
										value = false,
										unsafe = true,
										tooltip = "Manipulates your velocity to make you move faster, unlike fly it doesn't make you fly.\nUse 60 speed or below to never get flagged.",
										extra = {
											type = KEYBIND,
											toggletype = 4,
										},
									},
									{
										type = DROPBOX,
										name = "Speed Type",
										value = 1,
										values = { "Always", "In Air", "On Hop" },
									},
									{
										type = SLIDER,
										name = "Speed Factor",
										value = 40,
										minvalue = 1,
										maxvalue = 400,
										stradd = " stud/s",
									},
									{
										type = TOGGLE,
										name = "Avoid Collisions",
										value = false,
										tooltip = "Attempts to stops you from running into obstacles\nfor Speed and Circle Strafe.",
										extra = {
											type = KEYBIND,
											toggletype = 4,
										}
									},
									{
										type = SLIDER,
										name = "Avoid Collisions Scale",
										value = 100,
										minvalue = 0,
										maxvalue = 100,
										stradd = "%",
									},
									{
										type = TOGGLE,
										name = "Circle Strafe",
										value = false,
										extra = {
											type = KEYBIND,
										},
										tooltip = "When you hold this keybind, it will strafe in a perfect circle.\nSpeed of strafing is borrowed from Speed Factor.",
									},
								},
							},
							[2] = {
								content = {
									{
										type = TOGGLE,
										name = "Gravity Shift",
										value = false,
										tooltip = "Shifts movement gravity by X%. (Does not affect bullet acceleration.)",
									},
									{
										type = SLIDER,
										name = "Gravity Shift Percentage",
										value = -50,
										minvalue = -500,
										maxvalue = 500,
										stradd = "%",
									},
									{
										type = TOGGLE,
										name = "Jump Power",
										value = false,
										tooltip = "Shifts movement jump power by X%.",
									},
									{
										type = SLIDER,
										name = "Jump Power Percentage",
										value = 150,
										minvalue = 0,
										maxvalue = 1000,
										stradd = "%",
									},
									{
										type = TOGGLE,
										name = "Prevent Fall Damage",
										value = false,
									},
								},
							},
						},
						{
							name = "Weapon Modifications",
							autopos = "left",
							autofill = true,
							content = {
								{
									type = TOGGLE,
									name = "Enabled",
									value = false,
									tooltip = "Allows Bitch Bot to modify weapons.",
								},
								{
									type = SLIDER,
									name = "Fire Rate Scale",
									value = 150,
									minvalue = 50,
									maxvalue = 5000,
									stradd = "%",
									tooltip = "Scales all weapons' firerate by X%.\n100% = Normal firerate",
								},
								{
									type = SLIDER,
									name = "Recoil Scale",
									value = 10,
									minvalue = 0,
									maxvalue = 1000,
									stradd = "%",
									tooltip = "Scales all weapons' recoil by X%.\n0% = No recoil | 50% = Halved recoil",
								},
								{
									type = TOGGLE,
									name = "Remove Animations",
									value = true,
									tooltip = "Removes all animations from any gun.\nThis will also completely remove the equipping animations.",
								},
								{
									type = TOGGLE,
									name = "Instant Equip",
									value = true,
								},
								{
									type = TOGGLE,
									name = "Fully Automatic",
									value = true,
								},
								{
									type = TOGGLE,
									name = "Run and Gun",
									value = false,
									tooltip = "Makes it so that your weapon does not\nsway due to mouse movement, or turns over while sprinting.",
								},
								{
									type = TOGGLE,
									name = "Infinite Ammo",
									value = false,
									tooltip = "Makes it so that your weapon has\ninfinite ammo.",
								},
							},
						},
						{
							name = {"Extra", "Sounds"},
							autopos = "right",
							autofill = true,
							size = 100,
							[1] = {
								content = {
									{
										type = TOGGLE,
										name = "Ignore Friends",
										value = true,
										tooltip = "When turned on, bullets do not deal damage to friends,\nand Rage modules won't target friends.",
									},
									{
										type = TOGGLE,
										name = "Target Only Priority Players",
										value = false,
										tooltip = "When turned on, all modules except for Aim Assist that target players\nwill ignore anybody that isn't on the Priority list.",
									},
									{
										type = TOGGLE,
										name = "Disable 3D Rendering",
										value = false,
										tooltip = "When turned on, all 3D rendering will be disabled.\nThis helps with running multiple instances at once."
									},
									{
										type = TOGGLE,
										name = "Suppress Only",
										value = false,
										tooltip = "When turned on, bullets do not deal damage.",
									},
									{
										type = TOGGLE,
										name = "Auto Respawn",
										value = false,
										tooltip = "Automatically respawns after deaths.",
									},
									-- {
									-- 	type = TOGGLE,
									-- 	name = "Disable Team Sounds",
									-- 	value = false,
									-- 	tooltip = "Disables sounds from all teammates and local player.",
									-- },
									{
										type = DROPBOX,
										name = "Vote Friends",
										value = 1,
										values = { "Off", "Yes", "No" },
									},
									{
										type = DROPBOX,
										name = "Vote Priority",
										value = 1,
										values = { "Off", "Yes", "No" },
									},
									{
										type = DROPBOX,
										name = "Default Vote",
										value = 1,
										values = { "Off", "Yes", "No" },
									},
									{
										type = TOGGLE,
										name = "Kill Say",
										value = false,
										tooltip = "Kill say messages, located in bitchbot/killsay.bb \n[name] is the target's name\n[weapon] is the weapon used\n[hitbox] says head or body depending on where you shot the player",
									},
									{
										type = DROPBOX,
										name = "Chat Spam",
										value = 1,
										values = {
											"Off",
											"Original",
											"t0nymode",
											"Chinese Propaganda",
											"Emojis",
											"Deluxe",
											"Youtube Title",
											"Custom",
											"Custom Combination",
										},
										tooltip = "Spams chat, Custom options are located in the bitchbot/chatspam.bb",
									},
									{
										type = TOGGLE,
										name = "Chat Spam Repeat",
										value = false,
										tooltip = "Repeats the same Chat Spam message in chat.",
									},
									{
										type = SLIDER,
										name = "Chat Spam Delay",
										minvalue = 1,
										maxvalue = 10,
										value = 5,
										stradd = "s",
									},
									-- {
									-- 	type = TOGGLE,
									-- 	name = "Impact Grenade",
									-- 	value = false,
									-- 	tooltip = "Explodes grenades on impact."
									-- },
									-- {
									-- 	type = TOGGLE,
									-- 	name = "Auto Martyrdom",
									-- 	value = false,
									-- 	tooltip = "Whenever you die to an enemy, this will drop a grenade\nat your death position.",
									-- },
									{
										type = TOGGLE,
										name = "Break Windows",
										value = false,
										tooltip = "Breaks all windows in the map when you spawn."
									},
									{
										type = TOGGLE,
										name = "Join New Game On Kick",
										value = false,
									},
									{
										type = BUTTON,
										name = "Join New Game",
										unsafe = false,
										doubleclick = true,
									},
								},
							},
							[2] = {
								content = {
									{
										type = TOGGLE,
										name = "Kill Sound",
										value = false,
									},
									{
										type = TEXTBOX,
										name = "killsoundid",
										text = "5709456554",
										tooltip = "The Roblox sound ID or file inside of synapse\n workspace to play when Kill Sound is on.",
									},
									{
										type = SLIDER,
										name = "Kill Sound Volume",
										value = 20,
										minvalue = 0,
										maxvalue = 100,
										stradd = "%",
									},
									{
										type = TOGGLE,
										name = "Hit Sounds",
										value = false,
									},
									{
										type = TOGGLE,
										name = "Head Hit Sound",
										value = false,
									},
									{
										type = TEXTBOX,
										name = "headhitsoundid",
										text = "5043539486",
										tooltip = "The Roblox sound ID or file inside of synapse\n workspace to play when Hit Sound is on.",
									},
									{
										type = TOGGLE,
										name = "Body Hit Sound",
										value = false,
									},
									{
										type = TEXTBOX,
										name = "bodyhitsoundid",
										text = "3744371342",
										tooltip = "The Roblox sound ID or file inside of synapse\n workspace to play when Hit Sound is on.",
									},
									{
										type = SLIDER,
										name = "Hit Sound Volume",
										value = 20,
										minvalue = 0,
										maxvalue = 100,
										stradd = "%",
									},
								},
							},
						},
					},
				},
				{
					name = "Settings",
					content = {
						{
							name = "Player List",
							x = menu.columns.left,
							y = 66,
							width = menuWidth - 34,
							height = 328,
							content = {
								{
									type = "list",
									name = "Players",
									multiname = { "Name", "Team", "Status" },
									size = 9,
									columns = 3,
								},
								{
									type = IMAGE,
									name = "Player Info",
									text = "No Player Selected",
									size = 72,
								},
								{
									type = DROPBOX,
									name = "Player Status",
									x = 307,
									y = 314,
									w = 160,
									value = 1,
									values = { "None", "Friend", "Priority" },
								},
								{
									type = BUTTON,
									name = "Votekick",
									doubleclick = true,
									x = 307,
									y = 356,
									w = 76,
								},
								{
									type = BUTTON,
									name = "Spectate",
									x = 391,
									y = 356,
									w = 76,
								},
							},
						},
						{
							name = "Cheat Settings",
							x = menu.columns.left,
							y = 400,
							width = menu.columns.width,
							height = 183,
							content = {
								{
									type = TOGGLE,
									name = "Custom Menu Key",
									value = false,
									extra = {
										type = KEYBIND,
										key = Enum.KeyCode.RightShift,
										toggletype = 1,
									},
								},
								{
									type = TOGGLE,
									name = "Menu Accent",
									value = false,
									extra = {
										type = COLORPICKER,
										name = "Accent Color",
										color = { 155, 155, 255 },
									},
								},
								{
									type = TOGGLE,
									name = "Custom Menu Name",
									value = MenuName and true or false,
								},
								{
									type = TEXTBOX,
									name = "MenuName",
									text = MenuName or "Bitch Bot",
								},
								{
									type = BUTTON,
									name = "Set Clipboard Game ID",
								},
								{
									type = BUTTON,
									name = "Unload Cheat",
									doubleclick = true,
								},
								{
									type = TOGGLE,
									name = "Allow Unsafe Features",
									value = false,
								},
							},
						},
						{
							name = "Configuration",
							x = menu.columns.right,
							y = 400,
							width = menu.columns.width,
							height = 183,
							content = {
								{
									type = TEXTBOX,
									name = "ConfigName",
									file = true,
									text = "",
								},
								{
									type = DROPBOX,
									name = "Configs",
									value = 1,
									values = GetConfigs(),
								},
								{
									type = BUTTON,
									name = "Load Config",
									doubleclick = true,
								},
								{
									type = BUTTON,
									name = "Save Config",
									doubleclick = true,
								},
								{
									type = BUTTON,
									name = "Delete Config",
									doubleclick = true,
								},
							},
						},
					},
				},
			})

			do
				local plistinfo = menu.options["Settings"]["Player List"]["Player Info"][1]
				local plist = menu.options["Settings"]["Player List"]["Players"]
				local function updateplist()
					if not menu then
						return
					end
					local playerlistval = menu:GetVal("Settings", "Player List", "Players")
					local players = table.create(Players.MaxPlayers)

					for i, team in pairs(TEAMS:GetTeams()) do
						local sorted_players = table.create(#players)
						for i1, player in pairs(team:GetPlayers()) do
							table.insert(sorted_players, player.Name)
						end
						table.sort(sorted_players) -- why the fuck doesn't this shit work ...
						for i1, player_name in pairs(sorted_players) do
							table.insert(players, Players:FindFirstChild(player_name))
						end
					end
					local templist = table.create(#players)
					for k, v in ipairs(players) do
						local playername = { v.Name, RGB(255, 255, 255) }
						local teamtext = { "None", RGB(255, 255, 255) }
						local playerstatus = { "None", RGB(255, 255, 255) }
						if v.Team ~= nil then
							teamtext[1] = v.Team.Name
							teamtext[2] = v.TeamColor.Color
						end
						if v == LOCAL_PLAYER then
							playerstatus[1] = "Local Player"
							playerstatus[2] = RGB(66, 135, 245)
						elseif table.find(menu.friends, v.Name) then
							playerstatus[1] = "Friend"
							playerstatus[2] = RGB(0, 255, 0)
						elseif table.find(menu.priority, v.Name) then
							playerstatus[1] = "Priority"
							playerstatus[2] = RGB(255, 210, 0)
						end

						table.insert(templist, { playername, teamtext, playerstatus })
					end
					plist[5] = templist
					if playerlistval ~= nil then
						for i, v in ipairs(players) do
							if v.Name == playerlistval then
								selectedPlayer = v
								break
							end
							if i == #players then
								selectedPlayer = nil
								menu.list.setval(plist, nil)
							end
						end
					end
					menu:SetMenuPos(menu.x, menu.y)
				end

				local function setplistinfo(player, textonly)
					if player ~= nil then
						local playerteam = "None"
						if player.Team ~= nil then
							playerteam = player.Team.Name
						end
						local playerhealth = "?"

						local alive = client.hud:isplayeralive(player)
						if alive then
							playerhealth = math.ceil(client.hud:getplayerhealth(player))
						else
							playerhealth = "Dead"
						end
						local playerdata = teamdata[1]:FindFirstChild(player.Name) or teamdata[2]:FindFirstChild(player.Name)
						local playerrank = playerdata.Rank.Text
						local kills = playerdata.Kills.Text
						local deaths = playerdata.Deaths.Text
						plistinfo[1].Text = string.format(
							[[
Name: %s
Health: %s
Rank: %d
K/D: %d/%d
				]],
							player.Name,
							tostring(playerhealth),
							playerrank,
							kills,
							deaths
						)
						if textonly == nil then
							plistinfo[2].Data = BBOT_IMAGES[5]

							plistinfo[2].Data = game:HttpGet(string.format("https://www.roblox.com/headshot-thumbnail/image?userId=%s&width=100&height=100&format=png", player.UserId))
						end
					else
						plistinfo[2].Data = BBOT_IMAGES[5]
						plistinfo[1].Text = "No Player Selected"
					end
				end

				menu.list.removeall(menu.options["Settings"]["Player List"]["Players"])
				updateplist()
				setplistinfo()

				local oldslectedplayer = nil
				menu.connections.inputstart2 = INPUT_SERVICE.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if menu.tabnames[menu.activetab] == "Settings" and menu.open then
							game.RunService.Stepped:wait()

							updateplist()

							if selectedPlayer ~= nil then
								if menu:MouseInMenu(28, 68, 448, 238) then
									if table.find(menu.friends, selectedPlayer.Name) then
										menu.options["Settings"]["Player List"]["Player Status"][1] = 2
										menu.options["Settings"]["Player List"]["Player Status"][4][1].Text = "Friend"
									elseif table.find(menu.priority, selectedPlayer.Name) then
										menu.options["Settings"]["Player List"]["Player Status"][1] = 3
										menu.options["Settings"]["Player List"]["Player Status"][4][1].Text = "Priority"
									else
										menu.options["Settings"]["Player List"]["Player Status"][1] = 1
										menu.options["Settings"]["Player List"]["Player Status"][4][1].Text = "None"
									end
								end

								for k, table_ in pairs({ menu.friends, menu.priority }) do
									for index, playername in pairs(table_) do
										if selectedPlayer.Name == playername then
											table.remove(table_, index)
										end
									end
								end
								if menu:GetVal("Settings", "Player List", "Player Status") == 2 then
									if not table.find(menu.friends, selectedPlayer.Name) then
										table.insert(menu.friends, selectedPlayer.Name)
									end
								elseif menu:GetVal("Settings", "Player List", "Player Status") == 3 then
									if not table.find(menu.priority, selectedPlayer.Name) then
										table.insert(menu.priority, selectedPlayer.Name)
									end
								end
								WriteRelations()
							else
								menu.options["Settings"]["Player List"]["Player Status"][1] = 1
								menu.options["Settings"]["Player List"]["Player Status"][4][1].Text = "None"
							end

							updateplist()

							if plist[1] ~= nil then
								if oldslectedplayer ~= selectedPlayer then
									setplistinfo(selectedPlayer)
									oldslectedplayer = selectedPlayer
								end
							else
								setplistinfo(nil)
							end
						end
					end
				end)

				menu.connections.renderstepped2 = game.RunService.RenderStepped:Connect(function()
					if menu.open then
						if menu.tabnames[menu.activetab] == "Settings" then
							if plist[1] ~= nil then
								setplistinfo(selectedPlayer, true)
							end
						end
					end
				end)

				menu.connections.playerjoined = Players.PlayerAdded:Connect(function(player)
					updateplist()
					if plist[1] ~= nil then
						setplistinfo(selectedPlayer)
					else
						setplistinfo(nil)
					end
				end)

				menu.connections.playerleft = Players.PlayerRemoving:Connect(function(player)
					updateplist()
					ragebot.repupdates[player] = nil
				end)
			end
		end --!SECTION PF END
	end
end

do
	local wm = menu.watermark
	wm.textString = " | " .. BBOT.username .. " | " .. os.date("%b. %d, %Y")
	wm.pos = Vector2.new(50, 9)
	wm.text = {}
	local fulltext = menu.options["Settings"]["Cheat Settings"]["MenuName"][1] .. wm.textString
	wm.width = #fulltext * 7 + 10
	wm.height = 19
	wm.rect = {}

	Draw:FilledRect(
		false,
		wm.pos.x,
		wm.pos.y + 1,
		wm.width,
		2,
		{ menu.mc[1] - 40, menu.mc[2] - 40, menu.mc[3] - 40, 255 },
		wm.rect
	)
	Draw:FilledRect(false, wm.pos.x, wm.pos.y, wm.width, 2, { menu.mc[1], menu.mc[2], menu.mc[3], 255 }, wm.rect)
	Draw:FilledRect(false, wm.pos.x, wm.pos.y + 3, wm.width, wm.height - 5, { 50, 50, 50, 255 }, wm.rect)
	for i = 0, wm.height - 4 do
		Draw:FilledRect(
			false,
			wm.pos.x,
			wm.pos.y + 3 + i,
			wm.width,
			1,
			{ 50 - i * 1.7, 50 - i * 1.7, 50 - i * 1.7, 255 },
			wm.rect
		)
	end
	Draw:OutlinedRect(false, wm.pos.x, wm.pos.y, wm.width, wm.height, { 0, 0, 0, 255 }, wm.rect)
	Draw:OutlinedRect(false, wm.pos.x - 1, wm.pos.y - 1, wm.width + 2, wm.height + 2, { 0, 0, 0, 255 * 0.4 }, wm.rect)
	Draw:OutlinedText(
		fulltext,
		2,
		false,
		wm.pos.x + 5,
		wm.pos.y + 3,
		13,
		false,
		{ 255, 255, 255, 255 },
		{ 0, 0, 0, 255 },
		wm.text
	)
end

--ANCHOR watermak
for k, v in pairs(menu.watermark.rect) do
	v.Visible = true
end
menu.watermark.text[1].Visible = true

local textbox = menu.options["Settings"]["Configuration"]["ConfigName"]
local relconfigs = GetConfigs()
textbox[1] = relconfigs[menu.options["Settings"]["Configuration"]["Configs"][1]]
textbox[4].Text = textbox[1]

menu.load_time = math.floor((tick() - loadstart) * 1000)
CreateNotification(string.format("Done loading the " .. menu.game .. " cheat. (%d ms)", menu.load_time))
CreateNotification("Press DELETE to open and close the menu!")
CreateThread(function()
	local x = loadingthing.Position.x
	for i = 1, 20 do
		loadingthing.Transparency = 1-i/20
		loadingthing.Position -= Vector2.new(x/10, 0)
		wait()
	end
	loadingthing.Visible = false -- i do it this way because otherwise it would fuck up the Draw:UnRender function, it doesnt cause any lag sooooo
end)
if not menu.open then
	menu.fading = true
	menu.fadestart = tick()
end

menu.Initialize = nil
_G.CreateNotification = CreateNotification