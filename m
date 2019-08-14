Return-Path: <usb-storage+bncBDZIFAMNOMIJLVGQ5ICRUBEBBF3ZC@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF498D742
	for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 17:34:47 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id e22sf37972997qtp.9
        for <lists+usb-storage@lfdr.de>; Wed, 14 Aug 2019 08:34:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565796886; cv=pass;
        d=google.com; s=arc-20160816;
        b=cvOuWQvF/pE/2IB1yFyk/kJoEJtSib6AVh7YE/TSzLfvPaNHBWMkQtCYf7eqcEyCPN
         Em4ukVB81Rco1d6odLdCvNZaIYy0pJ4TUq0tLWtHCBJTPOad8OjHbKLu8JkAwQ54EvEr
         Y5sDd7/20KUKm6IjXJ1YK3+YvPOFyThto/23FUnrPjauSqts6JB36OLszN2Sgyjsh+uu
         BtD0dp57jscJlsGx4SjZ7ngMJU7aM/5NEenwZT/cluezIVTHkauQ6pPNIURH3lgG0EBp
         HJBeArpRmkwXHRLmvaCsBIgp1skHbsWS2cfMDtMfoIdYlncQ/fwzixY4i/2EoXzaYzZh
         z/bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:openpgp:from
         :subject:references:cc:to:sender:dkim-signature;
        bh=W8IU82OjKEViJEr8auOzegKHLm2+VAyUb2MS0wMKOfA=;
        b=RONEOvkwlxl39qgapBYaWV6X8BUx9QoKvwo8GqGSLrywaOXfHX1qxuTCcWM/3pjqS0
         lLjE4qsnpfP2HEAncGGeCEfvqyvoF3myGq/2qqjZWdSaUdEWbMa/Ukv9VFfW4Gg3xsJ7
         YbJ+s+klALIZFS5MAb+UjNLHuXZe+2sw8ZobWapY7mmsxULfaCU06rqa+aE5BMhoAy5b
         1CSiZH4KMn0IOlxiSfQ0qDhTaZ1EXcEFaDJYytQNJgtvXrN3Uh+dwjhpNBrD9rXhNRL+
         HO1JqZcux4M7ZNefcF+F6vVpVH8XlAV40B6fQ16w+Nbd1FUXS2kZyNuRugSsqRrNY0FB
         0PqQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=MktKRYn0;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:to:cc:references:subject:from:openpgp:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W8IU82OjKEViJEr8auOzegKHLm2+VAyUb2MS0wMKOfA=;
        b=VH9r/dW6S+o9nlUHt/kACBP0IKI7vLpFMKtGzLkKY0TVHIDUdYQH+BwrHFdXtEo81f
         cl15iWmnKa6Vw4NxvKPctGvQEXaM7EhSivcsdyeT0pRcJ4R4JUMnkPMLA3i/kG5frLhB
         S2VzU662reNoRAvsEE58GaAclh9XWXnXu23yE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:subject:from:openpgp
         :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W8IU82OjKEViJEr8auOzegKHLm2+VAyUb2MS0wMKOfA=;
        b=uAc+cVkAgh27+nLQXZUd3TmLJrIUcpVVRNqDJa6zY4qZwwWtOufNrdo05q3siz7wZR
         scQIMGU0ekjkA3fH8bK7WqrzIYviBzVtRznBlEBZM09DB/141701VJmvzUEVS8GfyFVm
         IOWk2oW8KcDeCLnaR5d1+zxI3ZdRhZuUBpHJticvYGBjpzwW7sh71dN/M3B4aszgIDMh
         QkRP1PwkhoBdSuf4diYJuxjK7qAzjVtB9BRirfGovvj+jovnZU6sNIuDqfEK0VMe4Q4j
         pjFrc2mDsRifjqGjyq8kWvbFLy9ZbsIAcW8tj6uSew3IM1wYy7IiZP6WiIo7wqvG1rC2
         ttcw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUyMnRdSzXZi5OsI11PxoCsJYX7FYms3h0QxMYJX66hFoDw7mZL
	uUDc7CXji7GqgmXWiFTbCPc1cA==
X-Google-Smtp-Source: APXvYqx7LPdQCfu/CTBeV/SsBU+S33+CzR0Ylo/o161w9s1vfhukN3Nt5cAs9JRUh8rmOZZF+95HMg==
X-Received: by 2002:a0c:f687:: with SMTP id p7mr227734qvn.160.1565796886118;
        Wed, 14 Aug 2019 08:34:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:94c4:: with SMTP id w187ls547047qkd.6.gmail; Wed, 14 Aug
 2019 08:34:45 -0700 (PDT)
X-Received: by 2002:a37:624b:: with SMTP id w72mr53848qkb.368.1565796885845;
        Wed, 14 Aug 2019 08:34:45 -0700 (PDT)
Received: by 2002:a37:4f86:0:0:0:0:0 with SMTP id d128msqkb;
        Wed, 14 Aug 2019 05:17:32 -0700 (PDT)
X-Received: by 2002:a7b:c933:: with SMTP id h19mr7925183wml.177.1565785052102;
        Wed, 14 Aug 2019 05:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565785052; cv=none;
        d=google.com; s=arc-20160816;
        b=WkjvAQxxwA6ebWJXzY6iLyuC0YEXMrogLQYlrcJ/vx560y4n+q0Vnio/v6JP2aFYIc
         8nTgqUNo9LHVWMw9nHJwJhsNaYG2WdnPA4lhHDC9tqhUN9U69tPbTnBfO+Cf1YLNKmdt
         x83L8eWsYAo24QDHghyYwrMVuH9xlNuERP8M8ouYloZFqrlfHeD2qnwMlq7fsnEW7jen
         bf3eTXVBdKWti6ioCScRt8lel4/6liZThyqJPNo6C6HzZNBhvvhnuBvyL6F5Ys/STugo
         QfOacivLWRpvqm0GVwaN6xFZJcmVuwOJ8xwkrGpFeS2ZXFwbVFioId0bkY6yzVK5y5o0
         R05Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:autocrypt:openpgp:from:subject:references:cc:to
         :dkim-signature;
        bh=t8u6NOCL16q9HtKndJQAxJduq4EJsS4RNVT1zyvjHSM=;
        b=PG5n2w6SnPW+GwnM54qNSQV/cizob/wmk4T4xQ5OQ+1n51d9WfbV5EKDaPPSQTE6SG
         U4K8ffytdt+tGwZw82wASfQlv1QoEkL7gnqAkRzdZJ9QAZygUjYJ7eADgWBLZxxSFMYV
         i1B9qyRTlAo5JtXcbnGwmF7aWLCH8uu9rNuh8aB7UjHn4XObAYfusoYUUe/qX4MQdETy
         zZ9TzCeMoBkelELT0+AcEnBQ+1ZEyAH2WGpSAM0oz3hGAgfB7Sn7b4E3LrYPuOqcgzNX
         w8KH328Dj8vs8nPwvEmw+0iO2BfsJgCBxscnzqUoqIjhIZY+ta7RYi4h+BSY++Oto4Iv
         OvBw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=MktKRYn0;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Received: from mout.web.de (mout.web.de. [212.227.15.4])
        by mx.google.com with ESMTPS id n9si95152187wrp.56.2019.08.14.05.17.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 05:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as permitted sender) client-ip=212.227.15.4;
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.243.124.172]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LlJzS-1iXTM31mS6-00b6JK; Wed, 14
 Aug 2019 14:00:37 +0200
To: Matthias Maennich <maennich@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Julia Lawall <Julia.Lawall@lip6.fr>, Martijn Coenen <maco@android.com>,
 Himanshu Jha <himanshujha199640@gmail.com>, cocci@systeme.lip6.fr,
 kernel-janitors@vger.kernel.org
Cc: linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
 ",linux-kernel"@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel-team@android.com,
 usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Arnd Bergmann <arnd@arndb.de>,
 "David S. Miller" <davem@davemloft.net>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Gilles Muller <Gilles.Muller@lip6.fr>, "H. Peter Anvin" <hpa@zytor.com>,
 Ingo Molnar <mingo@redhat.com>, Jessica Yu <jeyu@kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lucas De Marchi <lucas.de.marchi@gmail.com>, Martijn Coenen
 <maco@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Nicolas Palix <nicolas.palix@imag.fr>, Oliver Neukum <oneukum@suse.com>,
 Philippe Ombredanne <pombredanne@nexb.com>, Sam Ravnborg <sam@ravnborg.org>,
 Sandeep Patil <sspatil@google.com>, Stephen Boyd <sboyd@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>
References: <20190813121733.52480-9-maennich@google.com>
Subject: [usb-storage] Re: [v2 08/10] scripts: Coccinelle script for namespace dependencies
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <d3c852b2-0e41-1a7e-2f98-d8fd23cb8c1a@web.de>
Date: Wed, 14 Aug 2019 14:00:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813121733.52480-9-maennich@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Provags-ID: V03:K1:PV3q8JAG3J44L4VLLpcjx+LJA+d2Q/O26Z4wCk/v79pZUEG7nh9
 m1L6YVDyqKxcYsDEo1kdMI3MgbeX/V+P0Gqzee44AZfe4AL3apOsTv/Vg7xoV69ns+9oPNS
 6nHNXYFSiW5jKwhQ+nlm5MSEFqWf6EALhLHVb8jUJ3nb2NbBpTqWiPRQyg4NQfk+sG9HksF
 PoUwjrb1WNlfH62NRqiKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zfYwEtF5ugw=:TsKzPi2Jit1yCBqK+OJuNm
 cZucpOLF97O9m1aA+RZ77UrG2kme3/NtFwR7lOAaHTBc9ovz3X4VEYki6sas4/jOSH1BMyNif
 zCJvuPFZoPSqSK5XJFHxaynxke5bWJrwAGjR2tr4Pc+cM8WrNM2DBfjKeFNSip53ZSB1JnN45
 AitA062kWjQvItIUcKmNcO3NJbUlNN/2QIglN/udFr5/5CgIu2ob3zeAUe8I7iRaFK3ECPAI5
 9LTnAs3Xa/UcDk+DeySkiwgaq3exVlLs4+Q+e0hK6po+t2cGBqt3y/X91UafknIIcchB6FRlL
 oYDA3FkHFb9YhsJeCXzFHdKlPL+kR6DXnHbhy1ugntPIh7iRPOyX4wKKBlweTWxPvvtshTWEj
 jB1UV0AB2ftZehIgpM7nXec+qmw1CjV5BfTYgkEgObrGGpvS4EdN/GOfWEoLq4Wj1lmqefbtW
 wwk9Ung7pSxvLVhYLIzyF4h6A6zWtITO1ZfnqQROebN4vJQ7vNxXa0dI3sgxWGOScjipjtscG
 Kh4u0XCqJZEiZSkMGwRpiUIHsn2s6QnyDi6BuIxV8dHoZAwr1PA+sXgFu/+x2bztOxZlYeiYF
 qrvHgANSzkZDm5QhSaLiwbs3sym4JvJ81FuEncWzk5Ic6rJINxEIb0VzQ8mmiHb+MjvxYXn7e
 OVIUiiVsVEZHLZU6Vim4rjWMbyl6binmQ6MY+i4uT7uGdC5OfVjbqwWPuv5uEE/oa+wZiSlNr
 +/szIqdeNFN3WZU6VlHbXlVhixUPG3o6sW8NMjpiM/tmTyo90/LOEoPeVNky4iZbBhzHfjhFG
 xMHv1kkkr4rQBlEQOL+AyMbaapUIGOyGDRDT1/w+THkw8IY1GJ4e9C3nTQ+3mDH/Bt25v+/4n
 Wm3pq+2jTN/XJ5ZUO+QGZlv10/BCWnpHBozy8g9m0ti5tf85EMfWTY/fnUPuEgYOGemcZst9O
 /CP+CvfRuThhY2rffqabsccYkzxFShoeTwAJxA3U85mZEyTLOtLkL5vXucNe+17dEjXg0ReE3
 PtJNPbAlNQdaBaaGTfb+ybXEeHmT8zOo64xf+Be0Up3/OCYzpHiHy3CA6wUe+OSECsMPJasNP
 0Wx+hgA2jTYXQIpAmRaBXkwyCVSxmRRSUTzt9Ikc5NrUjDwV5Rf76+I1+5LsdHMxz2hOiDHCa
 dCkEU=
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@web.de header.s=dbaedf251592 header.b=MktKRYn0;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.15.4 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

+# This script requires at least spatch
+# version 1.0.4.

How do you think about to avoid the duplicate specification of this identification?

Regards,
Markus

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d3c852b2-0e41-1a7e-2f98-d8fd23cb8c1a%40web.de.
