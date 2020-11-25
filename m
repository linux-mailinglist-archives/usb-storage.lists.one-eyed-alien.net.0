Return-Path: <usb-storage+bncBD2NT6VEXYMRBK4K7L6QKGQEH4XGI6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D12C44D5
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 17:24:13 +0100 (CET)
Received: by mail-pg1-x545.google.com with SMTP id t12sf2071532pga.5
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 08:24:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606321452; cv=pass;
        d=google.com; s=arc-20160816;
        b=yOu7EXBqQmBQWr4gp9u9/VCVlLW9mbZh6mD8PSv2HZpim9dD454aayf1EO5z2sB2pD
         zH7qW03WWreivLmndq8eZuXljwq6KJJyakzciruaqYGOzE8BIKDWNlKyIn4dPOh/p73H
         QuhHqyWHB0hmY/FYlI7ov4e7ZsvM+Ao8ivnlwXfCR3FHWsKkoufExfYNaYZuQQ2ME//i
         lKKy7mB6DnTGgUoSeWjo7y+mhm2dvy2NATKS+RTs25x+lYOkipbWo1ffk7A4bmOh5b+r
         AkZTtiabm0XUByN4E8xOVceld9RuFe3uayyHd6xI+3pnlKEqR5xs5YTyJBlWdZ5SpUCh
         JUiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Q3fGeulkdrBdUQSdNGMwnrkqD6t2FtZHPRiZQlsNWqk=;
        b=CWdlH/KyKx4YWyjpUr735B6ZhCIRPLliyto8jUFhn9y6jGnheOaN4j1GWbQ3cdYbqH
         +4YPpXFJZNAzl7lIOg9LAn8HN3QGJPy5grMp5e9/HiAY+5rq3NBjg/iEt4r7offBypbB
         DaGtgAhzD9SledDK9jBfS8hOVlQJtxmhTiLhMdInIufK4Gg4Px6aS7RYSJCGWr216UW3
         +PImluPnFbgplLyjUhc9VuPHOaTV7VTvzsARGydnMhhs/NXabs76SgHNQ0dE8C6HfwTh
         T0I+hNTV1i/ZERwuLrH6y135qOK6mq6jh+MAXtgLGu4luM3tNwDm9eG446r4Sfl9CDFl
         GzSA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o0jPLXU5;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3fGeulkdrBdUQSdNGMwnrkqD6t2FtZHPRiZQlsNWqk=;
        b=DuRr09CptRlaZZZeD0BIS1pXhHZUpC2aFTJ7XiOPPsDqNVdjhYLurRd3KfelO8YHIq
         AEfhVUTlIn2ek9FSrl3pHvpupM/C0/dQ5vts0BwDRPjvu4iNeysYXFGvxiLYvmsEKKiv
         9/+Zxe8WvPvYN+6NHRsDmHTMUljV5AXlhxBm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3fGeulkdrBdUQSdNGMwnrkqD6t2FtZHPRiZQlsNWqk=;
        b=CjWjhvBUkXKP8uQ1VwLLr2wNJ2hcfnZAhUbflJI7YLBD3TdG1HgJcaVy/Uo1vkTUu+
         rktDiK/5HnLP3p/C9VX77BhExVb4LNsQwKjq3JvA+H97V+TOeOJxagsncuKpQifpLTx8
         fytnY7KM1YLyaFTwtVj0Y4DNDPU1HQzSMR2ImFZQkLAYDwO0cN1yBt0W1J/HlHApiF7H
         NsJJn8yCfUG0tXkh0JPhrOm/0KXki84pcaOjxlkXbkXhqAcr+wICc3X/RdPeTDqHGjgH
         rD6hPKhrPsU62TxlydrTrG6DHQk9VPGzFuO2YL6chl5ev6Uwql8W+J1SaTrrBgYfJk3a
         jUxw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532Xw6JqC2papk2oCU+MZ+4viZ478hAh/rP0jY1lR/B9oJr54D35
	UJMRl5Wiu4AFQVOStxM+oG1wLg==
X-Google-Smtp-Source: ABdhPJwujLJSiFi1dGwl95jsj9LPf86S/KkFgr6omqthPHdXnLe/5nt1rHj/SXmW/yixRcytp3sVCg==
X-Received: by 2002:a17:90a:5d17:: with SMTP id s23mr5258639pji.208.1606321451950;
        Wed, 25 Nov 2020 08:24:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:f994:: with SMTP id cq20ls1871526pjb.0.gmail; Wed,
 25 Nov 2020 08:24:11 -0800 (PST)
X-Received: by 2002:a17:90a:7101:: with SMTP id h1mr4945986pjk.26.1606321451349;
        Wed, 25 Nov 2020 08:24:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606321451; cv=none;
        d=google.com; s=arc-20160816;
        b=q/QM1mylf3pSCEWbI2ueb/SGsEPUkIqEq+tmPatOXo6k+1nToJipG+e7ESRAG8S+On
         bQfbX5VwIMMNnHq6cnL/r4HPXK3l48NKuYyostQnSvrjNFqWKHBbEvLvYBKZCA5+4bcq
         ExKN0H/J6bBcTfGBPCXPwszV+XLFuUMZ2CPFGb3UJa8DkDyVRdMJgCaq/z7kE52sB1gi
         pE7Zdwq3QJLOdruVXcJFfReSEd0AVoyQui/lOpc8hzOEUGDo9nLAMMvD58C2BjxRRXfN
         CmYJr95rrDdLfORzfIrXSX6tCZAd05HTqyGkvjeV387Y0cYzlGpzjZVpd8oyXRGl8eAw
         4zTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7HfWkGcJYmo34Hig6L/0TZy18fjmF8mNYQIqjtD4GMw=;
        b=w42V65i4VmsOm4xK+xHPs244OKhiDhwCPLJDXOal/ttMl+sf7tANgdBG1dSnAF3RG2
         znYjoR5111ROXFleLoJI1TKEoQZa1UzV3q0r6cPuXcLSJKCWErhKRSlL9veAhVefThYY
         JUAv9E4czW56FQ9Pb4dLG8qcws2M3BGoM/72tTdvxGj2/CD5o6uYn12c7STuO/Wr8Phn
         yScO3ajiap09Zwqa0F5m9h3kE9ZKJA22CB3eWL0S3nwn0+vNtO38ckYx5VCowUNZ0sdC
         6dX9/HpjbxWTxAxasx1ZyVO2kju//c9vqE7d00Z8OGzSdSAgwdui8TnthbfajqtTwzKw
         zXhg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o0jPLXU5;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id 15si2539356pgn.201.2020.11.25.08.24.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 08:24:11 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 867952067C;
	Wed, 25 Nov 2020 16:24:06 +0000 (UTC)
Date: Wed, 25 Nov 2020 08:24:05 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, Kees Cook
 <keescook@chromium.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Joe
 Perches <joe@perches.com>, alsa-devel@alsa-project.org,
 linux-atm-general@lists.sourceforge.net, reiserfs-devel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>,
 linux-fbdev@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Nathan Chancellor
 <natechancellor@gmail.com>, linux-ide@vger.kernel.org, dm-devel@redhat.com,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com,
 bridge@lists.linux-foundation.org, linux-security-module@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org, Miguel Ojeda
 <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, selinux@vger.kernel.org, linux-arm-msm
 <linux-arm-msm@vger.kernel.org>, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, Linux Memory
 Management List <linux-mm@kvack.org>, Network Development
 <netdev@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net,
 linux-mmc@vger.kernel.org, Linux-Renesas
 <linux-renesas-soc@vger.kernel.org>, linux-sctp@vger.kernel.org,
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, "open
 list:HARDWARE RANDOM NUMBER GENERATOR CORE\"        
 <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com,
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
Message-ID: <20201125082405.1d8c23dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
References: <202011201129.B13FDB3C@keescook>
	<20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	<202011220816.8B6591A@keescook>
	<9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	<ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
	<0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
	<d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
	<dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
	<20201123130348.GA3119@embeddedor>
	<8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
	<202011241327.BB28F12F6@keescook>
	<a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
	<CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=o0jPLXU5;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, 25 Nov 2020 04:24:27 -0800 Nick Desaulniers wrote:
> I even agree that most of the churn comes from
> 
> case 0:
>   ++x;
> default:
>   break;

And just to spell it out,

case ENUM_VALUE1:
	bla();
	break;
case ENUM_VALUE2:
	bla();
default:
	break;

is a fairly idiomatic way of indicating that not all values of the enum
are expected to be handled by the switch statement. 

I really hope the Clang folks are reasonable and merge your patch.

> If trivial patches are adding too much to your workload, consider
> training a co-maintainer or asking for help from one of your reviewers
> whom you trust.  I don't doubt it's hard to find maintainers, but
> existing maintainers should go out of their way to entrust
> co-maintainers especially when they find their workload becomes too
> high.  And reviewing/picking up trivial patches is probably a great
> way to get started.  If we allow too much knowledge of any one
> subsystem to collect with one maintainer, what happens when that
> maintainer leaves the community (which, given a finite lifespan, is an
> inevitability)?

The burn out point is about enjoying your work and feeling that it
matters. It really doesn't make much difference if you're doing
something you don't like for 12 hours every day or only in shifts with
another maintainer. You'll dislike it either way.

Applying a real patch set and then getting a few follow ups the next day
for trivial coding things like fallthrough missing or static missing,
just because I didn't have the full range of compilers to check with
before applying makes me feel pretty shitty, like I'm not doing a good
job. YMMV.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201125082405.1d8c23dc%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
