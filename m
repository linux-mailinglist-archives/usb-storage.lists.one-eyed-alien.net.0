Return-Path: <usb-storage+bncBDMYPB44VAFRBCN47HVAKGQEUCAX3VQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id BB60B98F1D
	for <lists+usb-storage@lfdr.de>; Thu, 22 Aug 2019 11:19:05 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id k8sf2900932wrx.19
        for <lists+usb-storage@lfdr.de>; Thu, 22 Aug 2019 02:19:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566465545; cv=pass;
        d=google.com; s=arc-20160816;
        b=iW7Ms4Wqg9Wojlr9fZsRUv/kOsWFzZ7eiwhgU7d/OfqOCaLxZj4oiOYdzfwgPUu4Hw
         lxuilk5vmMKFrtDRIRdu/9fLzhhfh2suTkkgaNbk21OUe75U0SbNpD39gmNKwi+aeQdk
         Cu0xvsDRiTLPWp1PCAGHv0YwHJ4vBq6K9G9C6GR+FxJTeb8tdgH8TE8nXMslUdioEKTR
         6ZPchMyhotnQpfzcck+MJ7bHuLs0n3QnB0fgXiatoAxqGkJYXDt1MXz84pZBwK6S75MW
         xO7ZX+lw4uhWdjhDoyI3vtbAiALR68mygOexOyekS6xReNP9A6p61Rq01XQSrS4dZ24R
         J+xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=mTTK6trHkNAXnyWN6MDQVrGs7RDxxi1OpgSW5y6vUSQ=;
        b=os1I8GnkkbNSiIsVRfDfpRpihOA2m8fUexemqbLlFupHwLK21ZUl6khAgdu8LQ4xu/
         XdJZ/3tLZopCk/y/CWfB3YUZRmJ25qstOjXQEKasAspH3r1u3znLiL6OHLpXxnVhVzpV
         uzqd4aRzr2KK5KESGSkZ+D7qo3Oy61+xj58sAyhS4IKAGdp9PqakLvVYyoDla7TjXtZp
         k9gbU9k7TRnqAJTn8QVoQGSeTONbOYMvlUWYNAdtHqvsgdFYAWRNUo2Si2eVS94/LpXn
         Sr/PAQUKkavSdPXlDAtgW0NeU8nCmHKFUWu75bAZKbKsvhcfJdIibtMa9lXXzihdb4zm
         mW6A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T2pMI6y+;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mTTK6trHkNAXnyWN6MDQVrGs7RDxxi1OpgSW5y6vUSQ=;
        b=ZaBbOXD9pkPffwWSR5TvUmB6NJS5IY+yhdOMwUo6+kT61lD+uEZw64gVR+06VqHBx5
         FntF4a4dexPRW44gbpTfGgWbi1bBWHgC7SKhhOtols2muk2bGdM14sAQGRB33zgkVusX
         g7hocVwnnf0KUYDb0iRp+qz5cQTFdygtofMW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mTTK6trHkNAXnyWN6MDQVrGs7RDxxi1OpgSW5y6vUSQ=;
        b=fn2RrgaZi43uSIUhAK5CgwOJUgR08lhmchgfnCbzbqCxR+umqoJd5FgL2EXwLcltRp
         1HjRUeFEdU4AGDvYyUrHECh7qxP9ws7jMBZUj8Gb1mJ4144XHS9glJnKUB8Nw1gu0xpg
         yafgB4aU+jCRXqfmhIMmfHhcZDndcQCGwtLQAjaz1rqUPb6v54bmPogJrRuBvFhNiCkX
         gVf14R1bn5FZCUKbCRfQDRbgl15JWLiDils7HPVsZNnMYENQvwn/Eut5JulNp9eY+ggP
         TlaAn8dJ+mEkEKWzZayIvA9/hxzYr1AnNtX7HAEEjGzfuSFJdnldmwIaM7TitB1O+23n
         eiYg==
X-Gm-Message-State: APjAAAVRwVKv/jpUGyS1+Y+JMG23kEEES9jZ3UubOZKMe5qmZrWh79/o
	07MiAGAyosS0ZdjOGPgvBT078Q==
X-Google-Smtp-Source: APXvYqzDEE2w7Sgio5YwdMakWxlYLkpiBiDA2KXSa0sxEJ+MP2+qDZOXPhBOBFBDgdH3kAHacfJBGQ==
X-Received: by 2002:a05:600c:34d:: with SMTP id u13mr5241673wmd.48.1566465545359;
        Thu, 22 Aug 2019 02:19:05 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:a557:: with SMTP id o84ls2123467wme.3.gmail; Thu, 22 Aug
 2019 02:19:04 -0700 (PDT)
X-Received: by 2002:a1c:804b:: with SMTP id b72mr5048931wmd.139.1566465544149;
        Thu, 22 Aug 2019 02:19:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566465544; cv=none;
        d=google.com; s=arc-20160816;
        b=UOZhSjYWpb7S+PCv2/HrPX/7aqjAH/ADNNVKgGulO4KARpErAInXuJjGJqOY+KVwBF
         EQrSIgr4IJfYukPWfJIGirc2Sjm/EfFfq1ZBmlkoz9Jsv+Z8FUvyq1matCCmwBEEXk/8
         oWwldrRICX+BzKtegx0oHpUsG5A1ihxjwtE2OKuOzvPZLzD1grL8VURVRQqbrFLosVZj
         05g9uUIWpM4qYWfUrwPrW5THuiRGq7W70OJfxmNOlawVIrRKawGq1mrGPRh7gfpxBpVF
         RpqiP+njJjFTaahHaD2abkeHNT8NdhbkEeGAsFiiq1TO5PEa2sGkMa61945rToryoqto
         sgCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=8fMTG6N2j/TMUB2P1ujx2DtHjddT/TmmdRfnCuZ9XY0=;
        b=QrLRhhoqokn5v1gu9s7TjAVL9XmwNr6zFoRLBsmhxwzi/wLJSHfG1CZXCAsj4iq4qq
         SdvufUXlotPAwY7pu4PsLM3OeI7bSwsW2GQlNCPeUICGPyyOocyvcr4jbsC8Ntrjemfm
         hL/vjgMhQ7s4uWIqduptvJNxyJYkU7AerCTNkVV1RvKaXwyENR9GWyno6ajEkizTCOlv
         roLWZ0XiLSQyTWSfHK1opJg8H7kqyYuwlJ9npptvWk33KTcQsognMmbPnB3rgJMxs5NT
         kDr1I46EEGDTeU+Go6PuoQ2wfTDNvYKK4Op4+tIR8WnJk9fdYGBm5yAZA238D9MNSbyJ
         Tbyg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T2pMI6y+;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t13sor8479109wrq.4.2019.08.22.02.19.04
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 22 Aug 2019 02:19:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a5d:4101:: with SMTP id l1mr4986587wrp.202.1566465543440;
        Thu, 22 Aug 2019 02:19:03 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id 4sm46118162wro.78.2019.08.22.02.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 02:19:02 -0700 (PDT)
Date: Thu, 22 Aug 2019 10:18:58 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <Julia.Lawall@lip6.fr>,
	Martijn Coenen <maco@android.com>, cocci@systeme.lip6.fr,
	kernel-janitors@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	kernel-team@android.com, usb-storage@lists.one-eyed-alien.net,
	x86@kernel.org, Alan Stern <stern@rowland.harvard.edu>,
	Arnd Bergmann <arnd@arndb.de>,
	"David S. Miller" <davem@davemloft.net>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Gilles Muller <Gilles.Muller@lip6.fr>,
	"H. Peter Anvin" <hpa@zytor.com>, Ingo Molnar <mingo@redhat.com>,
	Jessica Yu <jeyu@kernel.org>,
	Joel Fernandes <joel@joelfernandes.org>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Kate Stewart <kstewart@linuxfoundation.org>,
	Lucas De Marchi <lucas.de.marchi@gmail.com>,
	Martijn Coenen <maco@google.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Oliver Neukum <oneukum@suse.com>,
	Philippe Ombredanne <pombredanne@nexb.com>,
	Sam Ravnborg <sam@ravnborg.org>, Sandeep Patil <sspatil@google.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] Re: [v2 08/10] scripts: Coccinelle script for namespace dependencies
Message-ID: <20190822091858.GA60652@google.com>
References: <20190813121733.52480-9-maennich@google.com>
 <1c4420f4-361c-7358-49d9-87d8a51f7920@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1c4420f4-361c-7358-49d9-87d8a51f7920@web.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T2pMI6y+;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

On Thu, Aug 15, 2019 at 03:50:38PM +0200, Markus Elfring wrote:
>> +generate_deps_for_ns() {
>> +    $SPATCH --very-quiet --in-place --sp-file \
>> +	    $srctree/scripts/coccinelle/misc/add_namespace.cocci -D ns=3D$1 $2
>> +}
>
>* Where will the variable =E2=80=9Csrctree=E2=80=9D be set for the file =
=E2=80=9Cscripts/nsdeps=E2=80=9D?
>

$srctree is defined by kbuild in the toplevel Makefile.

>* Would you like to support a separate build directory for desired adjustm=
ents?
>

No, as the purpose of this script is to directly patch the kernel
sources where applicable.

>* How do you think about to check error handling around such commands?
>
>

spatch emits a descriptive message on error. I will add a 'set
-e' to the script so that it aborts on errors.

>> +generate_deps() {
>=E2=80=A6
>> +        for source_file in $mod_source_files; do
>> +            sed '/MODULE_IMPORT_NS/Q' $source_file > ${source_file}.tmp
>=E2=80=A6
>
>I suggest to assign the name for the temporary file to a variable
>which should be used by subsequent commands.

I somehow don't agree that this is an improvement to the code as the
variable would likely be something like ${source_file_tmp}. Sticking to
${source_file}.tmp does express the intent of a temporary file next to
the original source file and the reader of the code does not need to
reason about the value of ${source_file_tmp}.

Cheers,
Matthias

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20190822091858.GA60652%40google.com.
