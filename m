Return-Path: <usb-storage+bncBCENHXXO3EBRBD5C6PCAMGQEDLLVO2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id D907DB2528B
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 19:53:21 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-b42bcfe9cf3sf3629188a12.2
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 10:53:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755107600; cv=pass;
        d=google.com; s=arc-20240605;
        b=IRD2BdGUetmr6puL620Si0bZ9r8SwhSamnEtMJJYmYpMGHMBeggwCylgKogaH7aklN
         4N+8hlPebiSH4eUVDJJ/sTwohZHIhkHXSds+ee/eIf4mp3SzwdGJxQGfw9QO/gXwhanw
         HwnDhUUeC9UcPQK3X0NIW7IouoHpTWoJhq5CnbW3D4/BPEoSB6qPeVrnhF2AZnf9jZbm
         91o79eiGoV0DpqtyRBbviBqGOySswZu5eXcL4pbXwpHQYM3PasicKVc4qhA9O1SFZr2L
         THx7KUdMCZL/ErT4+wsNR9jBDxvY0GwXiOreEgBSMJp8IKMArt6ruhD7Bo+07toyKQsi
         jXKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=YJZoZOhey+vhfDiUkHkBoeQ88W+S5J4uYj2fic8rTEo=;
        fh=EmxgLX6QP7BiRvUSXmd8MvXZWuHRSucaqrDrFb7xQvE=;
        b=KLSnW8FED10e83QkWEZh6op3Q83ykR91yMlKLzeH6c+tYjT+wuJCBUT+J24bDwqVhT
         DLDOp/ri4MkwsZ1gIfRN3O5zvLHfoZmENW9oFbVjejg+Cx2VCWQEqFKZ1PfAtqWDmsnq
         DvEaWqPcg0EoADlnPyewKZ/wfuf55mFgdmpK5Em+J1531oLwPgdhpHhbokq9rFpZfuMe
         XSgJLVJpsCxOBnk498CYOoHPuhWBJiMmkrIsEywZQ6GEE5xAuovlGe2cvK8IXxBmGHFG
         4db2ROHNE1ShGNwBB2ep7uCNk6etMN6YR42fKS2RVsqaRC/vwlejuxhc7X40XJzwIPYm
         KMkA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ujv7fI0f;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755107600; x=1755712400; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YJZoZOhey+vhfDiUkHkBoeQ88W+S5J4uYj2fic8rTEo=;
        b=R2uU+tG3ZgFJUyjn8IC5e4WkN7VQb4bI/v4rsux2093O/8QSUa1yKJPp7Fiuvkxiwu
         xA27adZ2V2/Y2ria8ed26XE50fprudQREdSMQZFayvAqgKdRXqm7s+5PyORfrjwKr8q6
         h0cM/ZWJdSKzrRy74RRAybmKWtXibKD+VoJ94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755107600; x=1755712400;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=YJZoZOhey+vhfDiUkHkBoeQ88W+S5J4uYj2fic8rTEo=;
        b=oLZf4H582EMkwVSCIhmD+uBAmP25ZPuqKVXgPrO6eaTxpYMDzmgwgucnXVwXzB+Nps
         Nhbnm26t9Kz9hMkiMNeGsolaLHP+bQ1+2rEK6GLPLfHZGqhgVF6UqmrzLTFy1oz96h+e
         Yy/hGCJYHVKP6Er16D0Y+7HsbQPY3ZoIiyfN9lHUiTrg2uyziU8EMdKq91t7dkO5VSeN
         gnoSCNwKIYE0I2ChKGQ+ZDPwE1gtgFjDV/7JarW4yVjz8Y9ZKQStgiNijWFC4gE2OCna
         hhEwwSgp20fnRzU98llraAgm0X8FzrQTXjPeU++ZSx1gbkjQql/VMBR0mc1X+muP/bF2
         0VXQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUIxnZFHtbXGi8zYh2iQVhb1WifPRVsnIiQMO3rmZVQD1zgNfYeJo+rx6Nus21UjROiNz+3sA==@lfdr.de
X-Gm-Message-State: AOJu0YwXxN8/Mvgc9pgctNXUAO92LsuuqVOk66gDMB475DeeASUMn/YZ
	tg+Zb+agkHR0xrc6RAZ0AA6SCqLiaFE60jH83iMTbrvnWf/7poKO0PNSeqH6ViySQlY=
X-Google-Smtp-Source: AGHT+IEAF/fAx3FCLIaXTy+nJ9NmW85WAMN8jpsANJK36/xqr/040HUf0wvm97gOgJ44kJwSowXTdg==
X-Received: by 2002:a05:6300:218b:b0:238:3f54:78ec with SMTP id adf61e73a8af0-240a8b8cc65mr7330474637.46.1755107600027;
        Wed, 13 Aug 2025 10:53:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcm8O2V9UemMFM60MUXzQIYt0b7us6lGq/8UgUZ9NKFaQ==
Received: by 2002:a05:6a00:1996:b0:76a:8a79:4fac with SMTP id
 d2e1a72fcca58-76e2e557189ls159828b3a.2.-pod-prod-04-us; Wed, 13 Aug 2025
 10:53:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVJMMZitYdLGEm0bAQCkvW3X2v3OoBbQjCTIyjoN6vvEd+cur5uj/QgMddl6boOhIB/kK+xhAqN92Oq4A==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:7345:b0:23f:fa6e:912c with SMTP id adf61e73a8af0-240a89fe367mr7107619637.2.1755107598435;
        Wed, 13 Aug 2025 10:53:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755107598; cv=none;
        d=google.com; s=arc-20240605;
        b=JEZctdsDssfnC2PKbZOtLE/dJ8Gy3gQmXEphwAsac2WqquYgL0te3t18KNeYMO1hrY
         j/fM7XgMESY9y7yDaE91Rjr8wo6/BY2dmkego+nNc+iOOsSxQW/BQoUcBAcktp41YbqT
         9n6ghdd+X2cAnm6ZGMGDbH17fZme1x9iFVqX1xUbr0fpqrVY9x9OKsT3x47lHwEFdYtj
         zH09Pm2sHQYhwhMr8gyFWOEGgHJyxsDx0t6fhGHlXjKwVipBw7WJnjrSxhZfHeXLA7l1
         4K3CIUfFMgPh1bVH26l1hUmWBWVz3AIJWFXbJZiqb6xKMZWhW8T9wkT63SGu7G+qYGAt
         LftQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CiBFa64B+TqjeQ4CTY4701tFH3TlWQC89fh/+LXkdcc=;
        fh=R6t9g8swkkrJNn+1b8PwjW04rAbo+SX74uah5LS2WoM=;
        b=HiSki1T2I7kCYYQ7X6XSzIeCJpgF0tcQE6MBvUMBvmDFO4JhgfOuBnSjByJPe4l3/O
         g0RZvSiCki970JYfVvGwGC8J2VP18doGlPOPJIXZ4eN9h6HzJsWY5EG+U83QEgrxTw3S
         5Eqsr7APQ2tF8+Ua5sI++pVE0bIMg/ClR9Ue5UWUVJpDzqao3o4SINYt1W3wYloZP56J
         nvDZrwSrLrXrwCpuQdfmRSKWg9Pg8kWUduqAfy6Pkj9wb3B+iT2/4WFG+xRLOIKBTHOo
         uuognaOG6NcL/ihkuDNO48/2n1jupkXxtYIPqD5dEemHQtowcJJ3spO8TYGW2jPJIJxK
         NseQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ujv7fI0f;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 41be03b00d2f7-b422b642840sor16597273a12.0.2025.08.13.10.53.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 10:53:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWUNdbqBQDVDaPRT+3X3+UTD3GOushiT9Ib9AqLqQCy/ChMR6bpgcMingoN2oBz4UhsaL2ShRS1QnsALw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctFft+3RsWTOz3nANsTUjeSqldrimzrfN3o47i5pjsOxZWKpbQkNMbfq9mM0OY
	8yGTyGqLj+GutStfSbdDqhyubvlkgqFqItqrDN0nKuirCYFrfhbSPE+WsyQ86kkN2rrfDHv3KMn
	1r0SVFXCJGJKs+2zoWhaB2Q1p8OLKxuKCCNJAEfUpyg+MjpZIRUz27tmTombGZW6MNhVeaPH6B7
	IMsmHne5tTtf7vvdn+MjAvMrU4zwDlZUJcVzYBqvUSi1vBFKu62aft+SHC9GqHH7jhpllCkNhfb
	gg/6MtMQixiQpzCjz5+kly6b0UF4Q38nfTfZW2sTn3Ig0PeGoTBn3UXpYZxm5axky/0hCwnG2C3
	AnMqp7w+uBgyievFihGlfZamxCaan6u43QfdlUeJwUKL4bnekWpVT
X-Received: by 2002:a17:903:90d:b0:240:49e8:1d3c with SMTP id d9443c01a7336-2430d223d86mr54937875ad.35.1755107597681;
        Wed, 13 Aug 2025 10:53:17 -0700 (PDT)
Received: from BM5220 (118-232-8-190.dynamic.kbronet.com.tw. [118.232.8.190])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3232576410csm727158a91.11.2025.08.13.10.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 10:53:17 -0700 (PDT)
From: Zenm Chen <zenmchen@gmail.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	pkshih@realtek.com,
	rtl8821cerfe2@gmail.com,
	stable@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	usbwifi2024@gmail.com,
	zenmchen@gmail.com
Subject: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Date: Thu, 14 Aug 2025 01:53:12 +0800
Message-ID: <20250813175313.2585-1-zenmchen@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <ff043574-e479-4a56-86a4-feaa35877d1a@rowland.harvard.edu>
References: <ff043574-e479-4a56-86a4-feaa35877d1a@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ZenmChen@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Ujv7fI0f;       spf=pass
 (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=zenmchen@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Alan Stern <stern@rowland.harvard.edu> =E6=96=BC 2025=E5=B9=B48=E6=9C=8814=
=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=8812:58=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> On Thu, Aug 14, 2025 at 12:24:15AM +0800, Zenm Chen wrote:
> > Many Realtek USB Wi-Fi dongles released in recent years have two modes:
> > one is driver CD mode which has Windows driver onboard, another one is
> > Wi-Fi mode. Add the US_FL_IGNORE_DEVICE quirk for these multi-mode devi=
ces.
> > Otherwise, usb_modeswitch may fail to switch them to Wi-Fi mode.
>
> There are several other entries like this already in the unusual_devs.h
> file.  But I wonder if we really still need them.  Shouldn't the
> usb_modeswitch program be smart enough by now to know how to handle
> these things?

Hi Alan,

Thanks for your review and reply.

Without this patch applied, usb_modeswitch cannot switch my Mercury MW310UH
into Wi-Fi mode [1]. I also ran into a similar problem like [2] with D-Link
AX9U, so I believe this patch is needed.

>
> In theory, someone might want to access the Windows driver on the
> emulated CD.  With this quirk, they wouldn't be able to.
>

Actually an emulated CD doesn't appear when I insert these 2 Wi-Fi dongles =
into
my Linux PC, so users cannot access that Windows driver even if this patch =
is not=20
applied.

> Alan Stern

[1] https://drive.google.com/file/d/1YfWUTxKnvSeu1egMSwcF-memu3Kis8Mg/view?=
usp=3Ddrive_link

[2] https://github.com/morrownr/rtw89/issues/10

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250813175313.2585-1-zenmchen%40gmail.com.
