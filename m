Return-Path: <usb-storage+bncBDYJPJO25UGBBJNM7P6QKGQE4XFJISQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B4B2C4A58
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 23:09:43 +0100 (CET)
Received: by mail-pg1-x548.google.com with SMTP id z2sf2357351pgb.23
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 14:09:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606342182; cv=pass;
        d=google.com; s=arc-20160816;
        b=L3ZC+4k+3HqBryaKz/E5SMBDKvlKv0pScTFqMvBcGwUONXGcX3xiB/19a/aLX6+sC0
         EHkSuRIAFRNpSH9/VdYy4wsWpl57HTt0rdGBQ9horneD0QeGlY/4FMcsOjhbjg0fZ/WX
         HVNh8wTOzuViLAKnc0bs4ZaXZdhv+KPwcVzGXYtzgVvt2pSjTqem38W6lNINAz2xboxL
         EPV8O04mhNRq+F6W6yrGGJ16XOd36rBe41GgR8hTz06/SlImXMBY0DoYTDy+GSMEcsAh
         v7Dx1/ONC5IyrZmP0gBdwDwB2BbKRH5tHzmzJ5mz8UF1czH1qizQVCEP9Ruvqlsj1Tm+
         wnCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ugskeXbPMOMRh8ggBR977UKwbLQ4mKyAJY0MOh799qg=;
        b=ttwrbIj7VZMr08L14RPO5RdPw0lUCN+7d/UU2f/l1pKZem1E2UAamv4BKvaHLtpRb/
         w2Ow/wVkV3tzP1Jcs5Yfhm34uSdBZXy+V7vkWuc2xCTSp6fXGcxmX5IEwAYSaYT15SBJ
         do4YeFsYhqlnRNbPbLfN749Jl0x7KrMNwDLa1HOMPOxel+omKo/208JYA3LE/dlkSKM9
         UoIu8GexrhEg4p9qm2zOB4XasBAIzMy+lReoemdoYiP17bCWeHV1Zee4MZ9Av8WUVrqS
         GKRdIMh3RPomgDUvlhj5eKqyRlycxaZZFP2pFSG7C3doY6HUWDyHxPSScnv4z9rDd7BQ
         P2Mg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L3KZpP3L;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugskeXbPMOMRh8ggBR977UKwbLQ4mKyAJY0MOh799qg=;
        b=GG4EuehxKQv1Ro/IR4MnVYp/0I27uwWd4IkspagtHXRlbDrMLdWhaqMrf1smPxh9zw
         SBbhF3hmIaS57IRhoYQy2f4f32kta2DoOxRgfWSq5qr3eFmHnJSycUpZjkAachcPFeR0
         HZGSf5pjVz3KoPALLBO4zj/UAINt3FScjDXis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugskeXbPMOMRh8ggBR977UKwbLQ4mKyAJY0MOh799qg=;
        b=KJgil7EMnyyQXlxgLLxcve+KKU8R26pMd288eq2CYtCvGV1aB9XnppY1P4dHT+jvTL
         XXbU1B3PqPf39h1d/ByQth5lC/34lFnwpjvwIraFWd3PUdo03rOwyDkQekn+k1DghZit
         Zm+7vGyDSlHl31UzwUH+SbJnkbGF0dgdp9y8nIxJ+pTq8mAHQZZ/im3NWfzBMEyF6ZK3
         4e7k1k84Jo7S5YyXFdnpyevcquu9viTw0nh3LF4htvwLeCiKb4CCCJln5XRjXvqMTBok
         6D8DqG+mMvtvaGWZgi4NFkmlXzjoIlQRkM3baAvDCMLGZV92aY+qzVrNGcXQZYzJFvgt
         I3cQ==
X-Gm-Message-State: AOAM533tdtCxZrxTfgezdGzA/arEFsZHStEai9LERNsYfRbPzZ2pCoLN
	81UUIQo1UqtrRy/K3AOPVhquiw==
X-Google-Smtp-Source: ABdhPJyMKBoe52n6KzuSUj0/cn82ddcyjxPZe48BTk7ZaodJgXtlbGvBjO66rZ9nKlna1Bc+2rSGTg==
X-Received: by 2002:a17:902:ab98:b029:d8:c5e8:978a with SMTP id f24-20020a170902ab98b02900d8c5e8978amr1457815plr.56.1606342181876;
        Wed, 25 Nov 2020 14:09:41 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:15ca:: with SMTP id 193ls36039pfv.5.gmail; Wed, 25 Nov
 2020 14:09:41 -0800 (PST)
X-Received: by 2002:a05:6a00:2302:b029:198:4459:e6c9 with SMTP id h2-20020a056a002302b02901984459e6c9mr4882804pfh.33.1606342181260;
        Wed, 25 Nov 2020 14:09:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606342181; cv=none;
        d=google.com; s=arc-20160816;
        b=zMYK5RuWnoAbdEUixt9k/IoKrdolhOoImd48sSiVnwsuEfJs4Ac0Q9gf1qNdrYOG2V
         m+O9EdZ1ytkqR3zxZ0dbFcMi3469Gn2QXWm/FRCDEKoUuIa/e8oiPirjWNxecwEFFi3t
         fkgsEoBnROw0v8LJ4+jSWavWECn1udou7b6/42PEvy57Xyxx4t0yHWzSmXbQjE+ThQNV
         EfUrtho+iRjXq7azVrFSWTilqr0JltVHHPexvGMcybZPfzVGWOmx3KwVTpBNUBOcCw0l
         ryAtfvUm+HoofyjvuqPpw33/pyMM3+ohrkk2I+pi0ZT5n2c5nsiVHUndPFT7FRzrBsYg
         fNAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/ob3FEJdYP5qhdHPeLajEb6PUDm9frxLF1mdXzRdH3M=;
        b=W4kHi51LsHrdw+bsEyTL9SYcAtroCMEnbF2eAIXg36/V1nN8bI+nMQ43uKvUxn0l5j
         zQq16mSonsnsUO9RRQQAL8nlft+xeTGpMjIZbidclarX2oJ3LxVCVfZuU1qz8cL3Sq5M
         mTbj9B5xTlNIvrb46vjTBdrg/5SSoawSk9pyNBnf5MYpr5lDB6PgB52iywiCXwz/0WOe
         VQvVY1Ww3KKOjlYiXxhENBVvqW0EUfdnHgXY6WK9xigzMQheIKsoLxLIZXgj0JcqCztr
         gEoLX0sdHbmmxhkIINJiuDlyWmLFhH++ftaRItAHD4uY3VNHJvidU5TjfDsznbednI1Q
         BSNA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L3KZpP3L;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id f4sor1864922plj.71.2020.11.25.14.09.41
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 25 Nov 2020 14:09:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:c14a:b029:d8:dc05:d7ef with SMTP id
 10-20020a170902c14ab02900d8dc05d7efmr4885886plj.83.1606342180784; Wed, 25 Nov
 2020 14:09:40 -0800 (PST)
MIME-Version: 1.0
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor> <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook> <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
 <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com> <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet>
In-Reply-To: <alpine.LNX.2.23.453.2011260750300.6@nippy.intranet>
From: "'Nick Desaulniers' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 25 Nov 2020 14:09:29 -0800
Message-ID: <CAKwvOdna5Zj_O=sB7Q0jHZX0BJSaakX=ZyftwQ_3=L3-ZB54XQ@mail.gmail.com>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
To: Finn Thain <fthain@telegraphics.com.au>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Kees Cook <keescook@chromium.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>, alsa-devel@alsa-project.org, 
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
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com, 
	linux-integrity@vger.kernel.org, target-devel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L3KZpP3L;       spf=pass
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

On Wed, Nov 25, 2020 at 1:33 PM Finn Thain <fthain@telegraphics.com.au> wrote:
>
> Or do you think that a codebase can somehow satisfy multiple checkers and
> their divergent interpretations of the language spec?

Have we found any cases yet that are divergent? I don't think so.  It
sounds to me like GCC's cases it warns for is a subset of Clang's.
Having additional coverage with Clang then should ensure coverage for
both.

> > This is not a shiny new warning; it's already on for GCC and has existed
> > in both compilers for multiple releases.
> >
>
> Perhaps you're referring to the compiler feature that lead to the
> ill-fated, tree-wide /* fallthrough */ patch series.
>
> When the ink dries on the C23 language spec and the implementations figure
> out how to interpret it then sure, enforce the warning for new code -- the
> cost/benefit analysis is straight forward. However, the case for patching
> existing mature code is another story.

I don't think we need to wait for the ink to dry on the C23 language
spec to understand that implicit fallthrough is an obvious defect of
the C language.  While the kernel is a mature codebase, it's not
immune to bugs.  And its maturity has yet to slow its rapid pace of
development.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAKwvOdna5Zj_O%3DsB7Q0jHZX0BJSaakX%3DZyftwQ_3%3DL3-ZB54XQ%40mail.gmail.com.
