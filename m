Return-Path: <usb-storage+bncBCT4VV5O2QKBBCOS7H6QKGQEMPPWW5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 390782C4224
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 15:24:11 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id z9sf1078653oop.5
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 06:24:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606314250; cv=pass;
        d=google.com; s=arc-20160816;
        b=RBfxmho2WHpNtzprDa4KJBtpjaNPt1RO+uYfcTlL/tZSVTCyusMv+WBPiaXJNEfzfA
         hGsLxZGEoOM/eJykqUKuJCo0XoaKrwuN+st6v2nmfxkda7A4FwrMZlij5JIVW11RA7V6
         AeuWgWXZMg3brYTMqmhkDBQsvgzlsygCVE44FoIc4FJCE7R5PW2uN5vkZIntif4NvGT9
         4u0ErTiyY5m5N8kOUSqRckKQ3ZdOHcVXxyY9nS+7AaTCBJI8z8bay98blYOeR96t4KIG
         0vBHfRB4pW/I8VTIICNWwdzxsLoz1kt//guGuHDCTN1f92kTRESI6/473v3sUOslvvKu
         cQYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=tTwEBxtFoFafeBcscjhUqvU7hfnpGE8t2rrR7lhBPCQ=;
        b=I5BoX7OQtOcPhF6gz2/5JIrVZbNy6dlXjlsIgmmTy6oIWsLyvcc47wqkB6fsm5qDI2
         ekOw9W1DinQOINwI59cxHuarQCT2vWsDlw+8FySPk4zrMyTUgyxMG1DQS0LbBwu6fmvI
         xATQlMHqNbQdXVAN72ETFPq5iGsvKVZCJ2kpijn1ddNRhi9lHybhuno/MdEHMpS3d/Vl
         5AlRI8DUSJC0OaKkjscEFLjnooF2M5BJfIYd7NgZffOlvvr18lMpXPP+yPHRWAzIIQHy
         do6eWaaUPVNx4x1/vXisuKRpmHEpTUfzasT3ZBVy/5hY2ShmbvY79uZlcyJrq860c4Sk
         zFNA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YCtEdyPA;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tTwEBxtFoFafeBcscjhUqvU7hfnpGE8t2rrR7lhBPCQ=;
        b=JsEoQUG/DY8sU4sCyEIuun4yNcqXwqpL8ElUHNqToFPwv7V/G3N0WxfDArvF/685Fm
         v7JYjkamhpMoWLVwMbRbHLGmsxICnvbINMSPm6Kctak8DOZ+dLgX9mT5FZP8b/n68or+
         EnkKg8MjYSJdtmc+aUHjOQR+xn2LfxIg+DLU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tTwEBxtFoFafeBcscjhUqvU7hfnpGE8t2rrR7lhBPCQ=;
        b=gglnDgzaMCntctQaPQ15PZYyPUobCYFkUiGQitHvDem9k7gNx87KrmZdwouXpvDira
         WtlFjgbvZYsxJ3MARDuMIFwsPfEEpHxcvl3bkkzXSWysgHEEuWDlcOjawIuwlziabOTP
         0344xnYZI3azKqy3k7XZRIvkIHguDG9D3bYOrkTlFUKfsZP29Iq3GfB86KFtDCa5XkfJ
         OpbolZ9DAAfW7dsFKiKBSRhR5yn18hLF1x8Ufa6ttWfhnIlQRc8Zsym6uM4rqv+C3rnQ
         4d6AnwUjzCzRL8trXpNYWO6QD5ZAN+dzH9enP4rvD/TkvvE1NYA+++uJHkAIfhVnts4x
         +Scw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5321Z04IYk3UbRlUhNsg5LiZ7GBEEKgGxI0HfW7E34lhWGNwTqqz
	ZmTdgYVXYoD2hTOYnNHYPqD/CQ==
X-Google-Smtp-Source: ABdhPJze0k4aDi1Z6gvDKznQWTePhW0R0cfKp2bpilJ0SPJa359dXu1dd8D5Z1A0PIK1RFxFkDkWhg==
X-Received: by 2002:aca:c4c4:: with SMTP id u187mr2383847oif.54.1606314249886;
        Wed, 25 Nov 2020 06:24:09 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:dd84:: with SMTP id u126ls596657oig.6.gmail; Wed, 25 Nov
 2020 06:24:09 -0800 (PST)
X-Received: by 2002:aca:1916:: with SMTP id l22mr2393350oii.79.1606314249602;
        Wed, 25 Nov 2020 06:24:09 -0800 (PST)
Received: by 2002:aca:54c4:0:b029:e2:dacb:9b84 with SMTP id i187-20020aca54c40000b02900e2dacb9b84msoib;
        Wed, 25 Nov 2020 02:37:29 -0800 (PST)
X-Received: by 2002:a62:864a:0:b029:197:ad58:4184 with SMTP id x71-20020a62864a0000b0290197ad584184mr1902036pfd.55.1606300649103;
        Wed, 25 Nov 2020 02:37:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606300649; cv=none;
        d=google.com; s=arc-20160816;
        b=x0g97qJ+LDdJ1ZukFq6G90I4Eh68W/eEq4FCRVz6ZcrW0N1z9t7I79Gyg4nbtaPryF
         8tpR6vXxC//hp/uW66NSdHDy1sM7mvQufOeglhBAGv2B+SsLhi3CjhXSPyS6VgsLkWyu
         Aaa34BvLfpwKy4YGDMHVqV0yy3wftRzbu6kSGvi/6Vqht7GcuEIeLg50qkHe5HUBfICz
         vFpfzv6EYgHhNYxt5y8wOMu9auK4MutbzY+jCDXptn0zi4q9KstOBHq1ls/b2VqecC+p
         B4utBV6zwRkjfOMNZyZGclovFIhcexPIHf1RaLF6xtp8GED4M2twWs6/bNC+giiOtvua
         wXRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lG3+Uwz8lZti6FSb8xjGyaQfdt5OwV03xvf6+L3ZqWc=;
        b=VQOhn9Mj3CXxzcJ3kgVZBrs71H3L3rzdCrLubPIkx+pkFIpHG1k3DDttnK2F34VKhN
         Wrl37UIY9tlD8HWqS0Nh2aeI03mEUEiIq4Vp9X10vhce5qRqe3+O32/9gle5XvMURgsp
         yiU9gmW0/XDf1yN1ETbLsbu8QUwYkzOA+paRnuiYC3XFCm2DIYCGKyZUgHSgmX9oxjD2
         l2lt7y63sY5jkUJQfCSigvLScnHCanHWeu8OsgKHg8aCY9rqvt0O7CoDne0w7DeGTlYr
         lM26amJPqzcUj1melClJQehsOQRbw0mJF5KRanLnKVU5q9ifvZ+fzP39y6J3DvulYQla
         OpNg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YCtEdyPA;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id y4sor1049455plk.32.2020.11.25.02.37.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 25 Nov 2020 02:37:29 -0800 (PST)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:ead2:b029:da:2596:198e with SMTP id
 p18-20020a170902ead2b02900da2596198emr1937529pld.21.1606300648824; Wed, 25
 Nov 2020 02:37:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com> <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
In-Reply-To: <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 25 Nov 2020 12:38:17 +0200
Message-ID: <CAHp75VfaewwkLsrht95Q7DaxFk7JpQjwx0KQ7Jvh5f7DUbZkRA@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Jakub Kicinski <kuba@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	ALSA Development Mailing List <alsa-devel@alsa-project.org>, amd-gfx@lists.freedesktop.org, 
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org, 
	cluster-devel@redhat.com, coreteam@netfilter.org, 
	"open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>, 
	device-mapper development <dm-devel@redhat.com>, drbd-dev@lists.linbit.com, 
	dri-devel <dri-devel@lists.freedesktop.org>, GR-everest-linux-l2@marvell.com, 
	GR-Linux-NIC-Dev@marvell.com, intel-gfx <intel-gfx@lists.freedesktop.org>, 
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, linux-afs@lists.infradead.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-arm-msm@vger.kernel.org, 
	linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-cifs@vger.kernel.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, 
	"open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>, linux-geode@lists.infradead.org, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, linux-hams@vger.kernel.org, 
	linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org, 
	linux-ide@vger.kernel.org, linux-iio <linux-iio@vger.kernel.org>, 
	linux-input <linux-input@vger.kernel.org>, 
	linux-integrity <linux-integrity@vger.kernel.org>, 
	"moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-mmc <linux-mmc@vger.kernel.org>, 
	Linux-MM <linux-mm@kvack.org>, 
	"open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>, linux-nfs@vger.kernel.org, 
	"open list:HFI1 DRIVER" <linux-rdma@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-scsi <linux-scsi@vger.kernel.org>, 
	linux-sctp@vger.kernel.org, 
	linux-security-module <linux-security-module@vger.kernel.org>, 
	linux-stm32@st-md-mailman.stormreply.com, USB <linux-usb@vger.kernel.org>, 
	linux-watchdog@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org, 
	nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org, 
	oss-drivers@netronome.com, patches@opensource.cirrus.com, 
	rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org, 
	samba-technical@lists.samba.org, selinux@vger.kernel.org, 
	target-devel <target-devel@vger.kernel.org>, tipc-discussion@lists.sourceforge.net, 
	usb-storage@lists.one-eyed-alien.net, 
	virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, xen-devel@lists.xenproject.org, 
	linux-hardening@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YCtEdyPA;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Nov 23, 2020 at 10:39 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Mon, 2020-11-23 at 19:56 +0100, Miguel Ojeda wrote:
> > On Mon, Nov 23, 2020 at 4:58 PM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:

...

> > But if we do the math, for an author, at even 1 minute per line
> > change and assuming nothing can be automated at all, it would take 1
> > month of work. For maintainers, a couple of trivial lines is noise
> > compared to many other patches.
>
> So you think a one line patch should take one minute to produce ... I
> really don't think that's grounded in reality.  I suppose a one line
> patch only takes a minute to merge with b4 if no-one reviews or tests
> it, but that's not really desirable.

In my practice most of the one line patches were either to fix or to
introduce quite interesting issues.
1 minute is 2-3 orders less than usually needed for such patches.
That's why I don't like churn produced by people who often even didn't
compile their useful contributions.

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAHp75VfaewwkLsrht95Q7DaxFk7JpQjwx0KQ7Jvh5f7DUbZkRA%40mail.gmail.com.
