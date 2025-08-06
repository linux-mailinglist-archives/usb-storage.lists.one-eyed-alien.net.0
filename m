Return-Path: <usb-storage+bncBAABB3V6ZXCAMGQEDSH6IFY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 02342B1C72B
	for <lists+usb-storage@lfdr.de>; Wed,  6 Aug 2025 15:58:08 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id 46e09a7af769-741a7181acbsf3971809a34.2
        for <lists+usb-storage@lfdr.de>; Wed, 06 Aug 2025 06:58:07 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1754488686; cv=pass;
        d=google.com; s=arc-20240605;
        b=B9GK6w05tZd52q3FW9As14HZG0jjvPSna+OxNvcBNKPGU4A1kojjBq4nXVnoximYnz
         0wdWNyx6y26Cu836Q1uhTHlkOAzIr323tuQZdUnhPiOAbLfNcygV1REr7+kwhmPdcfBk
         ukkvJKddqqUZIvbD+erSTzSR5P5rtN6ohpLsZKeC8KHwP3rSxxo4vesaF1MxaVMpyDWT
         3obUT9nMnKYCtvVZeLYfQUXHlCFr7hGIOpWgbaXqJzHUvTGwfdoDl8c64zA8ODQD94Qi
         mH7p03nz4vAMM7wwmh57zbGu67U1u7H2/UGNdw1TB9sX9IquwWwdXjryRUABK2iqZr5Z
         1sSA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=d707iKYm+S2Cmzx+o1/pksRFa0Hq8//OomU6Rl5AXxY=;
        fh=ypIcAHao5SbmmlzFLuhEOKgFdipH0HzTvAnjUvehK2w=;
        b=WlJha70zcLtDaj9jXE+2h5H2AcYfREsLCs0910gwE1WVBWRS21af8kRJPoS1MTPivA
         lYLnFPJ+7t9Ydfvn/xPs/MTx+bPY6wCJuU9UtRvVuKLLwQAwc40S8bPYg5xCdacb3lYg
         72lIK2STbid1Xy8Gmtki8wJX0hfMEKKWqyFvYGCMc4VsHrILfiAT6Y1CK3n3EPm63Lp5
         6v1vEbuEiVc1J6dI4VUes8FM03hDrjzOIH/YNrCXfM8nAMcI9Oinikqb4dJ92ko4GiGi
         QZ8vW9qErDlMTy7ELtrfSeaQz4iicRrxZpw/Nk8D8VLqI40iCtBb31bnwoO/ECgy0C56
         TZng==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@murena.io header.s=mail3 header.b=3X7WPClh;
       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates 135.181.139.185 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1754488686; x=1755093486; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d707iKYm+S2Cmzx+o1/pksRFa0Hq8//OomU6Rl5AXxY=;
        b=QBWun1fQnpvcLHXNuW+aUqKYzPLMMSUCJ+IoZdVEiEyqpXC35TzUkeBd8EYIaiR/0b
         TeM3Hjo5aatTY21MtY84UxxzwaiMAUbyi2qHs2rAvlW4ZtvWnG3JLmUbjeMlvVAf85Gh
         x2JTI1bRFXZ1nDDQXK6TX6LT8quI+KBETkXJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754488686; x=1755093486;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d707iKYm+S2Cmzx+o1/pksRFa0Hq8//OomU6Rl5AXxY=;
        b=H/KIOa+m8K9Zy50AIrM29UNtjeGGLgDwYZafqOHF3WssYdckkDPmmsMwyfJn8nzXqf
         2T4mN1RP6JG0j+rIXvwtsb8h2qDlKg/fRrImySto4S/M8WIuHfeqzF3bS45eUygTx4RY
         InShKnNnGBtZkdhlWoCdfJkQzQjBPhbWIFPe5OrEns9fipTOa2RuEy4X5T+dX6mmemPc
         AWxwEmK7Gg7beXNjVi1qyRbY0Kg5HjKw38nPgJgsRILlZw8Orsl+YHnd1uvMLW8VfzTA
         f52B6RsvEo+LYr9foTDcZwpntJxvZd42/+z3D8IVZ8H+A/ceDq2pI1h/5aFYoO5LcNcA
         MzUg==
X-Forwarded-Encrypted: i=3; AJvYcCURez41Gp7Th1njzusotFTw1nlFtH7Qnknwlo2WjNfmZ6t3yAgfZ/1P3uSzimbsw/LVT201pQ==@lfdr.de
X-Gm-Message-State: AOJu0YzKjC7hOwmmWfLraIApHmwwQgeSM2X+nD3YigV+Q58d2mdeoK8l
	HhePLuLdWkgGUxCU3qgNSxYNO7xwuZDCiuCJ2SbY/KYtm+njBr1BvAmmlEcuqPZPHXI=
X-Google-Smtp-Source: AGHT+IFnfyRatopKBT2L+XYw3rw+iC3mQaeCc7KR7l2/Y92zmJr6o5c+RnirvGde2D4hjEmPH7AOpA==
X-Received: by 2002:a05:6830:4901:b0:743:823:a094 with SMTP id 46e09a7af769-7430b28d2d8mr1744782a34.10.1754488686431;
        Wed, 06 Aug 2025 06:58:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZdO/iVeZFvLDgO+uRaHykmb5Pyx053wGjvOBy++8xe/Og==
Received: by 2002:a05:6820:c314:b0:619:7067:defd with SMTP id
 006d021491bc7-6197067e0efls1483686eaf.0.-pod-prod-07-us; Wed, 06 Aug 2025
 06:58:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCV8EfgIoL/4B8D7HB1DxxS0yKrBkuTejDS/5jMScCTNW5ev987xduzu2R0zNHdB6Syv51pZor2BhnpleA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:4f53:b0:3fe:aecb:5c49 with SMTP id 5614622812f47-4357c59d9efmr1472989b6e.21.1754488685950;
        Wed, 06 Aug 2025 06:58:05 -0700 (PDT)
Received: by 2002:ab3:7c9c:0:b0:2b1:9db7:3101 with SMTP id a1c4a302cd1d6-2bf23463e9amsc7a;
        Wed, 6 Aug 2025 06:45:59 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVJFtd/GXWAg4GLh+AzClm5hACia0Ur+Dr1vcbsOXgw0jnM2stzJ8/wdHmqjU/Jc39Nxz2EqmI1xv2VDw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:651c:220d:b0:32b:7ddd:275f with SMTP id 38308e7fff4ca-3338141419amr9429501fa.30.1754487955914;
        Wed, 06 Aug 2025 06:45:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754487955; cv=pass;
        d=google.com; s=arc-20240605;
        b=Vi4JJnZbv05XFEngNr+K7rbw8ieBbQEu0mDqgv0X3wEgMlkic47tbsC26jAt02Qx5u
         o+AOp5TyDoufoXGytv6PjtUKM2o2kCoxnZMXLwIosTbpJ8kMzESLxczwgLB1b7fVfuJ4
         yaKnkxJ1O6XUOGRPjaAk/4GUMsM7NGX8r0KaF9tvC7ACeJB+RMyc0rhntKMxOMi49+Ee
         QDoacG/TIoIP3I0TdiJRKpffGtwAVvLs4DDpzQSwMW0cNKT0DoW7xcNZpWWPKurslfQD
         vaK84WH4rC9Vel3MMXkhoJY79ICvDWyXP237aRupwEb3THt1U4LoXH0kxnvd4/rlrbNY
         pN+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YR1yS45wdvooEjIeF84tr73vMkd8J1BhZxP/TC1Yqyc=;
        fh=trZDlAkUlX5rfkLqdb/8HBKXqg3YpTpf+K2bUWySUaU=;
        b=bBFjyJyN/1graCQUkM6b27k5qfWO1ehuVX6bzSc1HCcqp2DB7QotBNUcbSLzwc+diR
         OYWbrlDAQlj+vgUE4L2wBRadD+BbesBNzfZDWV2kr5zjMRKNTD8f7I5zfYFh928e6iOS
         K+ADqK/tW7X16SOQwC1L29VOGA7fW+Nt2EF3ZEr09WbFHc992LvzIdCWwwnNXB0fNzWI
         EbWjl4dR3JZPz6uECJTHiHQHTha3TeIVE0pugT3RoI+uek9ErdajjHCwH6o0I+z/Wh2W
         ZitXJiRSD7kVgUSnqQfwcoWmhBgt2U/FdoJ4Ag7JVmeNIw+OfFpyGBxhiGKGXku2r5Aq
         OdBg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@murena.io header.s=mail3 header.b=3X7WPClh;
       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates 135.181.139.185 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
Received: from mail3.ecloud.global (mail3.ecloud.global. [135.181.139.185])
        by mx.google.com with ESMTPS id 38308e7fff4ca-33238715bfesi38428411fa.422.2025.08.06.06.45.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 06:45:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mael.guerin@murena.io designates 135.181.139.185 as permitted sender) client-ip=135.181.139.185;
Received: from authenticated-user (mail3.ecloud.global [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail3.ecloud.global (Postfix) with ESMTPSA id CCC7688A551;
	Wed,  6 Aug 2025 13:45:54 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io;
	s=mail3; t=1754487955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=YR1yS45wdvooEjIeF84tr73vMkd8J1BhZxP/TC1Yqyc=;
	b=+eJqvMhsH+9Lr0nWpvAELJ69+XqRsZ+nFVW2yzAm0PHP/U7krp89UQ3vpnhTTXhMp6O3ts
	tLhVSVXF0y1AhvyNsLcBfvTfrvER2sEIVzhpQ47UL2iyUiPuh1Jw1pEqDFdK5TO03ewJHc
	sCMSKKQl5zRZJrXuLSJULnnyKG9BUKU=
ARC-Authentication-Results: i=1;
	mail3.ecloud.global;
	auth=pass smtp.mailfrom=mael.guerin@murena.io
ARC-Seal: i=1; s=mail3; d=murena.io; t=1754487955; a=rsa-sha256; cv=none;
	b=uYMcLFsURRTxn1Rr11qPte77BeAXJRfDBxLqzN6xqavdNZ3NCV2FebQ/6/FjV7B7KbaUDa
	nARTJkVEk2KG3rwLm1KjB5Iq+MFQsiHH/FjipZ9+62xXo3WraNF0tHwsIHs2wmacJyqYn9
	aVPr7dLOrymAptI5fJZVIyT9qDEG69o=
From: "'Mael GUERIN' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mael GUERIN <mael.guerin@murena.io>
Subject: [usb-storage] [PATCH 0/1] usb-storage: add quirk for Novatek
 NTK96550-based camera
Date: Wed,  6 Aug 2025 15:45:22 +0200
Message-ID: <20250806134524.32016-1-mael.guerin@murena.io>
MIME-Version: 1.0
X-Original-Sender: mael.guerin@murena.io
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@murena.io header.s=mail3 header.b=3X7WPClh;       arc=pass (i=1);
       spf=pass (google.com: domain of mael.guerin@murena.io designates
 135.181.139.185 as permitted sender) smtp.mailfrom=mael.guerin@murena.io;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=murena.io
X-Original-From: Mael GUERIN <mael.guerin@murena.io>
Reply-To: Mael GUERIN <mael.guerin@murena.io>
Content-Type: text/plain; charset="UTF-8"
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

Add the US_FL_BULK_IGNORE_TAG quirk for Novatek NTK96550-based camera
to fix USB resets after sending SCSI vendor commands due to CBW and
CSW tags difference, leading to undesired slowness while communicating
with the device.

Please find below the copy of /sys/kernel/debug/usb/devices with my
device plugged in (listed as TechSys USB mass storage here, the
underlying chipset being the Novatek NTK96550-based camera):

T:  Bus=03 Lev=01 Prnt=01 Port=00 Cnt=01 Dev#=  3 Spd=480  MxCh= 0
D:  Ver= 2.00 Cls=00(>ifc ) Sub=00 Prot=00 MxPS=64 #Cfgs=  1
P:  Vendor=0603 ProdID=8611 Rev= 0.01
S:  Manufacturer=TechSys
S:  Product=USB Mass Storage
S:  SerialNumber=966110000000100
C:* #Ifs= 1 Cfg#= 1 Atr=c0 MxPwr=100mA
I:* If#= 0 Alt= 0 #EPs= 2 Cls=08(stor.) Sub=06 Prot=50 Driver=usb-storage
E:  Ad=81(I) Atr=02(Bulk) MxPS= 512 Ivl=0ms
E:  Ad=02(O) Atr=02(Bulk) MxPS= 512 Ivl=0ms

Mael GUERIN (1):
  usb-storage: Add unusual-devs entry for Novatek NTK96550-based camera

 drivers/usb/storage/unusual_devs.h | 7 +++++++
 1 file changed, 7 insertions(+)

-- 
2.50.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250806134524.32016-1-mael.guerin%40murena.io.
