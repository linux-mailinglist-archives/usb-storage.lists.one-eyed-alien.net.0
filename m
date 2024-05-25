Return-Path: <usb-storage+bncBC5J7HGFV4DBBG4OY2ZAMGQEXKIUUYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FB68CEE0E
	for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 08:37:17 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-1f44b51a1a1sf14512685ad.1
        for <lists+usb-storage@lfdr.de>; Fri, 24 May 2024 23:37:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716619036; cv=pass;
        d=google.com; s=arc-20160816;
        b=xaQK4PEMtpzXMlkQmSd4VYuoC81N4jNuHoBt2a6P85EJ1oxGBwE/d+ygGk/H/SS0mT
         yAVxANH44zETBe5uh6s7u0Ee2cdmT/Ph+qyfBIRQivTzy4jJaIRUid9DuAE8BUnuVZIr
         J4SSj1hp4WzYT4H8n+26ZCmMgcqULedAC2pfMdehpPA7gEWqzsH1CmmWUTpI2QLnYV8Q
         ROZM3HndQPyCzwYvurTbcUq9UsLNo6dQi+yZOx7Tmw2asLOYMnXSESIRzDOnSl6c0VtU
         zQVpJiuwISyYxSZpPJH+NnFSz/ZJSN0vvmujXguEXTnIAPa/Kk5A+fTiWUMvD8upaVFh
         oU0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=wzUOAqu1Dx0gNYoWhs3VNEtCi1jeK2xLnwYOB5tdWYo=;
        fh=zhtcvJw8VmPyK8BGzehw9ANinQa05I4sdpovMNtpMFk=;
        b=aZJ6vFDHXhBo0sg+MSjDKAJwotOuThb3aSc7jRE2uW+RxyqzE3aae1Yl2QrLr1SZF6
         raKBfZUEV4fe1HwHMbqOFkoxHqepf8v/RhKjLWjPKQAHlKqTSlEqT+ZaZB+3l432Wv/3
         SG2JsSi5B85TyTUH/P1n1ygnZJZaTRimQxgrtCmJu/obNIwBH/AbVwfuCRUx/LgL9atq
         /e0uchyJeScLf7fuo70cB7SfxbC+tKf3azCOD0Qr3TOYBiJbvCHbeDufmvKALdseWq0Z
         n9tEqrxPVT9dXIcbB2McXe9BB3qq5T8Umit9dIxJ85fqyQl3EtZ9lqxQyH4v5+xbkhEo
         CQ3A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=TQO6Vhj3;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716619036; x=1717223836; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wzUOAqu1Dx0gNYoWhs3VNEtCi1jeK2xLnwYOB5tdWYo=;
        b=Irccg5KDySLKvYKlqzxARfFxErJkOJ5oKRuxGVJInZZgA0CBGvTTrcXdjXYul2QJPB
         j+ETuqAXhyo1yVLA1iZyhR7uN+kDaPBp5wlx2OKnnkpa7duX3qM4m6TyhYdgrCUGgjHS
         3FYckza5o/gKREp51hd6F3v+3YJ4DMwNt11lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716619036; x=1717223836;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wzUOAqu1Dx0gNYoWhs3VNEtCi1jeK2xLnwYOB5tdWYo=;
        b=I+TtEtgbbEkXukTkAxRVIvH7QDY5pgfYoEXQsAyeQLpiAzoXzF8bsSOIn7uxhAjP0w
         AiZGyrWQy5yu5UsZVhmbGJR8Q3DPnWjrKJzWhARdX9z9Pd+qdIi7wmRBuij0FGZqaDME
         5h5GmMV0dVIlzcrYoGO9I+q1MZKqDJE3XzydpnsXT9yW9itl6yt3inZdhqLLr4QCFYi6
         xK5xUbzm1+yc0HLK1BXB9ME50H+CF/Xm9KKbGQjqpXmJfKDqM5C8C/p53jKYmB5h96Sr
         JrFx7YIEUxzX7VQ1yf48MdvHowefRIrVBo4K5aBe7XG2H7vfv8e+IO0mUgsIUfXi8Jch
         bXgA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWl+6V2Xp2eL43iqoT9mKg/dq+gbEHr7VJ8PNWaJoZd+W0enoVRYo893yeBGTFriV0V+WiRBl2lujF3VJmtzQWloix/i2jvA7Ys
X-Gm-Message-State: AOJu0YxDgycyPTrO5TYYz/Ksb69fSmCNtP6qMbF0eSb1NWYOEY40Fyab
	jrMSR/9Qaaus+aGZBDrJT1wgVCX87AkBZE+oPFMjGR0y8uGzZYuVf3yzHQ04mPo=
X-Google-Smtp-Source: AGHT+IFdQ/rGVS1Z4I+TkR0FDX1I3T5z6T6vCAw2cxGuGxMG4hUI1vepLjK/YCmrtO0mRDo8JDBDwA==
X-Received: by 2002:a17:902:f688:b0:1f3:14e7:8ba2 with SMTP id d9443c01a7336-1f4486c55ebmr61205025ad.1.1716619035693;
        Fri, 24 May 2024 23:37:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:230a:b0:1f2:f9de:c9d4 with SMTP id
 d9443c01a7336-1f44633b9ffls10599355ad.2.-pod-prod-08-us; Fri, 24 May 2024
 23:37:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXyz4Y6+jSlc/bffzo7lP3FG+B6YxpuzbkiIuQih5d6lF2Pwjn1+iP17T+SBF2otuCw6hY8YcDa2DAgiriAfaHu5g+DTzAbzsjpyyMWlW02YqGlGb0=
X-Received: by 2002:a17:902:6547:b0:1e2:a807:7159 with SMTP id d9443c01a7336-1f4486c580emr49039455ad.6.1716619034518;
        Fri, 24 May 2024 23:37:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716619034; cv=none;
        d=google.com; s=arc-20160816;
        b=O2ADcHDvwtZrSHeR+X3iOLndsMrkA5qTzTJTi9/9LCdJdCJepkqd67WA7gpAYAxE76
         PyzEouDOatLPdTgrMjz1R9Cc6R1dersOmS2Kz5UxIw4kg348L8GAw+GBD+rKf4s9DqxM
         sm6x6yb8ta6MMZ7gGcPy8mkRKkz4O+mrJQ/r5qIC84kBDKpuJ9Wi1WkwBj4nNon1WftS
         tVlx2WFRnojYPgxyYICfQ0RAQAm4hBaKecKuQAiY6p33h5SXBuWvqhiJ3H2QbKMvfYVH
         4uzxjoZPOOqisib0ygQsts8bvajoSMyLaNA9jaG+5XENg5qxnSdTuo6TgB1NkVJkCzJv
         bFnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=snFoe0q0ALLzJ5j768mscpErlOXOCkjNvxMBdv946eQ=;
        fh=cfJaVg97DnCEU7x+f+XVmbGi+5AxORJSgQYKmInCDdU=;
        b=WH8ZOATbOnS2LhNdX66qqYbT1p9/NPcZOVbHBPdqe7k7v75iqlYYg3xm0WEoQTfSg7
         dRTIebBTiyDcBm3P/tRI3ZpSK1UVWCeD4uZWk0zbhDa7nhWycN7IUnhPmjlCFNrXnz1K
         UMG075YF+S9mTZi19Ab2v4T2a1f9C3kSrCWnqR1qqUlSo0xWLhxXBHhgn/D6GBKI54Nl
         piDM9vEBnOqZ07lYzsCXJFkx39bygRkd/N9jGNdsvRiLngqTSbUm+9XERjww61Wzr+Qt
         P6AUwN4vUrUEebScSTBHcH8mXZXtK5YxN1IWa/g/vidKmLwfM/bxiCPVbTesKKX5hkjg
         BOiw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=TQO6Vhj3;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1f44c818eeasor20812175ad.11.2024.05.24.23.37.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 24 May 2024 23:37:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXbXaTIz9+23OBbjLprnGRJHvoaCwEIdy8XSwehN8DPRijbjmLayz30yDYxw8hvYsWqYGw9NYs41Z/jQnncr2sTpKbdRWgXUmzc3LPL3Jkip1vZNPg=
X-Received: by 2002:a17:902:e5cf:b0:1f4:64d6:91b2 with SMTP id d9443c01a7336-1f464d6936bmr19294875ad.22.1716619034006;
        Fri, 24 May 2024 23:37:14 -0700 (PDT)
Received: from velvet.. ([111.42.148.111])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f471edd1a5sm2621275ad.184.2024.05.24.23.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 23:37:13 -0700 (PDT)
From: Shichao Lai <shichaorai@gmail.com>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Shichao Lai <shichaorai@gmail.com>,
	xingwei lee <xrivendell7@gmail.com>,
	yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] [PATCH v4] usb-storage: Check whether the media is
 initialized successfully
Date: Sat, 25 May 2024 14:36:53 +0800
Message-Id: <20240525063653.2331587-1-shichaorai@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=TQO6Vhj3;       spf=pass
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
- Add a member "initialized" to struct alauda_info as a symbol
  for media initialization.
- Change a condition in alauda_check_media() to ensure the
  first initialization.
- Add an error check for the return value of alauda_init_media().

Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>
Suggested-by: Oliver Neukum <oneukum@suse.com>
Signed-off-by: Shichao Lai <shichaorai@gmail.com>
---
Changes since v1:
- Check the initialization of alauda_check_media() 
  which is the root cause.

 drivers/usb/storage/alauda.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..ddf0da203481 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -105,6 +105,8 @@ struct alauda_info {
 	unsigned char sense_key;
 	unsigned long sense_asc;	/* additional sense code */
 	unsigned long sense_ascq;	/* additional sense code qualifier */
+
+	bool initialized;           /* true if the media is initialized */
 };
 
 #define short_pack(lsb,msb) ( ((u16)(lsb)) | ( ((u16)(msb))<<8 ) )
@@ -476,11 +478,12 @@ static int alauda_check_media(struct us_data *us)
 	}
 
 	/* Check for media change */
-	if (status[0] & 0x08) {
+	if (status[0] & 0x08 || !info->initialized) {
 		usb_stor_dbg(us, "Media change detected\n");
 		alauda_free_maps(&MEDIA_INFO(us));
-		alauda_init_media(us);
-
+		rc = alauda_init_media(us);
+		if (rc == USB_STOR_TRANSPORT_GOOD)
+			info->initialized = true;
 		info->sense_key = UNIT_ATTENTION;
 		info->sense_asc = 0x28;
 		info->sense_ascq = 0x00;
@@ -1120,6 +1123,7 @@ static int init_alauda(struct us_data *us)
 	info->wr_ep = usb_sndbulkpipe(us->pusb_dev,
 		altsetting->endpoint[0].desc.bEndpointAddress
 		& USB_ENDPOINT_NUMBER_MASK);
+	info->initialized = false;
 
 	return 0;
 }
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240525063653.2331587-1-shichaorai%40gmail.com.
