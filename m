Return-Path: <usb-storage+bncBC5J7HGFV4DBBCVBZKZAMGQEKZHGQQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 6506C8CF260
	for <lists+usb-storage@lfdr.de>; Sun, 26 May 2024 03:29:48 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-1f47f1fd47csf3222685ad.2
        for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 18:29:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716686987; cv=pass;
        d=google.com; s=arc-20160816;
        b=oNmMtvFF8Kst2Q0QVrGk+uZmbQKW36AOWHDIBDXomX9zcrGTvosqKYF4grd8NXtjPI
         2IOeqAaLgFojRdNJzCqkBLwsr2/qrX3wVz4eoyFBSG9WE9RUCcCSU9YPL4B9DigyJLWs
         svFcVC4JyqGMsn8CbXYCjm4r4Lqmu14VA21fvXHTspEF6R3C5JjXDBowwHyEe1elJahI
         fTQj/0JSAgV5Sbpv8zxeNaw8QiTl/6ZMFljzQLIHObsyP5F5VB8IVlbGrUaojm/Y77xh
         aLu+RPs90EHfPPVmUpTWICftcVqr/dGiAzBuxe9cxwLJwMVlzBHyjQBgrDfhdSgChEWW
         TBrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Kbdz66oSYBEOmaXpMBa5/8BPfiL7kMriBI6Ca1FcuiY=;
        fh=kI1kLY4538Xj+slP8DtRMPkSpIJowzYROglBgUGQx78=;
        b=ciq0k8HDyRA9dQAppsTCj4ay+2b5+CNkzKy4+6At1wDrzpy5L00RtdMNHC+f9luFlZ
         45Y22jWBkIcS/ZtLv9pAtttXrjBBOVO5K+4u6fjRNi6P2mL1hr7DDBVvXVInV4tBTf+9
         BRXllXDy+b/IvtPaovDl2HLjKb6wvRqtvK8KrAoL8WL4RHo/RzvUtxgb1SwhtDB/DUaJ
         RpNi+a8X0P3gzceUjvTUvRjqmbGSH9zgAg52NLZY8Yvsk81Ucd0UGapsEXedUskXY+hF
         /nqGr4jCTpD25Bomi0oDNjNyOBazVbHCD3cXnJVBKryZQp7VVfalBE6WB6Ju6vSeHw5K
         SZ8Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=kfBmtl36;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716686987; x=1717291787; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Kbdz66oSYBEOmaXpMBa5/8BPfiL7kMriBI6Ca1FcuiY=;
        b=QjNRfE6FApNhd5ZH1JBsxZ3CDY3HhuuoVtQB9/VTtNlnOnShM/Xjgt96Gn7T6rZjIa
         0WeDKUuuyX0pYytvT/Je/IgkRlMdqQ6G7w0mcBms+wUryH27AlS+cIzgzBE7D7wtz6j0
         rqtVFwzuGWJuWBbMMqOTZ9Y4ayz4mUgyuCSJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716686987; x=1717291787;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Kbdz66oSYBEOmaXpMBa5/8BPfiL7kMriBI6Ca1FcuiY=;
        b=Ik9SFc89qt+zX9gucNFpb0EFg8bygWQg0N4NenQhj4HX0v9EMHeKZdK0sFhxIjSSzZ
         TEytxTvBF44AaGwCJIGvRtfjnji+gZVyfOrJCU4EbqENxskB+Dgi2eGAsbdYl2loepdW
         6GgYYQjXTYJoKhSiFqWNsWCTh2f97tUCphjkyNrZ9LykdjOz/PwI+FHcejxN2g0mYnRj
         fi2ZbFUHmgpxSyKKtW4f4Wg3bcatW0KLGM1tqPfmhGXM2ND6B9VkA00AnA267pncMOiZ
         qWaNCUA8Ss5LiRIx8ZdnuITQ5GUaClOhnxSTbuQnSw9xKYCz9GwNO2g1a8/HOe8qIvvO
         1mKQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUo9wg7L51DfyKDXHrqB4p4X7eCuOdUK36Z6Bi0tFIzpqJfRkZIcqY/nM8ZUxm0X56jNjKS79an1S7VH7BO9GjPGddAw/BdPFoQ
X-Gm-Message-State: AOJu0YxlLYE1apLtikQzySZUpbQGCjmMzLtllZ1RG7Q2tVaP/E1z8L5h
	HzegkZ5ubgUTqYhd5CNxpBHXKwXbYRMydoM/TqddaCZh8LB/p6yu0YPQfP6eWM8=
X-Google-Smtp-Source: AGHT+IFkN8GUfCgHAd45N+onuQlpY5JTfaBfR9lN5yrCiDOrSEzMVZ7vD6Ra/ZoNYRR7LgwUwGykmg==
X-Received: by 2002:a17:903:11c6:b0:1f3:2e31:f83a with SMTP id d9443c01a7336-1f4498ed3a7mr65202255ad.46.1716686986483;
        Sat, 25 May 2024 18:29:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:32cb:b0:1f3:555:b70a with SMTP id
 d9443c01a7336-1f44615c35dls14711965ad.0.-pod-prod-09-us; Sat, 25 May 2024
 18:29:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWdpER3KQvjIIx/VPpMnS9BY39XrkghxqIB/tEz9uT8PG69iC9lOSeoThzVZE96CTSbVFRr8PEJcsCSpfGaW7fNNVW4iU7XJHwVUvsXEa3vDr7C3To=
X-Received: by 2002:a17:903:8c4:b0:1e7:eeb3:e295 with SMTP id d9443c01a7336-1f4499222bemr67752555ad.69.1716686985362;
        Sat, 25 May 2024 18:29:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716686985; cv=none;
        d=google.com; s=arc-20160816;
        b=KHIY/a7eMt17wICpsye3DICN4+ovC7IyXMylaVdbHp/vyIbfaNZTPPpZukxoWQ569p
         zBC+m2bC47Ar9Pj9XCsXKRsLUnEITdYYMUfoWHaHewffTrRDEuqL460kJ6+iRxgdiSFW
         EcTxBIFZHcccIRkaekTRuLisdsaIKaImEZKIKvT5U55P/GU58v6I2sLLFNug6Uz2IaP0
         vIrDdXDyZQOwEEaxf8o3hVAOnxRewASkUbFb4aged/3c4XA59Ha+h0MKeppdpLGXl1TW
         RJKbpdhRU2Gi0yMlIZhT/zcdmL9BTAbPw55CYPD4U3N6a21qSEaFl0xuZLJeSmi+4e8U
         j0sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=u07Iey81j3k5fLr1Slpz2mVuu45UdaoKvFPM3aZm1t0=;
        fh=JEtlkiPY83XKe5uQsGcn/ubp3YaPPGg6khRDQb0hCDQ=;
        b=IogUzayvMlVPNLv/HUu0bdy/2Mrf39Y0jny8rt0LDdmVLW2Z4zlU8UfEtJGTEgadVx
         a7YB391tZMjwtRA+bti9uhpJ32UNCXioqSTDa+fbSv90vb7rrabwMIoWAtqafnf950v2
         H+v1SP03Wjk2BK3zzVCsVjB4YNTeCfH9aZ6q6CPXyB1+OQjxHygl2/Ph6aDhMjuThJaq
         5026BdBGzoDR8PSJjhzsqt4ynvJGe3FOXNVA5fx1f7ffAN6b/zV/yxlNGYJMYy9nYtDN
         +Sv2Ln/Y9XZtDOU56YDuOk3phmUAvhhJ01X1LbBcI69kUoKo+pIzeUb6TB0IV8cXZyn4
         gckA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=kfBmtl36;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1f44c7c0ca8sor26138035ad.6.2024.05.25.18.29.45
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 25 May 2024 18:29:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUk14ltjkopJGCZotsUFIXZ8RB2pNvRFNC1Nq7adp8WC2e4d1k44OEZiTZx+j0gcrOm+pDYmD5Q1et6feOSXzEkcKntWTGaVmE/NNlQGpic/jxgOrw=
X-Received: by 2002:a17:902:e995:b0:1f3:50e7:36db with SMTP id d9443c01a7336-1f4498ec1ebmr49195605ad.48.1716686984752;
        Sat, 25 May 2024 18:29:44 -0700 (PDT)
Received: from velvet.. ([111.42.148.111])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f481de3d78sm4156025ad.75.2024.05.25.18.29.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 18:29:44 -0700 (PDT)
From: Shichao Lai <shichaorai@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	Markus.Elfring@web.de
Cc: oneukum@suse.com,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Shichao Lai <shichaorai@gmail.com>,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] [PATCH v6] usb-storage: alauda: Check whether the media
 is initialized
Date: Sun, 26 May 2024 09:27:45 +0800
Message-Id: <20240526012745.2852061-1-shichaorai@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=kfBmtl36;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The member "uzonesize" of struct alauda_info will remain 0
if alauda_init_media() fails, potentially causing divide errors
in alauda_read_data() and alauda_write_lba().
- Add a member "media_initialized" to struct alauda_info.
- Change a condition in alauda_check_media() to ensure the
  first initialization.
- Add an error check for the return value of alauda_init_media().

Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>
Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Shichao Lai <shichaorai@gmail.com>
---
Changes since v5:
- Check the initialization of alauda_check_media()
  which is the root cause.

 drivers/usb/storage/alauda.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..40d34cc28344 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -105,6 +105,8 @@ struct alauda_info {
 	unsigned char sense_key;
 	unsigned long sense_asc;	/* additional sense code */
 	unsigned long sense_ascq;	/* additional sense code qualifier */
+
+	bool media_initialized;
 };
 
 #define short_pack(lsb,msb) ( ((u16)(lsb)) | ( ((u16)(msb))<<8 ) )
@@ -476,11 +478,12 @@ static int alauda_check_media(struct us_data *us)
 	}
 
 	/* Check for media change */
-	if (status[0] & 0x08) {
+	if (status[0] & 0x08 || !info->media_initialized) {
 		usb_stor_dbg(us, "Media change detected\n");
 		alauda_free_maps(&MEDIA_INFO(us));
-		alauda_init_media(us);
-
+		rc = alauda_init_media(us);
+		if (rc == USB_STOR_TRANSPORT_GOOD)
+			info->media_initialized = true;
 		info->sense_key = UNIT_ATTENTION;
 		info->sense_asc = 0x28;
 		info->sense_ascq = 0x00;
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240526012745.2852061-1-shichaorai%40gmail.com.
