Return-Path: <usb-storage+bncBDXO746SYYBRBVWP5P6QKGQEXEQ4XXQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id C46D12BFC33
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 23:36:07 +0100 (CET)
Received: by mail-pg1-x546.google.com with SMTP id f34sf11212111pgl.9
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 14:36:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606084566; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Coj7GikoMn0tuSKEJDNsTv8iFUYKFbF8wayOugpw/wZ35rUWxQYEneUdR7aCOFQ+M
         DCs7+uRR5NPEpXkTs0dJ/FwYEyoRBJID3Ck7omk0jwlAYgCiOA8fCV88TUNb0Q0z5exS
         v7JOfGQgip55OlaPYd8r+oDN2JnFb2k/MPXRluimGkI2RxNjFdPhPZ0KSB7MW0z+iUPs
         sq3f+vLZqVuIE9vD0v0kdBuDIvAsc1CgixsTP4j/Sh1Xa1jzNH5AUG1QcbJZ+5S4S739
         a6pd/+5qrzP3ZjZknyeHgiBSnSwntcsS1HceARgxY9gMRXaeMB2taAMbrGH1Pd8efQSp
         Ci+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=SBtFZtrwUiviUt9nJaL3HWuns/DAGPBJD2TbSQ2+k28=;
        b=l7A58p6Ok45IaK4A3IMrvtFxWlfjOVB7Y49iwIuzi2VdU45TDFpANxJ2gZInW9t0/a
         bLt7T3BAooew3/Bw+2++3ks8aRnvB3f5qMHsTybaQLy9svEYc7kmycHsTYbJPK2UP1di
         +RWTOVx7BpfGU/O57swrX7dgPM91VxhTFFeaIymvkkmWD2w1tMW+UopU2/VqGhJSZDFp
         yMDkvcfE5UjPoMY7CwqtxjkZrjg01PzALFyoJvCdksb41dDql20svYSJGNsYX6Y/bTT/
         2Zxwy0IDaSCg+iPRf3lmo09rdbyp+ARbR2RDAoDoD5lwzFV6I4ZRkcF/IeYHT8Z++eW4
         mVUw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=it2DEm5q;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=it2DEm5q;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SBtFZtrwUiviUt9nJaL3HWuns/DAGPBJD2TbSQ2+k28=;
        b=MuJjgKpUrzunCZqX0A9RECxoPRolEpGHGwmElica8iyeLCPAKUJDZS+pko/4uYFstp
         iIhOFOte+AqUwkXIozthvpEc4zhvs012FBGm6/X4rK4vHXQv9fDUo0fwakJBZVmI90a/
         31fALQyvpOKSdW0vBs2k6FvSx4wGL94n6h/yc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SBtFZtrwUiviUt9nJaL3HWuns/DAGPBJD2TbSQ2+k28=;
        b=Dg6QVjVFzwdy6r4LbyXoxb+6x4fx6HBB2+Z9ltQcwSZ5Q9lMI6Ib6u/d0KqGaHK7pr
         X7FC0ep0srMJ71hBAnf14NcqpoqQAtrTbkWjHeuqI8vwIv7w1pKqwKcmo00RkrbG/5WR
         A886nf2XGeMJDb3+s9L5rgRUEdAAuvbfuGY3a0kFOmEYiOgvSBI+sS0t3Sa/MuuBlUHA
         QRQIt03QuXqXI58PUhADCcsezNA0++HNFf/D4UCFw5YYqISpEvECZ6EMhLO1AGTZst17
         IpoZTtw0wn0F88BmEj9s7e0ZW8MuDbNMUSGMurJ47VulJp8MORFuS2t87BdvbhKkEJ+i
         ojXg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530xRuiYq89fMxNI1OuPSkaP/5ZH0LPbQxVqMoYh2xMdLHrKt0Dw
	SBUMKomrf8lMZxQtSVzL6fzL3A==
X-Google-Smtp-Source: ABdhPJwc+tAPUT5z6IWua4IUaYy/NK1oVwF813APdi4c25iSSnmtRFo2zrA9hNUH2YsSuQpjGK7IWA==
X-Received: by 2002:a63:b511:: with SMTP id y17mr3672956pge.345.1606084566497;
        Sun, 22 Nov 2020 14:36:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:881:: with SMTP id q1ls4389873pfj.4.gmail; Sun, 22
 Nov 2020 14:36:05 -0800 (PST)
X-Received: by 2002:a63:221d:: with SMTP id i29mr25333836pgi.69.1606084565827;
        Sun, 22 Nov 2020 14:36:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606084565; cv=none;
        d=google.com; s=arc-20160816;
        b=TUtMqf12KoTVFka6AFxQhb4/aWjIfpJ8e/Qrr7xhmLJc2Fs7LcWmiASYoW4MQPzh31
         XaKvoWp4Pqw+StRF0jX54Qjs3BB+txXOAlBkm720BZsaBMuv7jGiCo6qkN+WWSOmOKmV
         cLgCZmeI5YK+q2FMYkZiaDSYbCndJwrLBfHJ7AI7fRIStxpzhLp3xHj0IhpLF+PFBnPG
         aclxck/8Auy9BLXdtKZ7Q6MnUutCDE/4sdarKifK6wHpHWwe0oYwscqRkucpzgWEKEtt
         tnO8FygH3PPBstNT16BjkkyZ9kBda9fdW8FO2RAVgEgKxPNj6BXRwhn7PU+MJUe8ahai
         HvSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=/BWrXWSUORKpGsIXiBVi9kA5finlpSct9M+SUuP6c/g=;
        b=ssazBMptCKNaJi6VUq8OfWJ2B7kXjWa4pRoLXkPCWkr9vhXr+7vXmZ4oquB18l38RS
         5t2LlRNlX4F5wZuzeTdEo7fWj34parpuERbPEZA5/3N/GX/gbU9pasjf2Od71+hvvRK0
         0ar2J5WuRkdjtXMBBHy8Bo49a2fEqQY7rYT1/mKOfcQqVjsVG8TU7Rvpqiib2Dj3lamB
         S2VZN77r0cJerWHPob9lwmTJvGydA2CaOM7Rp3e4xuh7GnDKlNHceh18KrSJjyWeqqTF
         aXpQjNzJNCwIzBS4FYMr3ARU590hullAiGrIt+anqtoL5ajfZUeCkRLJkLZpvi9BrW5S
         jUUg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=it2DEm5q;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=it2DEm5q;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by mx.google.com with ESMTPS id a125si9212098pfb.73.2020.11.22.14.36.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Nov 2020 14:36:05 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 3EEFD12808AA;
	Sun, 22 Nov 2020 14:36:05 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YhaEdPXdRRpF; Sun, 22 Nov 2020 14:36:05 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id B820412808A7;
	Sun, 22 Nov 2020 14:36:01 -0800 (PST)
Message-ID: <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
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
Date: Sun, 22 Nov 2020 14:36:00 -0800
In-Reply-To: <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=it2DEm5q;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=it2DEm5q;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
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

On Sun, 2020-11-22 at 21:35 +0100, Miguel Ojeda wrote:
> On Sun, Nov 22, 2020 at 7:22 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > Well, it's a problem in an error leg, sure, but it's not a really
> > compelling reason for a 141 patch series, is it?  All that fixing
> > this error will do is get the driver to print "oh dear there's a
> > problem" under four more conditions than it previously did.
> > 
> > We've been at this for three years now with nearly a thousand
> > patches, firstly marking all the fall throughs with /* fall through
> > */ and later changing it to fallthrough.  At some point we do have
> > to ask if the effort is commensurate with the protection
> > afforded.  Please tell me our reward for all this effort isn't a
> > single missing error print.
> 
> It isn't that much effort, isn't it?

Well, it seems to be three years of someone's time plus the maintainer
review time and series disruption of nearly a thousand patches.  Let's
be conservative and assume the producer worked about 30% on the series
and it takes about 5-10 minutes per patch to review, merge and for
others to rework existing series.  So let's say it's cost a person year
of a relatively junior engineer producing the patches and say 100h of
review and application time.  The latter is likely the big ticket item
because it's what we have in least supply in the kernel (even though
it's 20x vs the producer time).

>  Plus we need to take into account the future mistakes that it might
> prevent, too. So even if there were zero problems found so far, it is
> still a positive change.

Well, the question I was asking is if it's worth the cost which I've
tried to outline above.

> I would agree if these changes were high risk, though; but they are
> almost trivial.

It's not about the risk of the changes it's about the cost of
implementing them.  Even if you discount the producer time (which
someone gets to pay for, and if I were the engineering manager, I'd be
unhappy about), the review/merge/rework time is pretty significant in
exchange for six minor bug fixes.  Fine, when a new compiler warning
comes along it's certainly reasonable to see if we can benefit from it
and the fact that the compiler people think it's worthwhile is enough
evidence to assume this initially.  But at some point you have to ask
whether that assumption is supported by the evidence we've accumulated
over the time we've been using it.  And if the evidence doesn't support
it perhaps it is time to stop the experiment.

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1c7d7fde126bc0acf825766de64bf2f9b888f216.camel%40HansenPartnership.com.
