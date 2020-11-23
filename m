Return-Path: <usb-storage+bncBDXO746SYYBRBLF36D6QKGQEDTY6B7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECFB2C1693
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 21:38:06 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id u14sf12018446plq.5
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 12:38:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606163885; cv=pass;
        d=google.com; s=arc-20160816;
        b=JOvqtjFVDEeSB40leCfpqqbrmcStf9S1HIfxCYtWPS8IySmxU+IoBrR5G1q1GZl/Do
         Knqn5v3iXCbZLeNCrltxsX0g+q+PVkotfZAh4yb+vIlh2IslndZKwWvKfgQ5nWDwEZ4t
         MlD9TEXDUW6HLZ6tD3g/p8BJKEdWlG8ye+PgvNKzm+08LjeVjphr3LmBG8piT/iDbT++
         sje0XsoxKjDjV0mvVYDrDI1/b3jgCbSaHz6EeplkspHiqUbqn9buFoXERBsV7bZAbTRJ
         3vLdtleO3hYSPfQXu8hHUUvkPf20LX/rqYzEPiFXbz7HG8231lsNTG/k4oO704nSV6O+
         1yRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=lDFEU4iUL8GVSyslsebT2e3ZTkgSd4Kc0NaHokHkzvM=;
        b=0xPGCM4JSjJOgr31P0kzKs4vrHzynbLRuUlbWyX6Kjhk4FeU4zm0kaVVfeRIor8SVU
         6pcjN+pb3WpOiqXMDhBlDeRE0tDXqJcu0SEuFGzGrM2y75YZXT/um3CNiZd4C1lDiThV
         X/jUW1i2Wm4zmZXK5S0Um3n3EGAFculMHbvKr5LRNJ+eaiMHpJ1Q6ZM1iwCMyYGGGCjf
         uNHu4mrblOsWwspCjsPqmjeh602tsdMjBRR9lPvq4+Mk76Z9k2uwlSA0z5MOKudHRUI4
         TNqFa7YmcpHs+6OEHEJpyQhAGmh6kMaFhk0rMlZT+f7ZFd6bGIKadFZthVIaXPVZhGjE
         +U7w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Tyy0xQy0;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Tyy0xQy0;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lDFEU4iUL8GVSyslsebT2e3ZTkgSd4Kc0NaHokHkzvM=;
        b=eKqtX+owMyGQrivDpqdBoi4EIo2NjUfyK0zUE2cCuDvSYrSuxMNB6VqlSV0PiEHzds
         6bAD1Tw5VWMgnwHIOdYw14DWQ8598L4fU57PCkAFAoT+HOumps8aUykUhv11ijvOLpRw
         JXLZylrd9rQq03xRAXzv3fOVfFUQKlJrWxwKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lDFEU4iUL8GVSyslsebT2e3ZTkgSd4Kc0NaHokHkzvM=;
        b=d0KrpE90JUhxT2uVe+ZXX6VjiKMdkvlwS1KIRT8CgJFZm3YPXO3Dz0TRmqO+cyxtif
         Gridy3ObVkKWVw5YnJtE5oFcPhhHAWpK4kl7HNcDnHrR8J97V0h02KT9YJ+omkLXy8bT
         rX/qCH6kkBOQlO8zRZn4VTsCWGL809O+ult0XQHyZhULDpWg4HyMDOjXA4I+miUeR4dt
         TTNGzJhgndc/0P9Qk2pQfABcY4D5+op3RUnFotjaP35+h5iKIUay2GhE0bb31BitCDAw
         9Jw5DamGv3mXIcAiRxsSK88+VnQKOKJCiH0ycs2WBtjYmy4G0GMIKJirB30+7MqzZkpz
         fxYQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530Vit5rlZU+me4B/Ye5i1wOD45YB7FzRuq6homLbmhYInYfcu8R
	JhjL1/5qCMPXMPZGzFZ9A35dXw==
X-Google-Smtp-Source: ABdhPJxg+lDLteeWjjkeCrE7s74HiSHZO9cUbujvh4mi3h5fq3gViyCZYViSBcKaELuZSHbFUKnLRg==
X-Received: by 2002:a17:90b:241:: with SMTP id fz1mr799432pjb.172.1606163885006;
        Mon, 23 Nov 2020 12:38:05 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:c113:: with SMTP id 19ls6666943pli.11.gmail; Mon, 23
 Nov 2020 12:38:04 -0800 (PST)
X-Received: by 2002:a17:90a:df8e:: with SMTP id p14mr781884pjv.14.1606163884334;
        Mon, 23 Nov 2020 12:38:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606163884; cv=none;
        d=google.com; s=arc-20160816;
        b=bGQMtbbSxrL/CjkZyiH1WmStbDbf+K+FrOzEbLGYsBWUDzZwf9pLIR/xIg0DDThCmJ
         oGfeCEHHl9N8USwUJKPNjcHqbtDiFkOxWq2jCVbjcZtPgUJfLsnGr53ktQi/1DzfejeJ
         YodAhojADrF4nYUY0ZPhaVdPDpQRz10aLPq7MhLPzQZDe3LurLOnGIPGG2E0oc1ZM0aO
         UsZoN+BMOQmhSkVlzvXHWPii+MOzeRpN/JFErS6BEgvNfoe3qDcaSzxtbgYNaHoSNaG2
         BZoXZR09lFKoBdWrcecfAcdZznEerJd+lxqVuJzqxein47hsd3oMka9riJUt4Np0jpIT
         Yysw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=tO7wUZRnNaNEjYNWhld0QaAsr7ZwHYrMeZrvhKGr4ls=;
        b=BfxzNmQuChdL5eTQ4ZOjzICj+khqYsM2CN2p82OMJlgzOceF/ytadFAxmFw60eybI6
         OqDuO4Ao/R4YbPDmKKzbaVesagWEv0AscgTH2YQAVqQBZEyh4hLIwqOlcWEJojGe0GVs
         eF+SVB+oUdRq/iOaDCL1aujEko2zRjgfnEqwhZs9G6udmLgNVd/NZVzSK1QgHKcmYoFb
         M+wlg7FtE2ws6tg6Si/jAUlrc1vc5LmS5rHtDQLrN5/Ay9R1QjDDyLDQrF6ktcGmZvqF
         wTPfOvhHx/JIUzwcCAizJ7imhP6ecpm1ZWSALTQjW5rqj5A3tCc0wVf/F6Hcg4TzPYwF
         WPlw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Tyy0xQy0;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Tyy0xQy0;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [96.44.175.130])
        by mx.google.com with ESMTPS id y69si11522990pfb.98.2020.11.23.12.38.04
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Nov 2020 12:38:04 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) client-ip=96.44.175.130;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 81FC7128092C;
	Mon, 23 Nov 2020 12:38:03 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fm687JPabQpA; Mon, 23 Nov 2020 12:38:03 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id EBC5C128091E;
	Mon, 23 Nov 2020 12:37:59 -0800 (PST)
Message-ID: <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel
 <linux-kernel@vger.kernel.org>,  alsa-devel@alsa-project.org,
 amd-gfx@lists.freedesktop.org,  bridge@lists.linux-foundation.org,
 ceph-devel@vger.kernel.org,  cluster-devel@redhat.com,
 coreteam@netfilter.org, devel@driverdev.osuosl.org,  dm-devel@redhat.com,
 drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org, 
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org, 
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net, 
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, linux-arm-msm@vger.kernel.org, 
 linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org, 
 linux-can@vger.kernel.org, linux-cifs@vger.kernel.org, Linux Crypto Mailing
 List <linux-crypto@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net,  Ext4 Developers List
 <linux-ext4@vger.kernel.org>, linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org,  linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org,  linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org,  linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-input <linux-input@vger.kernel.org>,
 linux-integrity@vger.kernel.org,  linux-mediatek@lists.infradead.org, Linux
 Media Mailing List <linux-media@vger.kernel.org>,
 linux-mmc@vger.kernel.org, Linux-MM <linux-mm@kvack.org>,
 linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org, 
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-security-module@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, linux-wireless
 <linux-wireless@vger.kernel.org>,  Network Development
 <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org,
 nouveau@lists.freedesktop.org,  op-tee@lists.trustedfirmware.org,
 oss-drivers@netronome.com,  patches@opensource.cirrus.com,
 rds-devel@oss.oracle.com,  reiserfs-devel@vger.kernel.org,
 samba-technical@lists.samba.org,  selinux@vger.kernel.org,
 target-devel@vger.kernel.org,  tipc-discussion@lists.sourceforge.net,
 usb-storage@lists.one-eyed-alien.net, 
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 xen-devel@lists.xenproject.org,  linux-hardening@vger.kernel.org, Nick
 Desaulniers <ndesaulniers@google.com>,  Nathan Chancellor
 <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, Joe Perches
 <joe@perches.com>
Date: Mon, 23 Nov 2020 12:37:58 -0800
In-Reply-To: <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
	 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
	 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
	 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
	 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=Tyy0xQy0;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=Tyy0xQy0;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Mon, 2020-11-23 at 19:56 +0100, Miguel Ojeda wrote:
> On Mon, Nov 23, 2020 at 4:58 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > Well, I used git.  It says that as of today in Linus' tree we have
> > 889 patches related to fall throughs and the first series went in
> > in october 2017 ... ignoring a couple of outliers back to February.
> 
> I can see ~10k insertions over ~1k commits and 15 years that mention
> a fallthrough in the entire repo. That is including some commits
> (like the biggest one, 960 insertions) that have nothing to do with C
> fallthrough. A single kernel release has an order of magnitude more
> changes than this...
> 
> But if we do the math, for an author, at even 1 minute per line
> change and assuming nothing can be automated at all, it would take 1
> month of work. For maintainers, a couple of trivial lines is noise
> compared to many other patches.

So you think a one line patch should take one minute to produce ... I
really don't think that's grounded in reality.  I suppose a one line
patch only takes a minute to merge with b4 if no-one reviews or tests
it, but that's not really desirable.

> In fact, this discussion probably took more time than the time it
> would take to review the 200 lines. :-)

I'm framing the discussion in terms of the whole series of changes we
have done for fall through, both what's in the tree currently (889
patches) both in terms of the produce and the consumer.  That's what I
used for my figures for cost.

> > We're also complaining about the inability to recruit maintainers:
> > 
> > https://www.theregister.com/2020/06/30/hard_to_find_linux_maintainers_says_torvalds/
> > 
> > And burn out:
> > 
> > http://antirez.com/news/129
> 
> Accepting trivial and useful 1-line patches

Part of what I'm trying to measure is the "and useful" bit because
that's not a given.

> is not what makes a voluntary maintainer quit...

so the proverb "straw which broke the camel's back" uniquely doesn't
apply to maintainers

>  Thankless work with demanding deadlines is.

That's another potential reason, but it doesn't may other reasons less
valid.

> > The whole crux of your argument seems to be maintainers' time isn't
> > important so we should accept all trivial patches
> 
> I have not said that, at all. In fact, I am a voluntary one and I
> welcome patches like this. It takes very little effort on my side to
> review and it helps the kernel overall.

Well, you know, subsystems are very different in terms of the amount of
patches a maintainer has to process per release cycle of the kernel. 
If a maintainer is close to capacity, additional patches, however
trivial, become a problem.  If a maintainer has spare cycles, trivial
patches may look easy.

> Paid maintainers are the ones that can take care of big
> features/reviews.
> 
> > What I'm actually trying to articulate is a way of measuring value
> > of the patch vs cost ... it has nothing really to do with who foots
> > the actual bill.
> 
> I understand your point, but you were the one putting it in terms of
> a junior FTE.

No, I evaluated the producer side in terms of an FTE.  What we're
mostly arguing about here is the consumer side: the maintainers and
people who have to rework their patch sets. I estimated that at 100h.

>  In my view, 1 month-work (worst case) is very much worth
> removing a class of errors from a critical codebase.
> 
> > One thesis I'm actually starting to formulate is that this
> > continual devaluing of maintainers is why we have so much
> > difficulty keeping and recruiting them.
> 
> That may very well be true, but I don't feel anybody has devalued
> maintainers in this discussion.

You seem to be saying that because you find it easy to merge trivial
patches, everyone should.  I'm reminded of a friend long ago who
thought being a Tees River Pilot was a sinecure because he could
navigate the Tees blindfold.  What he forgot, of course, is that just
because it's easy with a trawler doesn't mean it's easy with an oil
tanker.  In fact it takes longer to qualify as a Tees River Pilot than
it does to get a PhD.

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4993259d01a0064f8bb22770503490f9252f3659.camel%40HansenPartnership.com.
