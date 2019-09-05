Return-Path: <usb-storage+bncBCUJ7YGL3QFBB4PRYPVQKGQEGH5HGNQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B97AA24A
	for <lists+usb-storage@lfdr.de>; Thu,  5 Sep 2019 14:00:51 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id e20sf1182300pgt.22
        for <lists+usb-storage@lfdr.de>; Thu, 05 Sep 2019 05:00:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567684850; cv=pass;
        d=google.com; s=arc-20160816;
        b=ohVfgO/ietwbw+wXPrEE3gaZsspIs0YKf8yPE1AnTD6eD6Iq4ehWfFLvC0XLK9mb1d
         omsoMK9E+Ew9gVJj7l9WbqWAAHMTuGZiQ+dCkPlzBurRJy11ZBO/YdlEWVpuHHw4AA2r
         zGWxULIKZ/eGmx1P+syThtzE7L29ytYS/dP43gYWvHXDz3I9nGM0qDoBBVOTE+LBEQyr
         Pd23F/s6v6+W94bTgdbVz2pjeMDIm5syHpx2R1IKRvvjqUrH6mUc7MBOuRgrXXAijph2
         AqVaDzngE8LmsaCjrodiRJGzqpur0NejLzny08eTDcvScNpeoYQA7voMF56E4RleGFVw
         9xfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6Ka57LS8uDZhlQP4cV3XF19ZQrtzzIz450YtbICORfA=;
        b=lQV8ESiUqDKKzKdddFo6V3JD+qnRZCAmXKu32yJsSGEjDFnxSHYIv5jKhYhVxioEpm
         Led2N7gUAo4o/FvjBLEbJfbbSNpAnM46VBD8ms83hJY/zJCBwZjf6fQETvnBE2dBMc+e
         gGc4GZry8FeQ143fk6LTyi76ZPEppGB9cdU/FSC68iZu3b4ESeOXslQAj0pPSRdlhgFy
         UpkT8yaXq2SvT+GPsDUXa5nVdnhZZkaIzSJpg+qjTsjhYpy7TVJKt7g2auBD88yNEmLu
         /8Sq33T06wLo6isBI3QGKjRkMxzZhQlgyxSoP5v4COTyaTslg3hbg/OIdwBH+IVSrjIJ
         ub2w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O7ZKkc1l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Ka57LS8uDZhlQP4cV3XF19ZQrtzzIz450YtbICORfA=;
        b=BqUkYqVe+fPUCpqrNdaunrxcFLU2jEqQ8uRWZwwORtjCnnlhdy8AWsZ9G1V/Ad0ZgT
         laR+r2ufcFMKgZ4Vl5zfmxFh5CLu53Bg1soGX9Wmr1o2EuBvsa5woGHRiUEhMisMm4qH
         kIJlWOyNTHB8Q22Co9VAvzvBLigjhVQLguoWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6Ka57LS8uDZhlQP4cV3XF19ZQrtzzIz450YtbICORfA=;
        b=gqRHTkrRKryO6O+IHdrNKR4MrpzkVBUu4bvAek05+chV5K009ieZkOV7Gyo2JE36iw
         y/f8/KHIBYd0sVRAwjeolEJy/JT6IYxMi/y42IcjK+K8NJR9Uz7olOlswh0aFlNqIejN
         ctYIHv7IakN5OqU+Rhq9YnJeFcyt4G/4WOZcXiodRHOzZkEqnWytyWV2kLlNLbIVtqqV
         1QJgvt6iHxk2qpqn3+MqllWpMXy7GpGkGSK2+T5TE9eWBvJRqmQntsxbmtMd+IR7m+Rx
         ZmyHVlu+84YBoXH6xW57N07GGZBF8UqbIoTT4wRwnHtNIL4OQtclO6GSI0TVDVtkBkAY
         hWfQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWuNuopFaQhB4vvsCwIEFJU2oQueu9CC7wyq3dwKZpf0AlvvV3l
	C//oLrGQqusO2znl12crwVTKRg==
X-Google-Smtp-Source: APXvYqwJHwhvxCW9spy9U5TXMYHalDjpDhQuo1TU07GFvekRiF7Ml3Ejhfoi1Dd/v+FFGr/eGFJarQ==
X-Received: by 2002:a65:62cd:: with SMTP id m13mr2767226pgv.437.1567684850052;
        Thu, 05 Sep 2019 05:00:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:6452:: with SMTP id s18ls486095pgv.2.gmail; Thu, 05 Sep
 2019 05:00:49 -0700 (PDT)
X-Received: by 2002:a62:583:: with SMTP id 125mr3395227pff.69.1567684849460;
        Thu, 05 Sep 2019 05:00:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567684849; cv=none;
        d=google.com; s=arc-20160816;
        b=EfrmGQ55TKbT6CBL6vNFOcn430v2SqYwCkG7NwOwI6fDmopPbI9XO8uPTkL2oFyPcC
         DAIWQ5zbCy+OArfuM1hmNftlqUMIVfcGOQbmt73tQUTqI20CjuewVCiIyS+frfKLYbvA
         5SwMVgSaibn7tp1DNjRBaavnwLiDosyLEh4FmPGQxsn08+usxq8CE1wvDET+G2k/MvKa
         sr2MkgnIyIFGispc0qu1nvZn0RlnHO92GqaiojJ1lcLuCcpclACXwW7O0AXYo7Bw/lop
         9sqjyWCtX70hZOJ9O78967JARnc9rbGZclc4Qan98d9RMMxRGjT75u42gD+QmI9S6jxA
         yNJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DYJ//h0lApQSOi2/pXB0CsCLNPktoPjFaHyRZc0aiAI=;
        b=j9lQVo1yN6uGtx3wR+TVf6lLujmbVJWyrxo/fke7giyqOs49Gw6pUP67EEfsZVluzm
         TPKFGwInjGsAFW2fkK4Unt80y8TOsRTdFOoVc+e08nYXb8fLriXf0d0XvrANQWYMHgnO
         PonBfBb8EXrfXYMxlPjxwIagH+nAI1xLojQKYaUBY23eCUhFkUtmtr/3Hc0fNniAxUrZ
         F4zjjKf2gfdCrflc0XH6+pAIFhEQINUB6JSWF2rlWdz1p/r8FTbe6uoQJeYf4uqSEwt8
         VXhPZ2/tpS6iNGmG6o57ZBHssGmR9crqBb92ojv0yNEYSM6Ux34N8vYB7Vyt0UqM83yV
         E+Og==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O7ZKkc1l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id l89si1934230pjb.36.2019.09.05.05.00.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 05:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A5DD121883;
	Thu,  5 Sep 2019 12:00:48 +0000 (UTC)
Date: Thu, 5 Sep 2019 14:00:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Jessica Yu <jeyu@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Matthew Dharm <mdharm-usb@one-eyed-alien.net>,
	Guenter Roeck <linux@roeck-us.net>,
	Matthias Maennich <maennich@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"Cc: Android Kernel" <kernel-team@android.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Lucas De Marchi <lucas.de.marchi@gmail.com>,
	Martijn Coenen <maco@android.com>,
	Sandeep Patil <sspatil@google.com>, Will Deacon <will@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-modules@vger.kernel.org,
	linux-usb <linux-usb@vger.kernel.org>,
	USB Mass Storage on Linux <usb-storage@lists.one-eyed-alien.net>,
	LINUXWATCHDOG <linux-watchdog@vger.kernel.org>
Subject: Re: [usb-storage] Re: [PATCH v4 12/12] RFC: watchdog: export core
 symbols in WATCHDOG_CORE namespace
Message-ID: <20190905120046.GA7952@kroah.com>
References: <20190903150638.242049-1-maennich@google.com>
 <20190903150638.242049-13-maennich@google.com>
 <20190903161045.GA22754@roeck-us.net>
 <CAK7LNARYqqCSCc0G4FL7_bj80iMoLLJrUJ7B3+huD25EUkrttA@mail.gmail.com>
 <c6ac941c-06a4-e5dc-5cb9-fca7b40d7e9a@roeck-us.net>
 <CAA6KcBBeP9xYbVws4=RMFNA4kyrodE-R3mifhbkee-Q+jFRcoQ@mail.gmail.com>
 <20190905104147.GA27788@linux-8ccs>
 <CAK8P3a0rf0PhXK1RdF1mWTyGggBJeH0h0YOCxDvJFgxu8wmWKw@mail.gmail.com>
 <20190905111617.GB27788@linux-8ccs>
 <CAK7LNATBWCTJ-FXydob5FUYMymsqCxhenBynb2_NfJdSC2yGDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNATBWCTJ-FXydob5FUYMymsqCxhenBynb2_NfJdSC2yGDQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=O7ZKkc1l;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Thu, Sep 05, 2019 at 08:25:32PM +0900, Masahiro Yamada wrote:
> On Thu, Sep 5, 2019 at 8:16 PM Jessica Yu <jeyu@kernel.org> wrote:
> >
> > +++ Arnd Bergmann [05/09/19 12:52 +0200]:
> > >On Thu, Sep 5, 2019 at 12:41 PM Jessica Yu <jeyu@kernel.org> wrote:
> > >> +++ Matthew Dharm [04/09/19 09:16 -0700]:
> > >> >On Wed, Sep 4, 2019 at 5:12 AM Guenter Roeck <linux@roeck-us.net> wrote:
> > >
> > >> >HOWEVER, I have one question:  If these patches are included, and
> > >> >someone wants to introduce a bit of code which needs to use two
> > >> >symbols from different namespaces but with the same name, can that be
> > >> >done?  That is, if driver A has symbol 'foo' and driver B has symbol
> > >> >'foo' (both in their respective namespaces), and driver C wants to use
> > >> >A.foo and B.foo, can that be supported?
> > >>
> > >> As of now, we currently don't support this - modpost will warn if a
> > >> symbol is exported more than once (across modules + vmlinux), and the
> > >> module loader currently assumes exported symbol names are unique.  Do
> > >> you have a concrete use case? If there is a strong need for this, I
> > >> don't think it'd be too hard to implement.
> > >
> > >I think what would prevent this from working in general is that having
> > >two modules with the same exported symbol in different namespaces
> > >won't link if you try to build both modules into the kernel itself.
> > >
> > >      Arnd
> >
> > Ah yeah, you are right. I only tried building an identically named
> > exported symbol in a module and in the kernel, and there I got away
> > with a modpost warning. But this breaks when building the module into
> > the kernel, so I guess this is out of the question.
> >
> > Thanks,
> >
> > Jessica
> >
> 
> 
> The cover letter starts with
> "As of Linux 5.3-rc7, there are 31207 [1] exported symbols in the kernel".
> 
> Whether or not we apply this patch set,
> we will have to carefully maintain them
> so that 31207 symbols are unique, anyway.
> (And, we can do this with allmodconfig + modpost)
> 
> So, what is the point of the namespace,
> where it does not loosen the scope of uniqueness?

It does not "loosen" anything.  The problem is, we have 31207 exported
symbols and no one has any idea how they are "clustered" :)

Ideally we would have separate namespaces where we could "keep" others
from accessing symbols that are required to be global, but we do not
want anyone else to use them.  But we have C, and we need to live with
that.

This is the "next best thing".  This provides a namespace and a marking
by the user of that exported symbol that they really do know what they
are doing.

The USB storage exports are a concrete example of this in this patchset.
Those symbols are to only be used by other USB storage drivers, and they
are marked that way here.

This also gives us the ability to start to actually understand what our
different exported symbols are for.  Right now the USB core exports a
ton of stuff, but who is expected to use what?  Right now any USB driver
can use any of those functions and no one notices.  After this patchset
is merged, I will start to "carve up" the USB exports into different
"namespaces".  One example will be the functions only for use by USB
host controller drivers.  Then if someone submits a new driver that says
"use the USB host controller driver namespace", and that driver is _not_
a USB host controller driver, it's a huge red flag that something really
isn't correct here.

Some other USB functions will probably get marked "USB core only" or
some such thing, and then to use them you have to say you are importing
from the "usb core only" which again, is a huge flag that you are doing
something wrong.

So on it's own, this patchset doesn't do much.  But it gives us the
building blocks on which to start to make sense of those 31000+
different exported symbols.

As an aside, this is something that I know I and others have been
wanting to see happen for 10+ years now, and I'm very happy to see it
show up in a workable form as we have known this is a issue for a very
long time.

Hope this helps explain things better,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190905120046.GA7952%40kroah.com.
