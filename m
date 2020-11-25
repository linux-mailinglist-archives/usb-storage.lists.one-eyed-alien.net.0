Return-Path: <usb-storage+bncBDYJPJO25UGBBEFM7P6QKGQEGJEI5YY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id B23292C4A52
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 23:09:21 +0100 (CET)
Received: by mail-pf1-x446.google.com with SMTP id x26sf25534pfo.23
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 14:09:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606342160; cv=pass;
        d=google.com; s=arc-20160816;
        b=UBHw4A9DvYZQA5VLAIJmtqGYcZ+zG+HkQz3gkh4bKDEvrs7igg3QqJ+52qa5KqU6FE
         QIdsmfgRvYSlQWN+3f/fnx01XukjRcuG1TOiLreGIoPgRYgtGejItAgr6qr0bCe+JG8t
         RfYr2PNFk3skvynDKIHrxzqub6MkLEZXmN3a/8Yo9uW+5piKSC9M5k649xuO/727ImhP
         0fINXBJHRdGnMsYY7mxu4kHka/seNvjGLzTbd5TX1wvHaH/zynf96UalB5MI2NblFFTr
         fHK3PDc3IXMCBK5W0COf1qh3PDz2S1s1W/a2fLL5Dq7gD6AcfthlpH0qGOeWDaPyvrDL
         2HWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FOWgrdJWM1lPjKJeLTWyF9eUyVtaWbvKeVTwd0WlVWI=;
        b=jG0BtObxOQcsk6+fzfqXZisq0oiMCpjNwqKbwELwLBGIojZu7CJtGRmk37N482zuu7
         wPYmTz68BJHrIqoi0WJ7xIX1bRMSusfMWWFtElz4L8RjGid0iEjMsSJ+i+bKvS5OgFWw
         jk9KQA2GpctkNHVVYXdqa0VwOxqJhF6sy87p04Hg3wa2De9ixH3h6J8F8sb3SFLsXCcu
         +Drfs6Q2CCmldf85hq+h9eqpFPY1IxXRsmtZJnt1/lyWgXyS03KyUyeIhCe+q/QvN52F
         9Y83dT7aQi2naiKtPKJ+TBvXPxjf9Z573BOiR+rd6S5NqimNMS4yU+dczupWZn/eUFt/
         S1Kg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WifNdkif;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOWgrdJWM1lPjKJeLTWyF9eUyVtaWbvKeVTwd0WlVWI=;
        b=O3Voez1JR1Ru7lqZ/3IobfdGgFOuVGYoMGb7IvYJL2ttmnupy8UQYGdzDYIe9azUsr
         Wucq3aWd5Kmpnr9NX/87fZP3hivxt9WkQF+ko5KcdC1EVnZHXfc84sstBCo7rwwJvpTi
         u2oldcfRR4GdYMnnGCzYgPv7U2V+ALerafoUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOWgrdJWM1lPjKJeLTWyF9eUyVtaWbvKeVTwd0WlVWI=;
        b=KujnnXA/vlhTuY4brgjAzrfw8mQGdnRJesVyGBmHUtsjlPCORXGW/Qoi4jH0XWNSc6
         eB68BxmiumaJIl+aur2R5eUl+XSALrq/DPCEnqIPeW8tazGEbqVNULU5yemXmXMZbsiQ
         o7DVMW3AAXe4TUWByeShzi15FvYyO7ewFnQtQRs3SeMq6WE4CB6dJse1NzKi2+d1PeBX
         yDjf54aF+IFOOAXos8t99YaOM+bqXLv7CmcAptp6zmfa2KOSwOxs2y+0ETBE4hggfEL1
         RLhNX/6RPH0ChqYGEy8FrmKnfvLrDB/J6oHLTH7yooPrlCb24YjceHWO+dZJvHv9rqU8
         wyvA==
X-Gm-Message-State: AOAM530F/q6sqmEAQrQAR2NlA3HzwTy62ONXKQv7bS7hcmGWUITFElcR
	U5vBua+cM5hy4uw4PVmqiNS8Wg==
X-Google-Smtp-Source: ABdhPJxKJ8USS7SyHxaY8hoKBrfdg4j++A/e0yN4UmUi6mXMlXqUsXShx0Jn2Nhwmi3jlNdN196P0w==
X-Received: by 2002:a17:90b:1a89:: with SMTP id ng9mr6714161pjb.234.1606342160426;
        Wed, 25 Nov 2020 14:09:20 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:f994:: with SMTP id cq20ls2359215pjb.0.gmail; Wed,
 25 Nov 2020 14:09:19 -0800 (PST)
X-Received: by 2002:a17:902:b209:b029:d8:e821:efc6 with SMTP id t9-20020a170902b209b02900d8e821efc6mr1451880plr.5.1606342159799;
        Wed, 25 Nov 2020 14:09:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606342159; cv=none;
        d=google.com; s=arc-20160816;
        b=ZSLffLKK6bGIGr1jNyfIsiGpdLRDfmRVaUadsEJ+oQ4928/lEyb0Dz+6zvqTKAtYCc
         3udC9rqJzhA70z6T/+cIw3W9lnKHXFonaGAh4zjLrwYbe8BEW9Su+zbnvPJIRABKehoS
         4Ah7mqwbfiJ5Yddw7PRxzLuVK3G/5ucfJWbfYMKCflpgTQnhmjq2H9XQc6W0Fd4vS8Dg
         UCVhTYnaLmDO4YfmG8GBE8R/xg/nqx88+KM8Ge5Ua0EpX5QjhIHgH52S+pcDBecaPgQG
         OAMEBATi72vTnPPgk6ClMm3jjlwch0cSN/jtgA3AlOf2BII5DIcYHNSkz3JDYx6SPBar
         WF1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u18D3LcbSYuoMMQXGcZuOSSHQ97aqFAj6PSwZPKzyfI=;
        b=Cigbdf5zhqrCZz6zWMnlVe+6LgJp37ajUmXQBs8kmUz1q92A2f3DWsrW8RSjzV89vd
         f2DfJSNGcsRQAldJozVNjmf+cIjzu55u+GyQ4jvGuDFDckJsKX4CBnAu+tJgPSX9/BVd
         9xKngf9ZOolTnXtHhE7zbfK3JNKahg2Nt5NwLBgRY6mmwzKDv8ztl+0Etjaw8dRwcla7
         zc5kmqap32wly5oh8ebho5EuAYp9ODzl+/rRBL2s5PVvSLQJb6BVj5waGvXbY4Y6LfB+
         upwwB2XhL+yeJuKARol6iNhLmAv1bg8crpjnq0A/vvyPCneyTID+He1UMMMhX8Wpsebk
         +IUA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WifNdkif;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id b11sor2259047pjh.34.2020.11.25.14.09.19
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 25 Nov 2020 14:09:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:d250:: with SMTP id o16mr6463569pjw.25.1606342159332;
 Wed, 25 Nov 2020 14:09:19 -0800 (PST)
MIME-Version: 1.0
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor> <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook> <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
 <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com> <20201125082405.1d8c23dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201125082405.1d8c23dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: "'Nick Desaulniers' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 25 Nov 2020 14:09:08 -0800
Message-ID: <CAKwvOdkWGE5qdFZUuMzcL63LDOu_iZQJOGbeBNjcPi8sJPMkag@mail.gmail.com>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
To: Jakub Kicinski <kuba@kernel.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Kees Cook <keescook@chromium.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Joe Perches <joe@perches.com>, alsa-devel@alsa-project.org, 
	linux-atm-general@lists.sourceforge.net, reiserfs-devel@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-fbdev@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org, 
	linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com, 
	wcn36xx@lists.infradead.org, samba-technical@lists.samba.org, 
	linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net, 
	linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net, 
	drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org, 
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, 
	linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, 
	oss-drivers@netronome.com, bridge@lists.linux-foundation.org, 
	linux-security-module@vger.kernel.org, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, linux-stm32@st-md-mailman.stormreply.com, 
	cluster-devel@redhat.com, linux-acpi@vger.kernel.org, coreteam@netfilter.org, 
	intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org, 
	Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net, 
	linux-ext4@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, selinux@vger.kernel.org, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, intel-gfx@lists.freedesktop.org, 
	linux-geode@lists.infradead.org, linux-can@vger.kernel.org, 
	linux-block@vger.kernel.org, linux-gpio@vger.kernel.org, 
	op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org, 
	xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org, 
	linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>, 
	linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-sctp@vger.kernel.org, 
	linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, 
	=?UTF-8?Q?open_list=3AHARDWARE_RANDOM_NUMBER_GENERATOR_CORE_=3Clinux=2Dcrypt?=
	=?UTF-8?Q?o=40vger=2Ekernel=2Eorg=3E=2C_patches=40opensource=2Ecirrus=2Ecom=2C_linux=2Dint?=
	=?UTF-8?Q?egrity=40vger=2Ekernel=2Eorg=2C_target=2Ddevel=40vger=2Ekernel=2Eorg=2C_linux=2D?=
	=?UTF-8?Q?hardening=40vger=2Ekernel=2Eorg=2C_Jonathan_Cameron_=3CJonathan=2ECamero?=
	=?UTF-8?Q?n=40huawei=2Ecom=3E=2C_Greg_KH?= <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WifNdkif;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Nov 25, 2020 at 8:24 AM Jakub Kicinski <kuba@kernel.org> wrote:
>
> Applying a real patch set and then getting a few follow ups the next day
> for trivial coding things like fallthrough missing or static missing,
> just because I didn't have the full range of compilers to check with
> before applying makes me feel pretty shitty, like I'm not doing a good
> job. YMMV.

I understand. Everyone feels that way, except maybe Bond villains and
robots.  My advice in that case is don't take it personally.  We're
working with a language that's more error prone relative to others.
While one would like to believe they are flawless, over time they
can't beat the aggregate statistics.  A balance between Imposter
Syndrome and Dunning Kruger is walked by all software developers, and
the fear of making mistakes in public is one of the number one reasons
folks don't take the plunge contributing to open source software or
even the kernel.  My advice to them is "don't sweat the small stuff."
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAKwvOdkWGE5qdFZUuMzcL63LDOu_iZQJOGbeBNjcPi8sJPMkag%40mail.gmail.com.
