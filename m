Return-Path: <usb-storage+bncBDRZHGH43YJRBWVW636QKGQE6KXJMDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B37A2C34C7
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 00:46:36 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id l23sf345675qkk.3
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 15:46:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606261595; cv=pass;
        d=google.com; s=arc-20160816;
        b=e2JD1w5yvVPtM0lXJKjS0BBp+yucolAMrev6TiGviVhH+xGBa5lhwKolZaxmIbJGg9
         UOD8tJEsiDBsD6CX+YRiPlO4ffPgs8Hs78QTFcGJJCnKoQyygDcDPDrPqYRSc3q3RMGR
         Q2UIjl3g4xPmZ0QnO/diB7QZG8IlzKMvVd8jPNXv1ye0NRr4TY+BKxKnvr+RrIoHV4RJ
         mIqowldUq3zImTIUUL/adTsOz/9N9kWmmsGCj1bSPmB7uV6AaTu9JpUC4hIdJP7FNUlw
         tzE51slS/DPpX4wPpExULJ/cc1romPhzTtUq9G04fCh1mdlaBiCo4IroCuhRZiQ0h1oH
         GCOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=DACIb+RU+mfADsvR79tsk4UFfFDK+kolsxqE1MRuMr0=;
        b=xScihkURXNgQHzB9/s+x6J3GQN9llFCaK4/SAKjPVtgbCHuXhawW2FeZFWZdm5C75N
         RAN/drVNwUSA82f+kWWtYAmbekne8gI7g3KLwwMM7gSv/vFgW8qbD8JWnqtx01wxgI1C
         cdygDQ2y3gjRvytx249PK0so2eWphJdbcK7cDF45mvqbKSynX7aymC9vB1AxfZ0w/vGv
         uY94NSgOWx54WNq50QJP0AzDUssCI/GvnIioLi527AuE797d6MZ0XG7/5Ws6KdvtO+3j
         ZBP7I6sePMAxlfRiO6eCVUNJu3TzCI5PQJmUirSIYgloH5Fn6LCVeUEJze3cu89Qy+ji
         FxxQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rGjC6KnG;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DACIb+RU+mfADsvR79tsk4UFfFDK+kolsxqE1MRuMr0=;
        b=L9OBM0hM+sWrEu8XPjAlx/0Dv9yiYXaW5BirkBZd2OZw15wdQQIflX1ssvb7jcb0B5
         VFbZgwERisiV7SIsPnugow6IMRn8Qd+9upBXdO9M6/Qd00/I/QtkjM7SQn0K7lsffP3g
         WWg0SxVHf2oNO+lIg14HnBnjZLMngHwfR6jdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DACIb+RU+mfADsvR79tsk4UFfFDK+kolsxqE1MRuMr0=;
        b=LnR1WfLP64EGNsEdmltl+aztTzyXyW9wdcIXfixaA7caGo6gcoBRP49zYarB3u9qta
         7XGnUeie/QC/42vAEnba+NnaybXIxsCFqyXahZlQe4qStyLLAh5SYopWY7pqrjED12i3
         eMcE3aA2nGs8Gch1XQAk6a3BvRva/fvR3LK4P0ep7c/N/Zcs6Fa/s2KGZubHh5+ogTfn
         /267sPHFYp/iwEGGDlRfQW+EU8nWgwldHxcrhm+qA8eWxiUj/aWP4hKMvzqugYeWkNZ2
         SBLD+Cun3NRvrhbTw8iIrbRN7TudqcyILVZsiWzpHtkn8+P9Dqneh8BCZkfx9f3xA8Q4
         bSbQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530iT4nNh7H6dvkCWIx/F/wQdyS6tnXViMsFUMKrNIUlvtGwtvQg
	TrUFtM9wFVFITbCrehDxwxSCrg==
X-Google-Smtp-Source: ABdhPJyk7X+ayuVqO0Fmr1iJ25r62/WOxlvjZaO8RABi7MfvXGQh6nc85U3WroNCeVliFoJi0L4AFQ==
X-Received: by 2002:a25:ec5:: with SMTP id 188mr946407ybo.387.1606261595149;
        Tue, 24 Nov 2020 15:46:35 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:610b:: with SMTP id v11ls309542ybb.3.gmail; Tue, 24 Nov
 2020 15:46:34 -0800 (PST)
X-Received: by 2002:a25:8884:: with SMTP id d4mr842362ybl.58.1606261594563;
        Tue, 24 Nov 2020 15:46:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606261594; cv=none;
        d=google.com; s=arc-20160816;
        b=KO7NJpAHeBOzf387h3PKhMDClZj9ZC/Ir8IG+cA68d5Axjx81z2B/Id1sJIWXKidSu
         mHs15WNRxEm2uJ485OeNA9to8GMHTNDTr62o7omJ0Mu9S7FEiLl0bI1LCVVztuHw9SNb
         gOW409SU14r3WJLyCmRUN0VxyeRM5tMrHPWjumbSKnsmGKqrwwEdTZi5iJ5kqiTS2nb1
         iyCKdu0UeuurDCRrFPzlKzKXe8gTWlScf+T1dMm7S8Y/l8RfsmAoddwN0S2o4tufyxDP
         u2hy/jps3NK8VWDpJupZf9fEWN4AVJP5pMUm0hc/YSPtUjzMGlY9NffDvXERfwWx32j1
         TtsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H+rGPaoJ9R3rr7zK4cuxMwlBlLpdlGUAwlQnvIZjZd8=;
        b=v+Zv8w+r4HZVhyMOXNtvnVjiD6uDm6ENhDUB2pKq3+jouteE8X/nyHeYYWHybVKYa2
         E7V1pZYKntTo13JN76y4GqW2FW58cQFiQGunL1LhffxhnrUzIAGfaH9B+rAx3IOvFNdI
         zDECh8mSTtz/IGtUiyEfTUjE2VMyV0q4uhLP485uQQHZxUSzEjxqxgHBtNcqCbwTUbac
         rCQ5KsxuTQrmUXDQfnWtGhjP3PEFq99NfvjWbOb7wkZpFjDTKn7bjkaPJGTJJt9FKTEe
         J6HzI350MubvuIb8NPvrcH5PCAB/tmzQCN6vPMUr+yyvByEPWiMEp75PzkSzH4QeA4yN
         m/8g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rGjC6KnG;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id e6sor104227ybk.73.2020.11.24.15.46.34
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 24 Nov 2020 15:46:34 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5b:40e:: with SMTP id m14mr627984ybp.33.1606261594309;
 Tue, 24 Nov 2020 15:46:34 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <alpine.LNX.2.23.453.2011230938390.7@nippy.intranet> <CANiq72=z+tmuey9wj3Kk7wX5s0hTHpsQdLhAqcOVNrHon6xn5Q@mail.gmail.com>
 <alpine.LNX.2.23.453.2011241036520.7@nippy.intranet>
In-Reply-To: <alpine.LNX.2.23.453.2011241036520.7@nippy.intranet>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 25 Nov 2020 00:46:23 +0100
Message-ID: <CANiq72=Ybm2MHmOizo1xQ_QYGuvbthtnLbwCkr8AFb8PcfmuQw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Finn Thain <fthain@telegraphics.com.au>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
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
 header.i=@gmail.com header.s=20161025 header.b=rGjC6KnG;       spf=pass
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

On Tue, Nov 24, 2020 at 1:58 AM Finn Thain <fthain@telegraphics.com.au> wrote:
>
> What I meant was that you've used pessimism as if it was fact.

"future mistakes that it might prevent" is neither pessimism nor states a fact.

> For example, "There is no way to guess what the effect would be if the
> compiler trained programmers to add a knee-jerk 'break' statement to avoid
> a warning".

It is only knee-jerk if you think you are infallible.

> Moreover, what I meant was that preventing programmer mistakes is a
> problem to be solved by development tools

This warning comes from a development tool -- the compiler.

> The idea that retro-fitting new
> language constructs onto mature code is somehow necessary to "prevent
> future mistakes" is entirely questionable.

The kernel is not a frozen codebase.

Further, "mature code vs. risk of change" arguments don't apply here
because the semantics of the program and binary output isn't changing.

> Sure. And if you put -Wimplicit-fallthrough into the Makefile and if that
> leads to well-intentioned patches that cause regressions, it is partly on
> you.

Again: adding a `fallthrough` does not change the program semantics.
If you are a maintainer and want to cross-check, compare the codegen.

> Have you ever considered the overall cost of the countless
> -Wpresume-incompetence flags?

Yeah: negative. On the other hand, the overall cost of the countless
-fI-am-infallible flags is very noticeable.

> Perhaps you pay the power bill for a build farm that produces logs that
> no-one reads? Perhaps you've run git bisect, knowing that the compiler
> messages are not interesting? Or compiled software in using a language
> that generates impenetrable messages? If so, here's a tip:
>
> # grep CFLAGS /etc/portage/make.conf
> CFLAGS="... -Wno-all -Wno-extra ..."
> CXXFLAGS="${CFLAGS}"
>
> Now allow me some pessimism: the hardware upgrades, gigawatt hours and
> wait time attributable to obligatory static analyses are a net loss.

If you really believe compiler warnings and static analysis are
useless and costly, I think there is not much point in continuing the
discussion.

> No, it's not for me to prove that such patches don't affect code
> generation. That's for the patch author and (unfortunately) for reviewers.

I was not asking you to prove it. I am stating that proving it is very easy.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72%3DYbm2MHmOizo1xQ_QYGuvbthtnLbwCkr8AFb8PcfmuQw%40mail.gmail.com.
