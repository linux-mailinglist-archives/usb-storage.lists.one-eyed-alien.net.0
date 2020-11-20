Return-Path: <usb-storage+bncBDRZHGH43YJRBQUJ4H6QKGQES37CFOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id A180D2BB90E
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 23:35:47 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id d206sf9101645qkc.23
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 14:35:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605911746; cv=pass;
        d=google.com; s=arc-20160816;
        b=MPC6QSfnKdyzPJvHbgSYQpjPOE16u6msihUyPzq7XpAit5kAC4gJzXplZD/Zp683CV
         V6Yb9WoA23rXCxAxe+0l7z4j71Hnrtn64gL3CrUrXsBFHUxTtvfv1W4a74wBtQMauOgo
         rWy7bi9CnFA/GncvZZY8gk/Z5n10ZjZOQEdfYBVZ8FDfFHc0SRVy/3XPNtjtRwO9VkrK
         u7l6g+rfDJIMYXSBiIDVR5EZTmiwyEVvLJboY4GEifz6mzy3LmjBuY74qa4npnqgWWid
         LwgoOn2yEswnqStezbZWHYv6kx8nVFgtCNayMCfQm3R2LRI9G5Ka5P+1MJyytR4QS+6m
         qQ5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=chkMUXEVpEVZG6kpq75ZLwAmyw+DNRZ5Cw9kvglWTuU=;
        b=s2YyRbyzSkRYNHT8+STvN3lA0MYmJFJUWIiuTIT08yooTUkk3OU42J7n507m5Pe6uj
         yOamPIYsOKiX4oJcbL9mIR2tMV+SRPnIShxqShjUETiOllZIzqDwhBJk+wAWZSjwvO/A
         908fMdLwMTygR9qN4/Kby7pFSVn/wrVmjwjSQ454X8ZzMX4t8SLKsuP9CBi1yL6BVDVg
         6Pb/uEeAjy08kRe1fBIk4y9xW2X6ZKoCKe7NAU3Ff/UxIWaFkJHKtiHIRqvpx4WxGPwv
         4i6BIRJjy85mrnFd/8c8I6s9rQ2d1sWgUg8VsywAev2ru99Ko4eH9trcFVkOXi8qp490
         uXAg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="th/UjqVc";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=chkMUXEVpEVZG6kpq75ZLwAmyw+DNRZ5Cw9kvglWTuU=;
        b=cRGZzMCet5uinYoCyS2UAi0aYXLFeDHH1mMXX0fhfwZup+YnPOoRTnFliWue/zDXgC
         X+1Ww2mxbquf9LeHRYkusJ9HAfbS03vhGNl1a2ntCbGaB24ph8XoK0WD0Kna1evUDeXt
         TEniGi9Nl6s8tj0i6cwveSgNMG/h0IPGU/1ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=chkMUXEVpEVZG6kpq75ZLwAmyw+DNRZ5Cw9kvglWTuU=;
        b=ftAm6EVvtC/mBHN6+drtan3COlLPaFHTvejUFF/KEnK6dMVdbVSn7aXN3/BBVABosq
         XBaCZOn9YMz7NJdj9B4kwSS7rt4TLxfuMx49WwhvKSZH6Zs5qmKWn+9xSdQweD3dRYjK
         8SXr+TsBrwlekLHjIgSPC4nOS/uhtD5Imy8DLvwSyKyXt5spNYROXs61Hnl1SZrNXy+3
         z5fPw95w40/CW0PPL404jeNCW2It8Oo1aNCPjO8Snv2y19Z+ikIkeU0Icw6MJgqV8g4d
         brFArNwOlAnmoRYngheX8m0JXttnTon6L8TjOM7c9ZWrlGsu9h796a5+zGCMzu2qhrRW
         LEZA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533M4VU4KYoPsQNCDZeRZQLJbAXL2HWvUKJ44Y5cSyA2zIb5psuc
	WJhPGDUhND3uGtZP36GsAswDjQ==
X-Google-Smtp-Source: ABdhPJzbzOr/aMyNzAIwW7PO/rwmzRM7iKezzgdSgkm4ity5Rgx9bqSt0AJ8dF2AK+YQ+U4LkIMBXw==
X-Received: by 2002:ac8:1089:: with SMTP id a9mr18843208qtj.111.1605911746596;
        Fri, 20 Nov 2020 14:35:46 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:584e:: with SMTP id h14ls2907205qth.2.gmail; Fri, 20 Nov
 2020 14:35:46 -0800 (PST)
X-Received: by 2002:ac8:4d92:: with SMTP id a18mr17635581qtw.256.1605911746228;
        Fri, 20 Nov 2020 14:35:46 -0800 (PST)
Received: by 2002:a05:620a:40cb:b029:173:a3ba:aab9 with SMTP id g11-20020a05620a40cbb0290173a3baaab9msqko;
        Fri, 20 Nov 2020 14:21:29 -0800 (PST)
X-Received: by 2002:a25:3c83:: with SMTP id j125mr5334918yba.307.1605910889342;
        Fri, 20 Nov 2020 14:21:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605910889; cv=none;
        d=google.com; s=arc-20160816;
        b=CWBQceP5nCWzDPKatHntSobU2A128inP6Ua0UK9E/mF/8z2vBpfkbwLMbLo8zTztTi
         fa3FcWREtBCV6N1p6Pzzav8YCs5Bwl3K8Jcp0HEXY847e0u5cFQI3Opfxh0cXB/Hj6AN
         4AeEioHxDbt3dGOUFJ5h/wHEy9kmEBAfd12WNzLbBAY4ZHGzxuEyPYhOkz2jafDUi9NO
         RGP4VkFFXWzUhz1ZGtiZw5gvIYCpS8v6wxp/NAZabKqqMVqAKL9Ejaj9KwbBPYbkmPAU
         cAsBB8UkSl+DhPZUhaZU5rSi3xUZclm4lZAX3HmDH69GztMUSWmt0LT8SgiWIQLCUMwk
         gYxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=29/AaAKKWIjlxKBDiu42mXe16/c3LUzQvTdn0Wctw9g=;
        b=fhRGtCKaA8IbSjcPe2POWruPvBJ0qPdn0xh2RambPq1+1ap/uaohO1HxJOC5uF+l//
         opEQCImGt3hAEKn9wX5GmEpsL5IVITVWCT+wUPBSJKRG6QpKqDAp0OYTDy0TmkZOnjEg
         RshSlf6Lgw0p5oDtz27dg0S7y/TR0fKVF/Po1ktRWivuB/k8kTlzPVGJg4uv9y+Gzx0M
         iXil/qJZ4Eqd8Q2GHvI4yFZKoYVnAYkA3waLZ55yTn0md6KNBHKP2iALl5o/V13241Jg
         bOCOqA98zSSjZ7YHVN+pYnYXonoC19dnL9CbjK0X47w9TN/HxXcEYA3wYgQZ4eKZqnvx
         KQEw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="th/UjqVc";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id t45sor1343122ybi.47.2020.11.20.14.21.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 20 Nov 2020 14:21:29 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5b:40e:: with SMTP id m14mr22113400ybp.33.1605910888617;
 Fri, 20 Nov 2020 14:21:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org>
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 20 Nov 2020 23:21:17 +0100
Message-ID: <CANiq72=E_gEVvqUUTSqU4zegC2=yZSTM4b=4G-iofp6d3=UgWQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, alsa-devel@alsa-project.org, 
	amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org, 
	ceph-devel@vger.kernel.org, cluster-devel@redhat.com, coreteam@netfilter.org, 
	devel@driverdev.osuosl.org, dm-devel@redhat.com, drbd-dev@lists.linbit.com, 
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
	Joe Perches <joe@perches.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="th/UjqVc";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Gustavo,

On Fri, Nov 20, 2020 at 7:21 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> Hi all,
>
> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.

Thanks for this.

Since this warning is reliable in both/all compilers and we are
eventually getting rid of all the cases, what about going even further
and making it an error right after?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72%3DE_gEVvqUUTSqU4zegC2%3DyZSTM4b%3D4G-iofp6d3%3DUgWQ%40mail.gmail.com.
