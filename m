Return-Path: <usb-storage+bncBDTI55WH24IRB37BYPVQKGQE7KSNGXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 2373FAA149
	for <lists+usb-storage@lfdr.de>; Thu,  5 Sep 2019 13:26:41 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id u1sf1150453pgr.13
        for <lists+usb-storage@lfdr.de>; Thu, 05 Sep 2019 04:26:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567682799; cv=pass;
        d=google.com; s=arc-20160816;
        b=T9Gtxo5Q6YDG0K5FAdz7P7m2udnQspZhqmoPLDE3T9QsiA3/e33oag8WlA2wqxkhP/
         pk7v8E4eXCJgxYsS+2GyEKFZmk2/4BEZAjV/Ys+yaLo/jA8Gm+X6EPSJWRIWGOzvSBy5
         MulheQ1zS1EzxXoJjv3S3qlD8XRmmvCSWN4u8dGEEFGeRbek7+LyBrSXRNKlCHmDdSHU
         TuLg6kE8b1xod6Bc92Ox+kYmiAWXP4cGBYZxM5l+NRiEiNauijEaiky4bRzFS9kjTxlK
         Hy4KI6q3bw4UL697BF2dpQVSXDsg8ai0P5lN041HMQa1yrILlfXzPPiVehLrRUP29GcC
         itSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=mdAHrm1tBPaWF0XO5H8G0UaFbaNEZSu7pEes+c8wWfk=;
        b=HfiB3f9SJ6otS2b3Q+JetADGNm2uI/uJH3ehEBpBpjCZIaBjoCe12Ysdf5KS0yiGd1
         FhDCghFAfJc9JCVy4KGm06ie5BDeybUo/XkxzL+oPWxzm7NPY8kqZ9dx2H9ixxDcTUHv
         Iqqx+8PNwhHT/5XwoCFt6twEPpe6TmQq/1C438KRXqZf2tG2n6rHMkugiep78BIxxhEC
         jjWJR1N2/F4gtPHO+5Z6dM1CFj5wcdpDzAmCvvMOp7aM6PYfZbkuN+6FXK+VMrGBnJc6
         zgrjsxcnhelOcS/IDwhjtiVGJ/90zz6aVyZVdaxwF0ostBsVm+bvLCFuRBfEB/TXTJy7
         8pzQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iCjY2UfL;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mdAHrm1tBPaWF0XO5H8G0UaFbaNEZSu7pEes+c8wWfk=;
        b=GW43v/O7y9Wsv+h3JOCV1CJGsTcC0KWb02vzUU6QuYkXIDlA5VkcQgk85ZyegcUEOR
         FjZ1q7m/OYTvbRQKFak/lbJG8e2v9max3pBWPj9/m0gzJnY6EcaBb2eHfVaMy8QzkiDD
         x4uSEON90D44SPt9cjV8SMkblDz17fsePovec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mdAHrm1tBPaWF0XO5H8G0UaFbaNEZSu7pEes+c8wWfk=;
        b=M4mLmHHhPcRZVhpeYukVqPrGF8mO2kWW/diQ54qbx8gOolLITZj80cELsW2oxxoIAh
         LAEas1QjOsKn8e/V8VCNwX5w5tiEWTgiWhIrcLj1GsJdi54w68DD9aiuNg41shqfXbeH
         zSXWbW+EE0QM3K1NxFge9ct3TQ4SmCg0BSFhmE++h8iXd7vFkLsZaUIkGQbFF3nRQssP
         4bJ8o9dlmTSol4yJgyTia2sgY8uB7AOmCOs0KT6vMW9BVQ4F1sXfBAQRgQH4BfO7tQVG
         Kfsj7X7HI7qECjzQ4h1vBHM2MDSH3LMr0x/H6ZYFd74sT++OkJgqav7oaXf4XUDJUVyH
         VJfw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU1Bhyq2qMWS+R1DvgruGIyAVk/PDBVmLuTkDvwzIRwMpUh3CVG
	iaYbRkxnyVivCeLiokXF83dXxA==
X-Google-Smtp-Source: APXvYqx0ANqqFSNm5FxrSSh6uGyN/Gu0Gf/Pn5f6XAmEQoFjrGuuDqxhcy6ljWpLNkhohKhQVraRWA==
X-Received: by 2002:a17:902:b18f:: with SMTP id s15mr2737561plr.181.1567682799616;
        Thu, 05 Sep 2019 04:26:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:2a06:: with SMTP id q6ls585003pfq.14.gmail; Thu, 05 Sep
 2019 04:26:39 -0700 (PDT)
X-Received: by 2002:aa7:9112:: with SMTP id 18mr3150912pfh.127.1567682799262;
        Thu, 05 Sep 2019 04:26:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567682799; cv=none;
        d=google.com; s=arc-20160816;
        b=qZz2eVCSzOL8L81itfiDL2z9hBe85sl/4koS2jY5rTnViZmOZD+3dP6D6MKiERESxG
         R1kEhn9i3Es6874bnsGPUVbIHQG3x+tUDryH6/PUbOq/nb5GsZ/P47QZphrKovLVX/LG
         hcGf2ey1R+MiQDUFmbwhD5x95eDgi3ZrE0CwuXYa/UZ2+IJbwD8KaPBx5oust5PH+TTT
         EDTCI9tNqy6JAXkywAqX0jUcB4XUEbo4l0lJjdU++QiWYlPU63LZesbICMcMRXrGRzZF
         WyWTCyFM+KRyPwYoFG+FLjWEXRBhRHGsXyc28gbrmxNESwmjNRL0tMey2q9+gPPzW9gU
         +I2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=eYLn272Sy9fhUXrERxsg5RcSmedtHOfjBVG9VJ4bb5Y=;
        b=HH/qVPfim6hG5dUxy2w6VY6Mg6/R5MoYt1WhXP/RSvGSi9V1u6Xhupb7Y4tQuvhlH6
         dVmf0oqGvm5XsDzWls/rqoA9EtK8HoWy/eyvuMfsjotggfb/Xuv7odaYQKxdFpxBEf+K
         RzPkmV9CbS0aggqd99ytkvHSHP53N1r3hK+AK18LzGZikwIWIXkNEXewleOk62OYv+pT
         mWBUH3M9eX3E2+KHGzPnp+CAaTpaxJQDLjH9sJQbYtjpKgNSRCXYzLIsOYS+U8p/BbDP
         TzVd9mwaxubWeyJq39m46JuKpeEGBs4bjVZg97opJflES7l+lvAlNLsfIkPRUVhTAbDT
         S1EQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iCjY2UfL;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by mx.google.com with ESMTPS id t35si1551301pgm.8.2019.09.05.04.26.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 04:26:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id x85BQ8Ba025071
	for <usb-storage@lists.one-eyed-alien.net>; Thu, 5 Sep 2019 20:26:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x85BQ8Ba025071
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id y62so1306051vsb.6
        for <usb-storage@lists.one-eyed-alien.net>; Thu, 05 Sep 2019 04:26:09 -0700 (PDT)
X-Received: by 2002:a67:e9cc:: with SMTP id q12mr1416862vso.181.1567682768019;
 Thu, 05 Sep 2019 04:26:08 -0700 (PDT)
MIME-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com> <20190903161045.GA22754@roeck-us.net>
 <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
 <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net> <CAA6KcBBeP9xYbVws4=RMFNA4kyrodE-R3mifhbkee-Q+jFRcoQ@mail.gmail.com>
 <20190905104147.GA27788@linux-8ccs> <CAK8P3a0rf0PhXK1RdF1mWTyGggBJeH0h0YOCxDvJFgxu8wmWKw@mail.gmail.com>
 <20190905111617.GB27788@linux-8ccs>
In-Reply-To: <20190905111617.GB27788@linux-8ccs>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 5 Sep 2019 20:25:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNATBWCTJ-FXydob5FUYMymsqCxhenBynb2_NfJdSC2yGDQ@mail.gmail.com>
Message-ID: <CAK7LNATBWCTJ-FXydob5FUYMymsqCxhenBynb2_NfJdSC2yGDQ@mail.gmail.com>
Subject: Re: [usb-storage] Re: [PATCH v4 12/12] RFC: watchdog: export core
 symbols in WATCHDOG_CORE namespace
To: Jessica Yu <jeyu@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
        Matthew Dharm <mdharm-usb@one-eyed-alien.net>,
        Guenter Roeck <linux@roeck-us.net>,
        Matthias Maennich <maennich@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "Cc: Android Kernel" <kernel-team@android.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Joel Fernandes (Google)" <joel@joelfernandes.org>,
        Lucas De Marchi <lucas.de.marchi@gmail.com>,
        Martijn Coenen <maco@android.com>, Sandeep Patil <sspatil@google.com>,
        Will Deacon <will@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-modules@vger.kernel.org, linux-usb <linux-usb@vger.kernel.org>,
        USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>,
        LINUXWATCHDOG <linux-watchdog@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=iCjY2UfL;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Thu, Sep 5, 2019 at 8:16 PM Jessica Yu <jeyu@kernel.org> wrote:
>
> +++ Arnd Bergmann [05/09/19 12:52 +0200]:
> >On Thu, Sep 5, 2019 at 12:41 PM Jessica Yu <jeyu@kernel.org> wrote:
> >> +++ Matthew Dharm [04/09/19 09:16 -0700]:
> >> >On Wed, Sep 4, 2019 at 5:12 AM Guenter Roeck <linux@roeck-us.net> wrote:
> >
> >> >HOWEVER, I have one question:  If these patches are included, and
> >> >someone wants to introduce a bit of code which needs to use two
> >> >symbols from different namespaces but with the same name, can that be
> >> >done?  That is, if driver A has symbol 'foo' and driver B has symbol
> >> >'foo' (both in their respective namespaces), and driver C wants to use
> >> >A.foo and B.foo, can that be supported?
> >>
> >> As of now, we currently don't support this - modpost will warn if a
> >> symbol is exported more than once (across modules + vmlinux), and the
> >> module loader currently assumes exported symbol names are unique.  Do
> >> you have a concrete use case? If there is a strong need for this, I
> >> don't think it'd be too hard to implement.
> >
> >I think what would prevent this from working in general is that having
> >two modules with the same exported symbol in different namespaces
> >won't link if you try to build both modules into the kernel itself.
> >
> >      Arnd
>
> Ah yeah, you are right. I only tried building an identically named
> exported symbol in a module and in the kernel, and there I got away
> with a modpost warning. But this breaks when building the module into
> the kernel, so I guess this is out of the question.
>
> Thanks,
>
> Jessica
>


The cover letter starts with
"As of Linux 5.3-rc7, there are 31207 [1] exported symbols in the kernel".

Whether or not we apply this patch set,
we will have to carefully maintain them
so that 31207 symbols are unique, anyway.
(And, we can do this with allmodconfig + modpost)

So, what is the point of the namespace,
where it does not loosen the scope of uniqueness?



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAK7LNATBWCTJ-FXydob5FUYMymsqCxhenBynb2_NfJdSC2yGDQ%40mail.gmail.com.
