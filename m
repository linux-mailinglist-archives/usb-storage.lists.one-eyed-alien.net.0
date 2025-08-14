Return-Path: <usb-storage+bncBCENHXXO3EBRBZFW7DCAMGQESXWMPZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 00291B26D7F
	for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 19:22:45 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-244570600a1sf14524535ad.1
        for <lists+usb-storage@lfdr.de>; Thu, 14 Aug 2025 10:22:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755192164; cv=pass;
        d=google.com; s=arc-20240605;
        b=UFBq1pzJZvcc2ee371XwwWa654anVW0eVxJtW/eJAwONaIduatezgd92maSazRk5i0
         DmFPBHnwIRJNpMTsacV2kEijoSdqmO4g42lKqik8l8c611uP3cT3yLzzNY0yNx2aNzGD
         wuQQLer9HJ4hPUAEZOCFGSMV5IFiSmWT0u4fuT0nH+SC1zZuRSGbz9ktQV12IceyuU3C
         gCj9YDZ+HFap+irv/6Hgo8vpda2mUqspMl+aDDBINPodDpKYZEMEZjK6JF4RmDx3RSPs
         vPew98Ns3VozEv7RarVhcL33DK0C+7h+WvnXBrnG+pjaVljDmR6VLCf9f1owr/7f5Lix
         +Mow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FWFvUWLyXdTxE5voKWFJdtKJ2SERZPqtOjqFKe2brXs=;
        fh=24hCb7X1aPo6y5qeHEs2+fpov+1qHswvMfwhyr87uz8=;
        b=X3i0GL274StCDAOgvbEmm7Pmy7aeKV9BtLykh+cyL+F9pb6vIxsTzG2udWmhcMYOH2
         W8bq1/dF7ZQuLZ8iW+A62rOGIgBVjPM9FtGSviE/yULb9MEwAPeGQM7PrnugacvoUi+E
         mrJI5VlqYvTQe1LXplEE15MK43lbZKPqE2uOvCHgzFR4I37W30NyZG1PShDWzOzNDbOy
         4An21gnQaO623LypxVlsO0KZ7eUykBx7lq8ZSgPDalIv6qrwahCYDPdHOiHD9LIHlHGw
         Syx5I8kcwYhAoIh5sZkqsPV4ZvB8cjstvOSsLr7eMo1iShgXTKpltVFzL/a+vWe7sryY
         mbVQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=VqQhIeeY;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755192164; x=1755796964; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FWFvUWLyXdTxE5voKWFJdtKJ2SERZPqtOjqFKe2brXs=;
        b=JWHiXPGFzc2v/yw39gIIzLVLDLyICl9lByZqiiVl2cKuTliCsWxViAtP4nZ4CMQe3y
         2SEmqKBkVSs5WqcK00xIZALOp6RbjJzYWAreNfqDvA82wfiwuO47yml+MtG5nPZx7mQp
         95T9hNPTwFSyOVipU4CBqsM1G8NshrSO0bkzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755192164; x=1755796964;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FWFvUWLyXdTxE5voKWFJdtKJ2SERZPqtOjqFKe2brXs=;
        b=fKAuLemPuiETlxknCR7PWXCzykmEoIrzoZzbOyxbLny0F/hi9eDvb7Kr2B6XTA2Lzp
         e+DKae9CQrKvpEycfRens2zmRlUAxNZBLcX/nsUY5TDn6oVZ0YNBYZFgYhFC3yeezGEt
         iXWDgSNJDGHH3Fj41bwcgNww/qaLY2VssqUSdmraLktdrLvqxXQrzU+D1Yy2/feArP8o
         j9mkN4ehQSFfv9tJE+MnqF7MejlowHo2WMovDHkxyLpJ5fPpspirruZc1MFvHbPcnDBZ
         AyWm+OHDoOLIEk49AlVY6OFs1rVC+Z5Yhi/nvMiDqTnIpJiW8ZFyhmA0dy5SuNXBAT+F
         xt7g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW4vUy2bnRW9VXQbIJqUzKOatlHwY6Z2EPCWoE0OSjID7P/Y5AHTE+ur+Y7QjU1h5kYLzs4jg==@lfdr.de
X-Gm-Message-State: AOJu0YzyrI9itnwyB5CiKyqrFdkTMWS3+cDk5AvXf5uIEFYLC2Wty8Gt
	3WXmSl7QJmJpGLr+y66JiRWXsLX66/7OJqvAyzL7A9uXR5FdBAkHgAF6cefn+m/tHKA=
X-Google-Smtp-Source: AGHT+IFfH2fK3GGA4SuuQsWZXMMAVyNaRP1TmfQJvDa6UEVbP/hhmj3fL5S3rdnCXIIt5Ch1sDmwrA==
X-Received: by 2002:a17:902:d54f:b0:235:f091:11e5 with SMTP id d9443c01a7336-2445c4ae1a1mr46330215ad.10.1755192164446;
        Thu, 14 Aug 2025 10:22:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZe+rQ2KGpugn4949HSQblUsVHo3kLaMOYejxtsssSyYzQ==
Received: by 2002:a17:902:f0d1:b0:23f:8cfc:8dee with SMTP id
 d9443c01a7336-2430c9191dcls8909335ad.1.-pod-prod-00-us-canary; Thu, 14 Aug
 2025 10:22:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXjL+Xt7KAK9TvZeET+jt/DnHIvE46QBYHCl9hS/em3Fj3/IPylQOB4gsMTDUQcgg98TiuWSO5gz2m42Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2ac5:b0:231:9817:6ec1 with SMTP id d9443c01a7336-2445c516108mr48526375ad.17.1755192163065;
        Thu, 14 Aug 2025 10:22:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755192163; cv=none;
        d=google.com; s=arc-20240605;
        b=HS4lkiagRpng2FbwUQZ3YluUZjOHeokWJpR2c5DPFtbBLyOK8+IxGTAzAYu5jhGAuQ
         fHxHQKglRKntIH2sbJU9MDZ1GLbcg+P1dTafgK+14iM7oMYP9GEMaZ15Oip9luhEWHNZ
         9sjixkuOZUtCbR03qtngXWlvP/eF1uIi3KQ9elo5D9i7ug3552YIoQca50K/fmejLNsh
         9HJOHeb9colHTDJwb8v4SPmIP0YONC2u14/cNjsIxa2Z/3zoXPmmVSYxelNBrSwJATfG
         SZRRg8wB9Q8DeW9QikAUJBx3Ulwedl71LAtTW8Nf6py9JhDRWClcK/+xb0PUrhiCFmZc
         BTmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sqH9JkhU+X+akRNXh3sPhfcwCULCNtSZbkrYTgfbwdE=;
        fh=i8DLXCDYrXKDfbiDbWxb2AEj8UByWsb9qWsso3iHVpg=;
        b=OrRIt8scO6XQgfGwASr/YunCrOxmnA2Uqyg7pDWIqNhfX/gmySEJedSYiSZrRkK01K
         H/el1ZQs8cDD1nHJiEZFr9vBFk811aW2pehDHXtB4CxtRefR4vshoigz01IpjhRgJiUB
         H1kR471BhO0jHxVlJ6Qr/nU6SDv0s4uWLBBcjEARxKHomNBDb/HnqbnowBu80d3LPdJN
         3Gff6et3cQtOvuvYH3o02TIca8pNxpctim40FyW0+raESV/hHTrXV1SpQQDjnKwd1KuJ
         3mxdGY+LU0tJuJTqufnBu4IcUdaTELQFUYeNQOZ5NLaMsCHtfBpYVVVuPI8jGbX63T86
         J8nQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=VqQhIeeY;
       spf=pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=zenmchen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-2445e77fdf2sor15646055ad.8.2025.08.14.10.22.43
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 14 Aug 2025 10:22:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWIpeybP/Lx3pSLqKUEEHX6VLusUxt/mbICeuiQ0tm/yRRGaCiCGBKnWORQl+aBuAhNnoz8z+LRLrBEwQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuijvA82MBqcbtF7fhgeKY9F2OAImf2mCkqxTN+K3CnhCma1hxPGUb00vDSXJS
	DDCHduipBlONWGC1BJATi0OA+EBkKtSFzXoHarxt8jPplnRcVEKOh3hdOkvNfVUe4tDMP0uuG2D
	PsGCm5ZdA2Fnwdmq1s5ZAmttBI7iu8z3JsT8572CGPMr3R/200WN38+emTsHef105tn01olf9xx
	zvdqSMiftGzqwzOCpeH8ISgYzhXwQriC2zcV9LCIGwh2vjfS/jDI7Vb2mXSYIbl1eB2qYTLn0aM
	VoMqBZvVs3oYGOik+6YL6mzLh2XPe/BFEEVZJ9WAkRQQD92zpwCnfKKKX+zvEDipiwoQmc3bI9g
	iSEdsr9xEo2ABSluK8272z+Iq0x++nU8KmW3mZ8bI+HhszyBUMBMy
X-Received: by 2002:a17:902:e751:b0:242:5f6c:6b4e with SMTP id d9443c01a7336-2445c38afd8mr51210775ad.7.1755192162458;
        Thu, 14 Aug 2025 10:22:42 -0700 (PDT)
Received: from BM5220 (118-232-8-190.dynamic.kbronet.com.tw. [118.232.8.190])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-244590608dbsm23779715ad.66.2025.08.14.10.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 10:22:42 -0700 (PDT)
From: Zenm Chen <zenmchen@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	pkshih@realtek.com,
	rtl8821cerfe2@gmail.com,
	stable@vger.kernel.org,
	stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net,
	usbwifi2024@gmail.com,
	zenmchen@gmail.com
Subject: Re: [usb-storage] Re: [PATCH] USB: storage: Ignore driver CD mode for
 Realtek multi-mode Wi-Fi dongles
Date: Fri, 15 Aug 2025 01:22:35 +0800
Message-ID: <20250814172235.4353-1-zenmchen@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <2025081428-unfold-shakily-6278@gregkh>
References: <2025081428-unfold-shakily-6278@gregkh>
MIME-Version: 1.0
X-Original-Sender: ZenmChen@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=VqQhIeeY;       spf=pass
 (google.com: domain of zenmchen@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=zenmchen@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
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

@Alan @Greg

Thank you so much, you saved us!!! T_T

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250814172235.4353-1-zenmchen%40gmail.com.
