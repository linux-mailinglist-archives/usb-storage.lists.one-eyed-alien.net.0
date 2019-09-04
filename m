Return-Path: <usb-storage+bncBAABBHOEX7VQKGQEPG4YBGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id D4119A8660
	for <lists+usb-storage@lfdr.de>; Wed,  4 Sep 2019 18:11:10 +0200 (CEST)
Received: by mail-ot1-x348.google.com with SMTP id x31sf12687155ota.4
        for <lists+usb-storage@lfdr.de>; Wed, 04 Sep 2019 09:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567613469; cv=pass;
        d=google.com; s=arc-20160816;
        b=k8B0FIwc7DSm7BERvyQGKH2szY+9nPChxvdd/PNHdFjbwAqrWaJbxIYo75zUVNo85m
         hyThSBTFMl5I/jy2fCq5sNgWDUgjQjmoRoPMp+9A2hObzFIrUxDRFrEi9tNpbz5REQGe
         z/KCKh2AwqRm1VaCCJy4ngZAOlCRhMRUUcMJgZEu+QatPrOxx/bhv5LQZR79nX5vbYyN
         MIzYI0bDcuseeNjhX43K/J8133u2OZdqZsNzELcOl9qGnslAp4b6XoxSQAUwpSzXbEDT
         KgODJeQ7UIrsUBTtV83KZ8b2XTj8pqXqBnjM5oGyOfxgNzw/oHFlWuCNsdEWM3Brk1S9
         2qrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=CCSjtViNgTm3x88TYwgbylBBoSfk74VXJcaHRqp9uVQ=;
        b=RCruHaNJSf+I4yR3jEFGRCdGhwf0xJjK4rTkysCnpheFDmI2mCBrgX4ZTCHazvuftC
         C8qLQPe6XEmgLNIFSnnf77SJ7pID61YRTU0+0b7sThrkdP8Z/TkjtMmB7GZDTtBQqvV1
         Th8MdXFOwNAia2T5o/LiaPCNTXaU+dc7YacrBEeGe4TJ7Q5anL+OAk4XoFNeH4bvRNVp
         XV7k5RHwcX3FRvbyBTy5CGCDPyzJx2Sy7DrERkN1f2B0G3X+q+DbUjP2Lt0++HXbI6L0
         cmSaIIol/og98Q04IIs5qP87KcQyQYv9Lh/7SZ1b+5pxEVADVaKw9ZKnaIErALtpBaEx
         Yy4Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qaQbLSu3;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CCSjtViNgTm3x88TYwgbylBBoSfk74VXJcaHRqp9uVQ=;
        b=LXsXFTGpmSLK8bXlI+1/jdhEIlm1SjObka/FjcQziSBC9jv7Va34V+jZrjLXIY7NI5
         9688r/r34kBGt1pqr+01VH0OpnaAhiXu9I7RA6iNRmXR3WVBqdP9bmF72p7pEuME7gqf
         tVUX2NiTdhZhIfPZBc0NmN5CdJ5dw/t0aZHlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CCSjtViNgTm3x88TYwgbylBBoSfk74VXJcaHRqp9uVQ=;
        b=FGt8abWJ+8to3GrPBCs8msNCVRphnn/0DwIAnbk15EMMPKz7D8WFx48XWt9Fsndi+y
         PMQwFw6TVI3+bYjCSbk7L8oWUGc0HHKW2CjY0W32EgxeDvH/MCCALvq7OvrMImbckkqr
         usFcOMRZd4HGEGwBo4a6AStVIgyQyCbT70XxpSuj4reORSQQmr2dEraatvebo8Up1TfL
         4h8tdigseISdLQ4sb82UFJ5re1DoPk1PlO9CloBgvVivoyXReeqqNsJz3lRRFkum/fpu
         L1Ei3OuqlNzeBdLcVQ//x25vF3Yq6XbQd+NTh9ilQ30E2H9oMLYa+IipCflPXwXbdxqM
         0kRQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWFT6Sk6TbL0gKUcTgSrzVxMMQm7HeAU71k+JMXuh+H9Mooijgb
	ZMoLjgiXFQG6bMxVpQSCfJ2rTg==
X-Google-Smtp-Source: APXvYqwQcutoFYpJdFaP1F6XRdtM7L14qHr4FfaQBIyP6jX6Ma+XfbjhmFF16Gu7iPayxEvA6xO0GQ==
X-Received: by 2002:aca:aad4:: with SMTP id t203mr4034019oie.75.1567613469495;
        Wed, 04 Sep 2019 09:11:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:c615:: with SMTP id w21ls2508065oif.15.gmail; Wed, 04
 Sep 2019 09:11:09 -0700 (PDT)
X-Received: by 2002:aca:f481:: with SMTP id s123mr3975413oih.109.1567613469057;
        Wed, 04 Sep 2019 09:11:09 -0700 (PDT)
Received: by 2002:aca:1116:0:0:0:0:0 with SMTP id 22msoir;
        Wed, 4 Sep 2019 01:46:52 -0700 (PDT)
X-Received: by 2002:a17:902:aa91:: with SMTP id d17mr38164231plr.74.1567586812204;
        Wed, 04 Sep 2019 01:46:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567586812; cv=none;
        d=google.com; s=arc-20160816;
        b=QmTgWwMsu0mZtST58zrbgR0hrDiTULtU1LLsnzdypsqLT0zv2i2GCsyR/fL5mxqa+U
         eHLsbhcil5mu50y1MRBs+Q0L7iEHHJwxR1mvjhAM2ufVpOOijGFrXvdUYBWOAwPvs176
         cAmopVM6EXDGMyBDBkRBcWwSIjd0l0vFCfpk/wbKcd04GAEFG9QpWlq9lBrjtWZEmqOd
         qEk7keshGmjKlrlL0WiCH0OzNoxwH65YVWidDbGk0Czk5dWtGwD16yKHzMc1IV4RFrfq
         07RbUwylhw7SCbWZMMo/DOvj4WtZt1xbj6fhLAXNiarX6bsDC+I16ShmpVQ1aKIRviM7
         S9Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=rl11GH89ZlbuZX4guUp4Pw5JS7QAnPdbjduMTKste4M=;
        b=Jou8TITXmIAwM2zOC2iYxE1Rc26Sb/3udZy3c8SZ6w4TPi/IvyGyVrQzn43m8I+3Ef
         DBb6axrS6BjXECWdTZtghbV/+h30/9uX9nRgGZY4ne01ggnXNFGErTKhc/fKeINOrRPJ
         T81cw8RcTI8dR3Y3/JV7wTe4JCQPKYXqqjBiatMTv+J76tw27ELHGD/Tp1KTz7A8g7yS
         5N+1gZ5ZvGKMhxb2FxZI6/mMugiMYSSryhyqQuqO27e3DpOI+KI9AxdXy1GIF84u2OhC
         d6jeJf9v5b9CxW1WW7EYxoQbuAC0wc3REtrHZknJ0gAN23/97FMyQbvmox0V2WsB2sJA
         LKug==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qaQbLSu3;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by mx.google.com with ESMTPS id x139si16903114pgx.251.2019.09.04.01.46.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Sep 2019 01:46:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id x848kMl6025542
	for <usb-storage@lists.one-eyed-alien.net>; Wed, 4 Sep 2019 17:46:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x848kMl6025542
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id y62so13233017vsb.6
        for <usb-storage@lists.one-eyed-alien.net>; Wed, 04 Sep 2019 01:46:23 -0700 (PDT)
X-Received: by 2002:a67:e9cc:: with SMTP id q12mr11685253vso.181.1567586782082;
 Wed, 04 Sep 2019 01:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com> <20190903161045.GA22754@roeck-us.net>
In-Reply-To: <20190903161045.GA22754@roeck-us.net>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 4 Sep 2019 17:45:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
Message-ID: <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH v4 12/12] RFC: watchdog: export core symbols
 in WATCHDOG_CORE namespace
To: Guenter Roeck <linux@roeck-us.net>
Cc: Matthias Maennich <maennich@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "Cc: Android Kernel" <kernel-team@android.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jessica Yu <jeyu@kernel.org>,
        "Joel Fernandes (Google)" <joel@joelfernandes.org>,
        Lucas De Marchi <lucas.de.marchi@gmail.com>, maco@android.com,
        sspatil@google.com, Will Deacon <will@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-modules@vger.kernel.org, linux-usb <linux-usb@vger.kernel.org>,
        usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qaQbLSu3;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Sep 4, 2019 at 1:10 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Tue, Sep 03, 2019 at 04:06:38PM +0100, Matthias Maennich wrote:
> > Modules using symbols from the WATCHDOG_CORE namespace are required to
> > explicitly import the namespace. This patch was generated with the
> > following steps and serves as a reference to use the symbol namespace
> > feature:
> >
> >  1) Use EXPORT_SYMBOL_NS* macros instead of EXPORT_SYMBOL* for symbols
> >     in watchdog_core.c
> >  2) make  (see warnings during modpost about missing imports)
> >  3) make nsdeps
> >
> > I used 'allmodconfig' for the above steps to ensure all occurrences are
> > patched.
> >
> > Defining DEFAULT_SYMBOL_NAMESPACE in the Makefile is not trivial in this
> > case as not only watchdog_core is defined in drivers/watchdog/Makefile.
> > Hence this patch uses the variant of using the EXPORT_SYMBOL_NS* macros
> > to export into a different namespace.
> >
> > An alternative to this patch would be a single definition line before
> > any use of EXPORT_SYMBOL*:
> >  #define DEFAULT_SYMBOL_NAMESPACE WATCHDOG_CORE
> >
> > This patch serves as a reference on how to use the symbol namespaces.
> >
> > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Matthias Maennich <maennich@google.com>
>
> As mentioned before, I am opposed to this set of changes. I don't see
> the point of restricting the use of exported symbols in WATCHDOG_CORE.
>
> Guenter


I agree.

I do not like this patch set either.

Anyway, the last two patches (usb-stroage, watchdog)
are useful to demonstrate
that this has a bad taste.


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3%2BhuD25EUkrttA%40mail.gmail.com.
