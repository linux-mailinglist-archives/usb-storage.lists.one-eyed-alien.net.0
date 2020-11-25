Return-Path: <usb-storage+bncBDRZHGH43YJRBG457L6QKGQEFVH2NVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D082C4636
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 18:04:28 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id h9sf467296ybj.10
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 09:04:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606323867; cv=pass;
        d=google.com; s=arc-20160816;
        b=w8kvb6s+DR6g/K2IyMU1/nSYf1XE7unmF6zPV5qxQWcJP2YMyMEj/g17GMB+SFXyYv
         thgol1K6WQCQC2ZumNUK17p0twMVb87Q3fV3w6Ir1kf+IuOOKQf7idSdDWUzHt6hDBW0
         V7rYsmH0xbr8g9EknvqxvGqgyOq6PmQnCg5l4uJJBXvT4OjsPYK1YE6u5wEoOVUuDuaS
         bDK+cBjUCKOg+AKp+ndhuQwrVv5G+wDbcCjo4knxJEfeYV9PIPybyWIBgAutPpxKdkDC
         SmHEH6Jf0+w90vSYSL20iVfLpAps76/ojHZvZSLePYnPyHmBS0qJ3J+tMQfhSkLmYfjx
         LV9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eo6AHtDsj0pOKgdytBQQFlFakxxnc0ko7ZWSXtYejoo=;
        b=AXBsIn2StT4vwpgx5R+y7e40g07ZfvFOYj1nPuLek7eqYDhkpZVdIxEMx22raaupPQ
         wZ09Lnkj+3YyzcZd6kqmZGouIAHJImrUmsem2v8XxYFWein83eACiVn5ZORMjyqvJknc
         uHrtYxRsVflXye67DT7lLc/gzETxWSSPkA51K4LhcfYwt5Ta/6q4RZeOve7hoFCyEo9b
         Tj4zme61+yXim/rY/t56FgnqbPmh6rtpwiBWuOiFTO8N6zewMLyA1q178rbJxuuHHc+I
         pX/AaL0xCgWF7pha68PifYyFkZXtcxAmdMXf13gPhlgYZXTdUFi/PIb9k65IeQu9+r1A
         o4bw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bn+pL/Hm";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eo6AHtDsj0pOKgdytBQQFlFakxxnc0ko7ZWSXtYejoo=;
        b=PZR6Oi7jIc9U5pByx4Ph0utARFslNUTqfzIDA7XPCKh5P0COeOAEVHF8WwXQR8z41R
         rIFO5gG1jIlDZy11IMKOTUvkt64OCov8IKt+qOeHNfzBgL/BO8QWcAEpIigYMEIsHOLs
         sFOTJXL6xXXsevV9y3sfQQ784XbnGiVy6vYkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eo6AHtDsj0pOKgdytBQQFlFakxxnc0ko7ZWSXtYejoo=;
        b=b1uTr69/6VyQCuhI8xj0Uf2lR94ELgXAu6WidiM/ThaSiy2/42jVyCXa3of4NsV76i
         oCH5lchnq8GUlJ2afvORMWuKv+9EM17fHUfpsY4pheBC+v45RgEBKXPO/rIVv3WyviWu
         TDqCfdDStL8JhL/TpCt1fvjSKhc2/Hq4BSfjkdl5Jz+5fROIi6hIXzLZH/p8RbwuCSsZ
         P3hNDJjOVkM1jzVP7DhcgFtKPFa4TnOXzR+CfKfVfUi31WeO/fqqW2BwwTDkaHsI9h8D
         tRhIWB0Y8imnSnVelsy4SgG4uvp/WVSHd6kztgvp5RRUlOl9P/J4yXyvzCXvQJq7d+aL
         HJ8A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530X+uXMhvUyBBVfQi7WguRq25F6BLH8ZThbbTascH8kV7J5Twym
	BkoCrsdGMiOZ66ZgiqfOIAy2mQ==
X-Google-Smtp-Source: ABdhPJyDzR4iOqeyY9Rx8h6wuXKlpk1RLZvQvLBRMLCBZl+F3hAfDERbibuxccbJXFosUPA1kIKAeg==
X-Received: by 2002:a25:d30a:: with SMTP id e10mr7264057ybf.196.1606323867253;
        Wed, 25 Nov 2020 09:04:27 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:6908:: with SMTP id e8ls1525781ybc.9.gmail; Wed, 25 Nov
 2020 09:04:26 -0800 (PST)
X-Received: by 2002:a25:6945:: with SMTP id e66mr5592379ybc.319.1606323866688;
        Wed, 25 Nov 2020 09:04:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606323866; cv=none;
        d=google.com; s=arc-20160816;
        b=fSxFSpXX+fLQh2mRfcc1Uafa6rpo6XGXO8cUqM20HwJdQqOhKsx/3EXI3dqletM+Ph
         pPKxbcjUeEbWwFVbZOmNZfsn82fVtzXA3YFbXu7crksgEqJVp2MoJxnrrprbgGUHYuxd
         +/86K5Vuag5O7DV1GN2jYGf9sNg7i6leAv5dBU3qzd4gz9CYASE0uGFGA2iUaJ2kQvlS
         tykQe01COuxSZl460tLRbGgWkQX8rBiBwwuC8bGLFVftwiOQtdzhwpJyC8KXsCkC6WNb
         gpK8YZ98RpIi/oEoxuIs6EIpXJ3dXGHvjyCRUnS8SejcGy2cDLkunj5a5rON6eYl9qQn
         eAYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U7yONu+GErpj3wVA3mUEvd1gZrZu1iMtuB4J5cc4iYs=;
        b=OlPeYKN5f+yJiii5sUICoNVFgLb+gtbAbwxSxwriUAVPJXo0EKKRqtKfmhwjWR7Kqx
         BBR1bFuwc+CoUUDX998EJI7WcGeAx4WdxdipbuqbCw0vZgOLWWUXv85UKrtFCUpcm9mG
         xmt0tETmyb8NgxLjS30r6GY2ReenfitRak4Z144TuSn63p9EH7vgNow4ZbL4a+4uK8Ck
         y+jITfg81YppCDXcDloC2XfE9HIoxINnOe8DA2Rl2wp/Q90vgNWDOe8CrFye/fkxVyqT
         6+3WUGJWiq4rft3QzoOCelnoH27l52MTNKfr1881wpnqShRs1Yz8eaw0creaM72nnvV5
         Vp9Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bn+pL/Hm";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id e3sor832315ybr.75.2020.11.25.09.04.26
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 25 Nov 2020 09:04:26 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a25:aac5:: with SMTP id t63mr6307293ybi.22.1606323866493;
 Wed, 25 Nov 2020 09:04:26 -0800 (PST)
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
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 25 Nov 2020 18:04:15 +0100
Message-ID: <CANiq72=RuekXf1O6Fxrz2Eend0GtS6=E72P4T2=48SDqVcTChA@mail.gmail.com>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
To: Jakub Kicinski <kuba@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, Kees Cook <keescook@chromium.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Joe Perches <joe@perches.com>, alsa-devel@alsa-project.org, 
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
	intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-watchdog@vger.kernel.org, 
	selinux@vger.kernel.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org, 
	linux-can@vger.kernel.org, linux-block@vger.kernel.org, 
	linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
	linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org, 
	nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org, 
	ceph-devel@vger.kernel.org, virtualization@lists.linux-foundation.org, 
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
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="bn+pL/Hm";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Nov 25, 2020 at 5:24 PM Jakub Kicinski <kuba@kernel.org> wrote:
>
> And just to spell it out,
>
> case ENUM_VALUE1:
>         bla();
>         break;
> case ENUM_VALUE2:
>         bla();
> default:
>         break;
>
> is a fairly idiomatic way of indicating that not all values of the enum
> are expected to be handled by the switch statement.

It looks like a benign typo to me -- `ENUM_VALUE2` does not follow the
same pattern like `ENUM_VALUE1`. To me, the presence of the `default`
is what indicates (explicitly) that not everything is handled.

> Applying a real patch set and then getting a few follow ups the next day
> for trivial coding things like fallthrough missing or static missing,
> just because I didn't have the full range of compilers to check with
> before applying makes me feel pretty shitty, like I'm not doing a good
> job. YMMV.

The number of compilers, checkers, static analyzers, tests, etc. we
use keeps going up. That, indeed, means maintainers will miss more
things (unless maintainers do more work than before). But catching
bugs before they happen is *not* a bad thing.

Perhaps we could encourage more rebasing in -next (while still giving
credit to bots and testers) to avoid having many fixing commits
afterwards, but that is orthogonal.

I really don't think we should encourage the feeling that a maintainer
is doing a bad job if they don't catch everything on their reviews.
Any review is worth it. Maintainers, in the end, are just the
"guaranteed" reviewers that decide when the code looks reasonable
enough. They should definitely not feel pressured to be perfect.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72%3DRuekXf1O6Fxrz2Eend0GtS6%3DE72P4T2%3D48SDqVcTChA%40mail.gmail.com.
