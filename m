Return-Path: <usb-storage+bncBDRZHGH43YJRBOUX5P6QKGQEVPO5MXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 863912BC930
	for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 21:36:11 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id k196sf20055828ybf.9
        for <lists+usb-storage@lfdr.de>; Sun, 22 Nov 2020 12:36:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606077370; cv=pass;
        d=google.com; s=arc-20160816;
        b=jwIRg+WiXtyIh2967m/NAztACfxdIlZxgZs7K0M+pDCM12FGP1jzXLopNAo7zpM/vw
         9ZUs+yKmZ9TwglHxtVUdUauMiCC3uPQ/+827k81kyv89GC1kkYO8Qtl67YDkkB9oBWOO
         Wre9K72kMO1N0fYS+5B+J6qVMkMvD2BSDUXBzqpC4p6oxs3/LOC3jTeSnMh4StZcMjlQ
         LP13OCFJpCXIJnZ2q4nOjvSnXzgHLyJ1HxVpmKeSnQHodrKriHwHLnSbuRYSPia6wQJf
         QPt7thhPr04l0WcAqVIALL9QKXL99Oxb8C9/5t4CJeOphQh0W6D+NVMwZI8ZW8gmvvRj
         00lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=yvsF55JJwVjHF6s97IvLgQJJgv13tFN/nzXI3ceeMUU=;
        b=abSkVtR4TbMQ9tykQ0kO/0CePGj3WrefhjvtHJpWZyinyyLhOLW0rhlzz8SbBrfEMs
         EMbC/TY5wOf4WwXGgKBthPhEVXC4khYqMQx5Ng2c4Q8TnNaOyXN10xrPZpHRsfsZN6eM
         TM6N9K4NXc/H5d2hPXroqDSp+ZEbC75wtv26zy7FlIoIcQH3f/rYkMd3f+mDLf7up34+
         92KWJ6DC2xtjx/mPaor8Wrut2ELU1gxts3Huhe1crfEgAJ3DVbTVMBRS8tmXNB8n8TnS
         xGAEX8sQRoL6XkQkT37i5hD95g8RxoGvqyGb+aAjkadVhGZB/Pv05U7o8X9w7Kb3XKaU
         lYkw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tX7AFJY3;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvsF55JJwVjHF6s97IvLgQJJgv13tFN/nzXI3ceeMUU=;
        b=hKLRe7pymIyfuTrAzBFBUGJsldnGOH1SykFPWvb8b8T9v7bHeib/SbdgnvxiJ2IKWt
         Krl8271/ZPqOpqDdOGpS3eLgoko+1ja8P+Dze3i2mGVSIz767HkugGJzm/9xmz23mu5c
         9o36kn7s20JKls3uDyljbDvxJyci16XLR96iE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvsF55JJwVjHF6s97IvLgQJJgv13tFN/nzXI3ceeMUU=;
        b=p70BWo6MIKGAFDZIi48ekNARgw7MhfaBdc6u8QpngC4Be21HjgdrL/bUaIylkaVGNy
         7Gf7HmF6lXRTlL79X3oTwzOqnhr72SR5S+JR9NW4dsZietugJxexxqjiVqiuTCbRQ6cE
         8jZFs7tRofCWQK9RGX9mqATo+7Rpzc/FVCbBQ+WkTBjOGTPSKEfr6zNhNFZfAehHD6go
         4+l1bpKCkqBJdNu3/LSl8Gz2CoLSfAlnaW9yRRv7AUQsybb6Zwu6G0QMfDUlsKu5K9ol
         kIOZNotdhZh9hIIo+3+vnRKecegldqC3LArXSNp72/dfhYh87PhfhE/WtJfV/ESuUUMp
         tYpQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530TYJRf1fb8drO0MEi9kbyVq/s7Rt95hgNec/PdUYMjAuZA3Kji
	IigM+DDbDNvmabng2njCHAr3ig==
X-Google-Smtp-Source: ABdhPJzizfcF3dg4RBdfEhjkQvll2kg7jCWoFigg4Ix48uJ2btfwO1KYHzhEAIPoQ8ZClLUDxTa63A==
X-Received: by 2002:a25:bc82:: with SMTP id e2mr29019198ybk.160.1606077370513;
        Sun, 22 Nov 2020 12:36:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:c553:: with SMTP id v80ls1165248ybe.2.gmail; Sun, 22 Nov
 2020 12:36:10 -0800 (PST)
X-Received: by 2002:a25:b803:: with SMTP id v3mr40584259ybj.326.1606077369913;
        Sun, 22 Nov 2020 12:36:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606077369; cv=none;
        d=google.com; s=arc-20160816;
        b=Jmkjv0HAUcapMJHwR6+Pgvw4pAV7guSJ2PZ4WFlXmOOMe8q6nd5scd0ergZ81SI1KV
         5tk8KF5wendXZU0UgKVmNt37OBZrVzRANhvCyPa2ZG0bDnr3kW5VCvn2pzqWoZ3H47pa
         TvKBNelTLCGAExaoWhqVwNF4p9lNeLcdyb6e0whqbkhK9SFJih03y8S9PT1gLefVZrAM
         EqZhOEm64znLVbkNY7+cWrZzI9A5xUamWceahHbSRxWereWzfDOlIG1UjtzKjffK7sFn
         N4laX8Qagbi0IHcSB58BKKyk4ZcefYQl5ZmLedcXmhgsLl3jBDgk+OsAZmqRvAMEn5qC
         c+2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GG13N+h9bYKW0tA8PzZdEh0PqD5/qSPuWfMm4/MLZZE=;
        b=ru3Q5mSXJLL6iTdHunYUN3g7rFkQdNDXGNgktN6HBPs4UYPJ8e+X6swUsR8k1H3B/I
         hP7D8fqy34gTvouSKUguCjoZuYfVahiVc4u5PA3ARkFjj1nMgyTi924efwzkDc9/gizE
         q1rKJudY+c0tuCifFWEznHdN5QJN2fyA3U+Y7WHsObt+KzlMILLJKlT4IyLOoo8Q4ASY
         Y3bzqFIijx18AuCePulhxLbd9/sSb6Si7SgsIkfj7fyJC4v1oV6JS7E2mTxheg1wRZM2
         e2NuguhMGXd1bfjZuWpAAYrfaVK0Gf1I5u2DuCGs/4ABkkQn5W0ArHgf3lbCWgqeUV+7
         lGXw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tX7AFJY3;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e84sor2827366yba.109.2020.11.22.12.36.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 22 Nov 2020 12:36:09 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a25:6986:: with SMTP id e128mr4956056ybc.93.1606077369721;
 Sun, 22 Nov 2020 12:36:09 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
In-Reply-To: <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 22 Nov 2020 21:35:58 +0100
Message-ID: <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	alsa-devel@alsa-project.org, amd-gfx@lists.freedesktop.org, 
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org, 
	cluster-devel@redhat.com, coreteam@netfilter.org, devel@driverdev.osuosl.org, 
	dm-devel@redhat.com, drbd-dev@lists.linbit.com, 
	dri-devel@lists.freedesktop.org, GR-everest-linux-l2@marvell.com, 
	GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org, 
	linux-afs@lists.infradead.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-arm-msm@vger.kernel.org, 
	linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-cifs@vger.kernel.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, linux-fbdev@vger.kernel.org, 
	linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-input <linux-input@vger.kernel.org>, 
	linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-mmc@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org, 
	nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org, 
	oss-drivers@netronome.com, patches@opensource.cirrus.com, 
	rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org, 
	samba-technical@lists.samba.org, selinux@vger.kernel.org, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	usb-storage@lists.one-eyed-alien.net, 
	virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, xen-devel@lists.xenproject.org, 
	linux-hardening@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tX7AFJY3;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 209.85.220.41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Nov 22, 2020 at 7:22 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> Well, it's a problem in an error leg, sure, but it's not a really
> compelling reason for a 141 patch series, is it?  All that fixing this
> error will do is get the driver to print "oh dear there's a problem"
> under four more conditions than it previously did.
>
> We've been at this for three years now with nearly a thousand patches,
> firstly marking all the fall throughs with /* fall through */ and later
> changing it to fallthrough.  At some point we do have to ask if the
> effort is commensurate with the protection afforded.  Please tell me
> our reward for all this effort isn't a single missing error print.

It isn't that much effort, isn't it? Plus we need to take into account
the future mistakes that it might prevent, too. So even if there were
zero problems found so far, it is still a positive change.

I would agree if these changes were high risk, though; but they are
almost trivial.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw%40mail.gmail.com.
