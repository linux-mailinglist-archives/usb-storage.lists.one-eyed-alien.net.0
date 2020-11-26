Return-Path: <usb-storage+bncBDRZHGH43YJRB44C776QKGQEEIIQH5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 460942C577E
	for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 15:53:41 +0100 (CET)
Received: by mail-yb1-xb48.google.com with SMTP id e19sf3167031ybc.5
        for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 06:53:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606402420; cv=pass;
        d=google.com; s=arc-20160816;
        b=i4JEnVMJ2PI1mCylV7pDfxlFSdTWeiScpQg4jHx6BN8FJGURTbpBeOaUqNgQRF3pqn
         mAPAGE70RiqwLzN0nMc6+b+QVhaaTUV6/N2RJpFOq4Y/C+TZ7dhpBP9IGdktNpW2na71
         hjQGrg/EW6BYEhOqykm5XRI1azblIJ0zg8hdYYCQ6DGlewh6Wu3N7X2KrCVCLxmns0+o
         yonpkVWA3Y6hD61Y3gCwbC9ZTAZ6MD1hGHASnwvdYQE8Umxb6jyGsgwLoh03zO+SwWNW
         J4MdfdOPV09HJVnJIFL52Ku8AgFIAUmQBoQG1yU5Cyj+2g9ZsQ8N1OBHUhFZo+DkGTOM
         5Eug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=clSjXuh3YKWakyfxuHPY5kkq1BSn6WbSVjI8VKOFBck=;
        b=DMqj81vkrUdrfsgpqSHFxfg28WEuwkgv3Fd9+dsnCTBx2yVuN7SxQGTZnYCO3jB0yE
         CuN9waX+5sTXt3mAL3qPyKSHhiWJIGaYvnn8m4Z8kkdsTeCfz21tn3YhVacmpsR2H9UT
         vqIiMQwSmq5mpzV5+8qAtdOyiXQkjNfkSG/hKpS8H2xrM2ftjfFaSJHK0SXxERAtL89P
         7rDSoEKDYTQRH508xNcx4AMVeJPBHE0SRNJwAVblTDD7IwW9zER31s7ZRKpKoCfj0fTk
         Hpqd+SRZMrKScnjmm1A0bPpic8O4FKvawslULE0DTthmJ9AuteB3vi+KgC99q615DleM
         NC1A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QWuS1TBf;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=clSjXuh3YKWakyfxuHPY5kkq1BSn6WbSVjI8VKOFBck=;
        b=E57uKemIYUWJfrohv/cSdWZkLCcNW0TeBPM3QVTZpR5V/B0Ii54364Pd1gMTcuRVzt
         k26FduZ+QvO9SoPvIzxBcXCnJTmIwrLn6p7sE6fCm3glBNtByAQVL6sVvRaL0dn1H5GI
         HJJJJ6yCZpSK4bbB+Pzh2ZpRboKRqmqVgSpgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=clSjXuh3YKWakyfxuHPY5kkq1BSn6WbSVjI8VKOFBck=;
        b=SUPSLffrDm2L0SvSJYnlehA/MVHB9A4B2QItFQOA9C3r3/IZS64argIbwsI5JstOBL
         /M8RifeMaxe3d+hV7nJSNcwBZlBdMS3xHn80+kmdSyw9mWQdHQf0Q8eAymZ8aUDp6ake
         QpumbboyVauYWnQ9TAQionSYXKc1EvFxEhi05qEcCnoCfLoXN0MJfK8R/hrO5zPnbhOy
         +SfuSkK0sZHCcpQ5ZNeDG6CVq38FzosZA+x2tA5whueHvI+zuaQH8RRQffdicbb94RT+
         9Sgig0yAEmhFQiR7tLnXy4XQD1slODsE1AJ+0U2P1JNU9oWm5A85KYdiGav9A+wTicM4
         n6Kw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530YaiIHFAoi9Q3l2NZOkD23rtrdpR9aEZHxsPoqkBTjgxbY+mIp
	ryQwyS96mhNC71X9lS6z7xFB/Q==
X-Google-Smtp-Source: ABdhPJxqvlDseQ/rk95aRrFkdQvY/+dAQmkPb3GcvHIFMAolRKvl6VxMH6x2bLsdoOovVjBCXf7QRQ==
X-Received: by 2002:a25:dbcf:: with SMTP id g198mr4520782ybf.110.1606402420109;
        Thu, 26 Nov 2020 06:53:40 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:b581:: with SMTP id q1ls1233267ybj.6.gmail; Thu, 26 Nov
 2020 06:53:39 -0800 (PST)
X-Received: by 2002:a25:70d5:: with SMTP id l204mr3959436ybc.19.1606402419502;
        Thu, 26 Nov 2020 06:53:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606402419; cv=none;
        d=google.com; s=arc-20160816;
        b=jxppZZR1J8Jn2wq2Jg5MObkSD1I9Mh8WRujN8Dzi5kA7FfxNb7Q1fh0Mi5N7rhln0s
         AuZAb/fDQ+ePJN2Oy6rIQL6hbt7yW/lL997+qXE8+B9u5QC03/QohXMOBd8tLIpcxY30
         z/kDfiFcZx8VUO8SWQBAhKbS1DvTNOQLQfkDGTAnLaZyqXHwsoyGa0O+Mfk8ux0SCECH
         W0ZBUFCL+6dDN2rQ8EMCVZrk0R/TQdA1zFTkhHn5XLt/bBU1dt/sH2Qm/D+lbqSrPruj
         SP34KlQwG40AlIfHYZM5Yq6WK9pRgDzffKNh44Hcf0nLXfM9HjMLMtJGxik3mGz+JGf9
         MSNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DTotsfb8u+PB0eT0g4gTrA/vgT4HfiDZTYQ/geteWC4=;
        b=bmeZkc+Tq7of1il23jEI112vujwJdZiwrPzv3RzP8gDE8/2vpaPnl5j53nflKFoJ1D
         Fa79oZqlB0NhY7l/MNe61tnGFYYiHlXp+g9DPddI1+OZ2JWX4ae9hQ7z9JPm0haYX/Ty
         zsbl3pAO+Mc810bDf8/uUR2JvDdjTctRmYlPdx0+D0KUE70zeBA9GV7mXkojMwZDM9tT
         heBUohEv+nA95DkA3IHpLK+/MbWlA5/KKXId9d5UlBk/B0y1tXRvWeTpwcAbDiEEKwhW
         iYJLLhHdzh6U0wt7xpM2D+9UBmHOOVRUZaIQZvyecHvourxiX41Py9GQ62S+yjuJX4qD
         pGtA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QWuS1TBf;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id q23sor1739550ybg.2.2020.11.26.06.53.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 26 Nov 2020 06:53:39 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a25:aac5:: with SMTP id t63mr5128050ybi.22.1606402419264;
 Thu, 26 Nov 2020 06:53:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
 <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
 <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com> <44005bde-f6d4-5eaa-39b8-1a5efeedb2d3@gmail.com>
In-Reply-To: <44005bde-f6d4-5eaa-39b8-1a5efeedb2d3@gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 26 Nov 2020 15:53:27 +0100
Message-ID: <CANiq72nobq=ptWK-qWxU91JHqkKhMcRtJNnw2XJd5-vSJWZd8Q@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Edward Cree <ecree.xilinx@gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	alsa-devel@alsa-project.org, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org, 
	cluster-devel@redhat.com, coreteam@netfilter.org, devel@driverdev.osuosl.org, 
	dm-devel@redhat.com, drbd-dev@lists.linbit.com, 
	dri-devel <dri-devel@lists.freedesktop.org>, GR-everest-linux-l2@marvell.com, 
	GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org, 
	linux-afs@lists.infradead.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-atm-general@lists.sourceforge.net, 
	linux-block@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-cifs@vger.kernel.org, 
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
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-scsi@vger.kernel.org, 
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
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QWuS1TBf;       spf=pass
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

On Wed, Nov 25, 2020 at 11:44 PM Edward Cree <ecree.xilinx@gmail.com> wrote=
:
>
> To make the intent clear, you have to first be certain that you
>  understand the intent; otherwise by adding either a break or a
>  fallthrough to suppress the warning you are just destroying the
>  information that "the intent of this code is unknown".

If you don't know what the intent of your own code is, then you
*already* have a problem in your hands.

> Figuring out the intent of a piece of unfamiliar code takes more
>  than 1 minute; just because
>     case foo:
>         thing;
>     case bar:
>         break;
>  produces identical code to
>     case foo:
>         thing;
>         break;
>     case bar:
>         break;
>  doesn't mean that *either* is correct =E2=80=94 maybe the author meant

What takes 1 minute is adding it *mechanically* by the author, i.e. so
that you later compare whether codegen is the same.

>  to write
>     case foo:
>         return thing;
>     case bar:
>         break;
>  and by inserting that break you've destroyed the marker that
>  would direct someone who knew what the code was about to look
>  at that point in the code and spot the problem.

Then it means you already have a bug. This patchset gives the
maintainer a chance to notice it, which is a good thing. The "you've
destroyed the market" claim is bogus, because:
  1. you were not looking into it
  2. you didn't notice the bug so far
  3. is implicit -- harder to spot
  4. is only useful if you explicitly take a look at this kind of bug.
So why don't you do it now?

> Thus, you *always* have to look at more than just the immediate
>  mechanical context of the code, to make a proper judgement that
>  yes, this was the intent.

I find that is the responsibility of the maintainers and reviewers for
tree-wide patches like this, assuming they want. They can also keep
the behavior (and the bugs) without spending time. Their choice.

> If you think that that sort of thing
>  can be done in an *average* time of one minute, then I hope you
>  stay away from code I'm responsible for!

Please don't accuse others of recklessness or incompetence, especially
if you didn't understand what they said.

> A warning is only useful because it makes you *think* about the
>  code.  If you suppress the warning without doing that thinking,
>  then you made the warning useless; and if the warning made you
>  think about code that didn't *need* it, then the warning was
>  useless from the start.

We are not suppressing the warning. Quite the opposite, in fact.

> So make your mind up: does Clang's stricter -Wimplicit-fallthrough
>  flag up code that needs thought (in which case the fixes take
>  effort both to author and to review)

As I said several times already, it does take time to review if the
maintainer wants to take the chance to see if they had a bug to begin
with, but it does not require thought for the author if they just go
for equivalent codegen.

> or does it flag up code
>  that can be mindlessly "fixed" (in which case the warning is
>  worthless)?  Proponents in this thread seem to be trying to
>  have it both ways.

A warning is not worthless just because you can mindlessly fix it.
There are many counterexamples, e.g. many
checkpatch/lint/lang-format/indentation warnings, functional ones like
the `if (a =3D b)` warning...

Cheers,
Miguel

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CANiq72nobq%3DptWK-qWxU91JHqkKhMcRtJ=
Nnw2XJd5-vSJWZd8Q%40mail.gmail.com.
