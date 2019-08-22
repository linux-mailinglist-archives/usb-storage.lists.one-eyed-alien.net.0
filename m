Return-Path: <usb-storage+bncBDZIFAMNOMILV47Z5ICRUBCOOXEEQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 587DE991E7
	for <lists+usb-storage@lfdr.de>; Thu, 22 Aug 2019 13:17:15 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id c14sf2811302wml.5
        for <lists+usb-storage@lfdr.de>; Thu, 22 Aug 2019 04:17:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566472635; cv=pass;
        d=google.com; s=arc-20160816;
        b=SiRd8SzlnD7uerwwWh/KM5fPykYs3/WvJzvF2DWKrV949QLbq0+liOETmO3X1BvmBj
         gHWB3swbbbWdgzhx0XvNOwocct6Q3hi6W//7uq1Htk1Kae/dIRN/wAZ27pdAeyqvpHFt
         DvL05LaiQqF2Tv7ZHZshjgnSxWcA59HV7i+3zXfIgkwvweNPVvyiCpJ/HZbTqeg6LcJW
         AT37e1VcI6bneflEmHnvmTBBRoLTPIhzOE0coRdLecnD5x6VtBKLC12bZ8M9f3ZyzjCh
         w6U79vbfyNFHp4iSKi4KGhcALayz5TjCP5KEiaCC8L1+Fl4uQtVyIzc2uN74XlRX7+/y
         yyag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:autocrypt:openpgp:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=t2fJMBQDymkvCYKlwVaeIkL3jyd/mN4bCqdnw4mYLLA=;
        b=yDmEVdz56kY09oTnopkUrQdAGnUe2W4ToZMrwmZVI0lYv4S1zNBbroMXO5TKye/P9Z
         tiEQCmwiiJU5c5eIB4C0YvOLkdP6hUNVohHUUvxq5eg8tuoKzUmLCDY6kYnuVXRMIttL
         /Vi1EivjF9wmMpquNJdWkqK7/k/IjeMTvf1GdtgiR6sWUXgDkCKhqjANoECJoexs6I78
         GxuJr3BG5E4O2IIWePuqpT38KyH5sjbpMzppaAVnFuHrF+9YMXm8q/6uPv3CXojN+WAZ
         5PvnCAxtVbhI53R4zvrlCTuQgsZ7e7aQ2ILuIRNtF9t6x8Ouumq3krvdXWa6Q3sJBFf/
         GlFQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=qZql1g8n;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.17.11 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:openpgp:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t2fJMBQDymkvCYKlwVaeIkL3jyd/mN4bCqdnw4mYLLA=;
        b=jlzmnedpnITDUgeiIB93CXHsw8kCr2K0NkIyWs1LxbDYTknY1exPXfjm5eUAsCqyU+
         Q33LYg6y0rASJAoMUkxz7yyl2ITivOS9zWziJROmuobs4ZSqeSCq6t1W7VOIbQfLNIF3
         Qol+XUr5BITmNcoSYu26+wUW7WnDVSId+EtKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:openpgp
         :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t2fJMBQDymkvCYKlwVaeIkL3jyd/mN4bCqdnw4mYLLA=;
        b=jfi7p+3hhZzdjG7kujRdPFNezl9TZllIhlMr2HjIU9ElGqXCKnUSI4OAESMLI5bYsQ
         s2km8Merk7CP3D2vH2m/LflpAtZApVg5Eksyzb8C19ltU5UA1F5fXYfBO8yGOqQmuSBD
         sXDw2jH6Cic5fbG18A3JfFf/+eKvk+iVzMFubnsYTOI0qEed1aEOndPhYmqzFqJ12JNr
         HUIVHgGHCdGWq76ga1TGARUZnDB7E+dSHU+W2mW/hJ7J+Er0okVRBEnofuoCdkJsLt/0
         xrRmvNBl5bTjuXEaL8dmkt8aFEJfsi9aUbSen07YOo+zKVIA/VQ5+OpEgTDc0ihKtkEf
         TC8Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWlR7DLQCJk1AYIfWz9VO3HMuw0IiUiDlRFwGeTHK9gfJB/3H5H
	b2z610BIOrYbB8KNscaDc9r76Q==
X-Google-Smtp-Source: APXvYqzKm79ljgeYh/JUJlKGMxPP8t3F6z5tYi+bj2yu3R3qfGTKY/4QxEUKGOVq/kM3UeKI4IUJpw==
X-Received: by 2002:a05:600c:1087:: with SMTP id e7mr5805846wmd.19.1566472635027;
        Thu, 22 Aug 2019 04:17:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:464a:: with SMTP id j10ls1513743wrs.11.gmail; Thu, 22
 Aug 2019 04:17:14 -0700 (PDT)
X-Received: by 2002:adf:de02:: with SMTP id b2mr46625005wrm.204.1566472634241;
        Thu, 22 Aug 2019 04:17:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566472634; cv=none;
        d=google.com; s=arc-20160816;
        b=G0tpr+z3KdTWAEef2zpSlFiI+zRiM+B5C5zy7N93pmmtNvpPvKGI3UlUJlWj4uZzjt
         vhlR8ZAKSz7cT9cNQXlqCyCumnMIX3IyjE89LK+xT2RKUHe/MjkQtUo9NllO+NJNhkos
         mDWukk54QHBPwQ//FBBKc2xyXRpClPUWOdcnIabctt3iaR8Fw5rushG8oV3Nu1qJXgWQ
         jdt/Qov2Wmm0Xgz6t792aAHletZIRYHLl+V93VooIsxNbi8lMC/xxjdw90uzpxKi5afu
         /Gr+vXcm/Ds7+F2SWZFoJgkzkuap9yMM8YBNdGfC3HS4DmlkK3xcie5r6g4n4zmipHsD
         O/Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject:dkim-signature;
        bh=fSi6cWFaSQ0x6nDQUYLY6OAW6AFAxeqc6jMqBG94KAY=;
        b=VuAWAD7HA51qtq95c9nhPrYwPSmZ96UJqWHiNwgjEukz6DD2Muv8gtol85PZlOVm0H
         10h7VUIllbkqbLrCytHQgSMoRwpILXX26QaSJrFel3JTDbKQgbJ3/Nx9tYlqLSSwg0rT
         RVH9z2s3IeyUs0D60mIfTZtVct2rVXycvWsTnH40wwwZ54zNs22XOE2zcSt0Yhn0ErL9
         D3fCUIegoxbtEziiIT1COLvjqRTfL92sgW/Y85mkHJ87Vu1Px15EqX/9Sv81YNwYLIH6
         sUtGoGNtbLkql/Adu54YV4QXILjA4GBW6tzltKSsDkn+/YyeslCvGRBwj1vLjrCI/Q7u
         v6aA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=qZql1g8n;
       spf=pass (google.com: domain of markus.elfring@web.de designates 212.227.17.11 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Received: from mout.web.de (mout.web.de. [212.227.17.11])
        by mx.google.com with ESMTPS id g19si14121614wrh.447.2019.08.22.04.17.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Aug 2019 04:17:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 212.227.17.11 as permitted sender) client-ip=212.227.17.11;
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.181.43]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MPHC8-1hwKzD1yPQ-004WnY; Thu, 22
 Aug 2019 13:01:07 +0200
Subject: [usb-storage] Re: [v2 08/10] scripts: Coccinelle script for namespace dependencies
To: Matthias Maennich <maennich@google.com>, cocci@systeme.lip6.fr,
 kernel-janitors@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Julia Lawall <Julia.Lawall@lip6.fr>, Martijn Coenen <maco@android.com>,
 linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
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
 Sandeep Patil <sspatil@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
References: <20190813121733.52480-9-maennich@google.com>
 <1c4420f4-361c-7358-49d9-87d8a51f7920@web.de>
 <20190822091858.GA60652@google.com>
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <796bc082-7708-172e-df1e-13447ef6b577@web.de>
Date: Thu, 22 Aug 2019 13:00:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822091858.GA60652@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:JF8q7yHwaG8Z/LvlfWxM/FJGlvOsYVq48Xk2voGAeER7agkzXmb
 imUiCrA8SoJqG6lD+KXHmQQKTw1GktilOhqtGreGUxKxzYyC03AljSfnHpdlTynBYLtUqpd
 K0DilrlWUwXIexw8YWofh9dK1jOucDo6ogWAJfPGY5jSamTVsZbRvLDnBC7Nifkks9buQo2
 lRkBFMrL6oexvkaeouILg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n68WCjCE8ew=:pj+djyCsPzv8sxfVDvJrV/
 d7ShRHnyIQ4PkM/gy7gw9aVOjJNOoQV6TQdCUvIbNp4JeNNoQZFKAU7v7T6pVJqE82BYAyTBH
 CXgyftOtPx3MKzkdG09L2GnGv1YwS+4qv126IwDG4Tx0H0dGOvBDY3fcZy6kYHr4U5h8VD9QY
 4sOsSVuDfMim/kiG664x534vkqRa5BaQNuZGHhowKb1C/6HP73/G/oD8tLWmN/8xvyegZ0D2C
 Ur17Gjd2cqhxbqw/KnX4s4aiMiPihy0aZSslWm608X8sb2LiWyM4bfmPz0/3hEij6/Y2lGxME
 D/+hkAq4ReUbsH9eLIxOkm1cpk5ZgD0s3PiC4zgqnsYRd889Myhs2lsAPsngPU+ZXzK9hpzXp
 0Zzz5JtM/RDIs6uiSGQsiCz3Cy0grdWjPOyknEK024e1KC0Yc8fXPrhgSjW6EVcW6wCoIdfxo
 0UfMLYG+2qOFGb5S8MvK4Qf2CH7Aqr1Vtna8cSC0dYwIhtyFjOrCRiDw4t1iQol7Hnx1TkLQd
 WKWFkfi3oS6nRrBHLcEJ0rM45avTfSiIaXXiaM2qzjUh4f6DPfNmmO8xwMjxhHFtGsxzcWkhk
 RFS7UHsh14ug8Z06birUfupCtsf116ej7zzBMnPjeIA+3Ub0mwhIIKFGaJZaNrfzAb87tanir
 nNQDOUm1NEjhcNi7oA0phfGQYxU1OeiOZUY10duXUgqLn5JlpK+AXcw4Nd0pMoqZugQ0vbJKB
 n53oM6RM4b8tgiXcUrm3cXEoCY58EGHu1NyQXPhimcPcyCcAr5C1qoUvaXs692RHy9P0Df2vv
 V0yhN0hbzCsRU46q8IzIk6iN8c5F10hvPm3UkEleDb5ymi4u+yE8MesC+Mrr3kzfhqcMmBrEM
 6tm8e9I/dCISUBy1A/W7L1Sig9oYimC3zBoSD3YOGPbbEj7MmZB4DWQeyhJmJFkHsaIpY/5Ox
 Vx+b8DWE2oibTncRwf5lvpwazsR201wpTI42xZmN+PKxavdUzZfuEM9IaPZrNv1RAgR3P4TD2
 f14tr1T7tRh9KCpdJJQZp96+ydteF/EQQLpXVzPg+Dvy/rRfIpzs40ESl6k5VDRbbYsxEtvo8
 mXtkm1sslCIF+R0cb5veDCXhW/7daZwR7j9OVVtVghpu4WVrFy9Vk9wxtsbNKTQSjA+6NxW99
 XqqG6wxp1pABcXWSVQsTdbDNAoeN+qBNn5vU1ovfjn4Ybg6Q==
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@web.de header.s=dbaedf251592 header.b=qZql1g8n;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 212.227.17.11 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

> $srctree is defined by kbuild in the toplevel Makefile.

How is this variable passed to the file =E2=80=9Cscripts/nsdeps=E2=80=9D?


>> * Would you like to support a separate build directory for desired adjus=
tments?
>
> No, as the purpose of this script is to directly patch the kernel
> sources where applicable.

Will there occasionally be a need to provide a generated patch
(without in-place file modification)?


>> I suggest to assign the name for the temporary file to a variable
>> which should be used by subsequent commands.
>
> I somehow don't agree that this is an improvement to the code as the
> variable would likely be something like ${source_file_tmp}.

Would you dare to choose a shorter variable name?


> ${source_file}.tmp does express the intent of a temporary file next to
> the original source file and the reader of the code does not need to
> reason about the value of ${source_file_tmp}.

I would find a code variant with less suffix repetition nicer.

Regards,
Markus

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/796bc082-7708-172e-df1e-13447ef6b577=
%40web.de.
