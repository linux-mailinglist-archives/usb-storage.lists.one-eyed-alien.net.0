Return-Path: <usb-storage+bncBDMYPB44VAFRBQ466XVAKGQEOJXVZBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A1797BF6
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 16:03:47 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id m26sf885227wmc.3
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 07:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566396227; cv=pass;
        d=google.com; s=arc-20160816;
        b=vlFZztxvi4NYylXRKoAq+HI3C+GQjU1gDRtsMIcYTigN2Ejf403GMk374P8iungU5F
         ye871AirevQiPjkfs5SvhajLPZjcMWiQmx4tKimSQp/rVZxwjwq068ZpBrTWAEPB7CZG
         abp7GXZah0pKGqRHmXwzL6OhUAYNfyLJGSQVhEw0/03PKuuNrbqbIkZEEmXCDiqIAgFR
         pcS8SIihhMzEfQA9sbOnQCS4EtMlJRX2aAhuttaWxPgN2vkq2XXwNUOaNN6gNZkByC8v
         c86tzMjgbKjjm3M5OfAUafrQS230GVo1T1PdRrUQdDBIjkDB8SQ6paDJ+JCtEtN5iFZM
         uJDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qQrzxkp9quVZ8HxBTXHywNX7XFcOZXYbGnXsnqXrubA=;
        b=IA3y6Dv6rhLTq+Ca+aRhrPYCGhhrjBSny5laXy8o1cvsV/0VJBVIVRMavvYAokkeld
         oJ10ofSBN4VXWn2/4tPhqB82EQsmEG1G4T2AYOwrJB/FJQP75WKeMVWSu7XkNZgqbaMY
         LX4ujTEUPKrGgbSh4uKIGwXFLjStDlASzpeOReVEiMb74n164folQ0p4NOARvrdT7iSq
         WgY2lFnSrsFCvo5uJEnby20kKIrel4V2ejcMG2/N6iyrrg8PEFtYykIJHS4f4Qxfb/nS
         u5UpckUgdO2/IEfRtx/45OIXCB+KUQDnnM/eLBhdxZv2SfLXNfFmnIf0Xy+KjOc775U5
         tNng==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MidKkLyv;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qQrzxkp9quVZ8HxBTXHywNX7XFcOZXYbGnXsnqXrubA=;
        b=B4uUsJ+BWIjkDLGEjcx25HGVePm5hq8k1UMXv+4LyeYW131BzhFsDFkdTon3fU5X9e
         jsNFvRMnP57be8v6h+UHyF4XaBFznWxqgPd/OqveS/Cixtq3Gm/q4K7HwCFl98DBGrav
         HYLssgN60YMAHzO6JBqZyiuS6l2XE5WLWvzAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qQrzxkp9quVZ8HxBTXHywNX7XFcOZXYbGnXsnqXrubA=;
        b=GChBZ6HUHEibYkYlCmCwfCxkyxcZUt6tnRDDPamH3ZzP2FxOdbW7RHh+FGMON6G6r3
         ZIo3oYGFcG7Ua+zouy+2F1w/IsOEH/GwtMjvmuUM9tvIB3q1wUq2Rd0od7TsV4JU2pKx
         TRsUA/pPRe86Igm34TiI7PURuctzGZ13xJOOCrxTO85bKZ6/nSOJjnUt7og78KF+Cyla
         RbIN5M+Ym3OPt4jhzybrUBccQ+o+GLUWpaW/pOSMYOB/PWERJLIfpLgrvGYPgDHLDJVb
         2eM+R+O/+c35xaA0ghanFZpAiL28u0ZG79tp3VDDXuL2TrP0egw5nQ4YieR/aiKBF3n2
         9kkg==
X-Gm-Message-State: APjAAAXZ59hRrbZQY7xZVdH6LUqYru9twlwNNz/2D+NYn6sbfK3Xipkd
	wsdZK2zcT8/tn/c5BSlPYUwMCg==
X-Google-Smtp-Source: APXvYqyafmkztLIJr/sQ00GHjfl9Tsl1UFLbkvL2fQ8SIPPoeSENmXYbUkpsRb7o5xP+lkh1PeWvyg==
X-Received: by 2002:a5d:698f:: with SMTP id g15mr42949215wru.310.1566396227179;
        Wed, 21 Aug 2019 07:03:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:9321:: with SMTP id 30ls685153wro.1.gmail; Wed, 21 Aug
 2019 07:03:46 -0700 (PDT)
X-Received: by 2002:a5d:6742:: with SMTP id l2mr40282639wrw.70.1566396226637;
        Wed, 21 Aug 2019 07:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566396226; cv=none;
        d=google.com; s=arc-20160816;
        b=WvdBUXVEsP02VQauFKVF+IsHGEYfkK60XIPIq7veMnvLw1eOfgu0uXKb+KnPmK735G
         SQTJteLvJZ8zaawjvGu6d3i3DCfxJeS+Ps28ZbDawlb9J2frv1MxnpV1EA/RylPxOKp7
         zAuU3rMREi0XLUNqBqXCm7U6SbxRSOyrtHC0U59Nw1R8QM3kqEYRHxuwVBCDFUs/UqSx
         vWCPVt/jp+W1GgQVJUbUV9yZp1zgiPyWhAiqFmbU/kRNEi/KcN/4Qk4D2v30JDGbOl7o
         Q/Xhm/7yqVHEUexoASy0Auphn8IsPYw7LL6iYHQynBIf7btB39b+4XZojXwDyKA/Bw8t
         YPvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rNyl/GAwTmLTUNQynVbw/8SOsQqQ1R7n+k4XVH7pAfA=;
        b=wZas4lRfuX7rnwi+hZUoF16hOdkF7KpgGVdGsE2zFbcgbRWOSoydKWtJ2ENv6gKknj
         Y+c2fO6O3HOFkYUdgjZiibug6hanm2ngwxD4Xc94sziCPSzJe1Y4nrk1Pl078WoTUfUK
         wtEwRpdeWtJd0ASWqMThCZDH4eMkhmItYOtLZye/XMxMabb0N8WxMTV8ARpdWgamm7Lf
         YpuT2wrFaERXJKvojup/1AH6enhtTvx/3uJxBlzsXZtnwf0aOTF90LGnWESXRrBlk+X7
         hKH1MHG8saD5wVToSfvJ9jZj+piyaPu7LWi3NX3ModCiLYfMLHoUAf+aBpPrlGzYwUjs
         hk6A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MidKkLyv;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id o75sor64317wme.25.2019.08.21.07.03.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 07:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr173265wmk.79.1566396225923;
        Wed, 21 Aug 2019 07:03:45 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id g7sm170768wme.17.2019.08.21.07.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 07:03:45 -0700 (PDT)
Date: Wed, 21 Aug 2019 15:03:41 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
	kernel-team@android.com, arnd@arndb.de, geert@linux-m68k.org,
	hpa@zytor.com, jeyu@kernel.org, joel@joelfernandes.org,
	kstewart@linuxfoundation.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
	linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, lucas.de.marchi@gmail.com,
	maco@android.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sspatil@google.com, stern@rowland.harvard.edu,
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net,
	x86@kernel.org, yamada.masahiro@socionext.com,
	Adrian Reber <adrian@lisas.de>,
	Alexey Gladkov <gladkov.alexey@gmail.com>,
	Andrew Jeffery <andrew@aj.id.au>,
	Andrew Morton <akpm@linux-foundation.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	bcm-kernel-feedback-list@broadcom.com,
	Benjamin Fair <benjaminfair@google.com>, cocci@systeme.lip6.fr,
	Dan Williams <dan.j.williams@intel.com>,
	David Howells <dhowells@redhat.com>,
	"David S. Miller" <davem@davemloft.net>,
	Fabio Estevam <festevam@gmail.com>,
	Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>,
	Ingo Molnar <mingo@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Julia Lawall <julia.lawall@lip6.fr>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org, linux-hwmon@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org, linux-rtc@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org, linux-watchdog@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nancy Yuen <yuenn@google.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	NXP Linux Team <linux-imx@nxp.com>, openbmc@lists.ozlabs.org,
	patches@opensource.cirrus.com,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Patrick Venture <venture@google.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Richard Guy Briggs <rgb@redhat.com>, Tejun Heo <tj@kernel.org>,
	Toru Komatsu <k0ma@utam0k.jp>, Will Deacon <will@kernel.org>
Subject: [usb-storage] Re: [PATCH v3 00/11] Symbol Namespaces
Message-ID: <20190821140341.GA126314@google.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821131140.GC2349@hirez.programming.kicks-ass.net>
 <20190821133846.GC4890@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190821133846.GC4890@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MidKkLyv;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.65 as
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

On Wed, 21 Aug, 06:38, Greg Kroah-Hartman wrote:
>On Wed, Aug 21, 2019 at 03:11:40PM +0200, Peter Zijlstra wrote:
>> On Wed, Aug 21, 2019 at 12:49:15PM +0100, Matthias Maennich wrote:
>> > As of Linux 5.3-rc5, there are 31205 [1] exported symbols in the kernel.
>> > That is a growth of roughly 1000 symbols since 4.17 (30206 [2]).  There
>> > seems to be some consensus amongst kernel devs that the export surface
>> > is too large, and hard to reason about.
>> >
>> > Generally, these symbols fall in one of these categories:
>> > 1) Symbols actually meant for drivers
>> > 2) Symbols that are only exported because functionality is split over
>> >    multiple modules, yet they really shouldn't be used by modules outside
>> >    of their own subsystem
>> > 3) Symbols really only meant for in-tree use
>> >
>> > When module developers try to upstream their code, it regularly turns
>> > out that they are using exported symbols that they really shouldn't be
>> > using. This problem is even bigger for drivers that are currently
>> > out-of-tree, which may be using many symbols that they shouldn't be
>> > using, and that break when those symbols are removed or modified.
>> >
>> > This patch allows subsystem maintainers to partition their exported
>> > symbols into separate namespaces, and module authors to import such
>> > namespaces only when needed.
>> >
>> > This allows subsystem maintainers to more easily limit availability of
>> > these namespaced symbols to other parts of the kernel. It can also be
>> > used to partition the set of exported symbols for documentation
>> > purposes; for example, a set of symbols that is really only used for
>> > debugging could be in a "SUBSYSTEM_DEBUG" namespace.
>>
>> I'm missing how one can prohibit these random out of tree modules from
>> doing MODULE_IMPORT_NS().
>
>Nothing, but then they are explicitly being "bad" :)
>

As a side effect of this implementation (namespace imports via modinfo
tags), imports are very visible for (out-of-tree) modules, e.g.

$ modinfo drivers/usb/storage/ums-usbat.ko
  filename:       drivers/usb/storage/ums-usbat.ko
  import_ns:      USB_STORAGE
  license:        GPL
  author:         ...
  ...

>> That is; suppose I stick all the preempt_notifier symbols in a KVM
>> namespace, how do I enforce no out-of-tree modules ever do
>> MODULE_IMPORT_NS(KVM) and gain access?
>>

That is actually a feature worth following up: Restricting the
namespaces that can be imported by modules. I am afraid it is not part
of this series, but should not be too hard once agreed how such a list
will be defined.

>> (the above would basically break virtualbox, which I knows uses preempt
>> notifiers too, but I don't give a rats arse about that)
>
>It's a huge red flag for anyone reviewing the code that this module is
>doing something it probably really should not be doing at all.  It will
>make reviewing code easier, this isn't there to try to "prevent bad
>actors" at all, sorry.
>

Cheers,
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821140341.GA126314%40google.com.
