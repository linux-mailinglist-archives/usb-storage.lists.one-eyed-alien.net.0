Return-Path: <usb-storage+bncBD4I5L45UMFRBWUYR6XAMGQE7IWF6RQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id C357D84D133
	for <lists+usb-storage@lfdr.de>; Wed,  7 Feb 2024 19:30:51 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-68c4f4bdcaasf16673016d6.1
        for <lists+usb-storage@lfdr.de>; Wed, 07 Feb 2024 10:30:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707330650; cv=pass;
        d=google.com; s=arc-20160816;
        b=zBdZyjZvSjc4X6fcXz/Hiit3WvmBtrB0cwZnOJ3qdSb4sCZ+0FDOIjejhjs3TmDF9s
         e183jjDCVRmwfWQsOk4i8v15Y0gfBdW87m4/+Zzxb/xPanU0++mzz0Q2oePVIrUcLPOF
         UWWHI3XhwK31sDx5UpiVcFXyS0OzQmQ8n3kbT4fFIo59ku6uEHb6gZugpiidqYdSowkG
         EnUNaJwq4eEG1uHQhtL1be7JeZxCQfvUxMlcT9ElBfmboxpSbyczTOlfVNug8bh+TRdC
         JaAHG46OCafBqH2lG6NbLSj+QHvzcVYRaCIs9UheEAShE41m0PqT7kGz2BtW9bOYijxy
         lDRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=D8f9nMNThJOECIKrJcqkSqHyVVKosr9k51a82BRxKYE=;
        fh=tmRQdBbWyDywQpvyk+i9WrFBuhWtvB5xraLkG68jalc=;
        b=fvCGqPJNx9NTLHFoTUvxNEvOZRrMaonoFNUYN5mlN8lugAGh0b9156J4hFZnRe3hZo
         m21K8VVs3erIm7DzrK9P6LqK+sy/PNBhmAV+ZeG4yWOTebqX0aoduBVMJm9J2fb34f3B
         /EDdlrSBon3phI2mq+Ga5hr+Wb9NUDWmyhHWVTrz83aDi5lkSkFiyRsJBMi0mXoIKieP
         L5QTsShCitY/bYueAd3A/597WvGfD6NuVGgD1UFkzW692hSTpVDjOBkmknzhpgKkmjK/
         2gmZTTJKMhCJNqkWEUaV+gEzw9US1NtV4WbedswzcwEKxfjYKTdK+ah9ql9VN8LUhZk2
         n20A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=ewMEccJJ;
       spf=pass (google.com: domain of colin.i.king@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=colin.i.king@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1707330650; x=1707935450; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=D8f9nMNThJOECIKrJcqkSqHyVVKosr9k51a82BRxKYE=;
        b=RTzhIVxVnhaSJGajWjZIlRTUr0Mps6URLZsuI1y3aOcArF5brMIMrr6uPt/Jz8/Dy4
         731utRAtbqZ+uk+0Mp0e2fnsmWa9IRdmG9e7WVORgPVzEvepDEkCFQpopGN/SMYX/mpR
         s7bl4y7nojHt7zwsbdxqAjJMEAAUzTCUcxTYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707330650; x=1707935450;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D8f9nMNThJOECIKrJcqkSqHyVVKosr9k51a82BRxKYE=;
        b=Lm2x0Kyn4G0yn8SGbGgySFIhGlB56NyqnYO9Edx/XVLJ8TbfV3dy/ETEGSM61RGYY4
         8hARkFIwFXUlDfQTe8vCUFEXo7timfFuxdtI389vQrt3RB/DQcZ2h+1VzmSgHTprBX8I
         hZFhFvyVEDpP6AEC90Av04Hqh7M1KUYXUTb2XYkSCkGVwBrI4taweoi7NsY2bwyvX3H9
         JSIGzbsX0ilcpmGDF63PNAcwvTcWJU1xGLyzEFpeRHIYy32yRKqOaLlgroaMRf7YBerW
         mznNdj34g1XH5qB1rD7HKWKrdWEk5kBrx/496YcAB+zPWfb40flluRftiQvyzGZLcLqf
         erfw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yw8yUjoxAKhQZ6gRmAK772V8a5kIGEqAJ/P013Pk5rU0Q6FXscq
	0LRUqkwtxYKVsSwtOhIdoEZVbsj6Jc5uYRgIKOy+VN8+hIfva/TxaBM0KUj4ciY=
X-Google-Smtp-Source: AGHT+IFEjYEhHX20cekI3JgIzHl4+hU5rUONhAUmDbwtVJKi0t98IyK6UKRe6YyvbLA3jYiTA/yBTw==
X-Received: by 2002:ad4:5de3:0:b0:68c:aa51:9037 with SMTP id jn3-20020ad45de3000000b0068caa519037mr7387639qvb.22.1707330650570;
        Wed, 07 Feb 2024 10:30:50 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:a66:b0:68c:8a1c:76a9 with SMTP id
 ef6-20020a0562140a6600b0068c8a1c76a9ls1034529qvb.2.-pod-prod-08-us; Wed, 07
 Feb 2024 10:30:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV8FovO/Sqqwcl6hmO6DjwTD22gxLOCuToQdALcoOw+87+SVLoleWFoq8ZUNJajhD9+Ro61oY3OA778M/Dzop5rg12oKeeY+5pXYETd2K6IenVeafI=
X-Received: by 2002:ad4:5cc1:0:b0:68c:6fa7:8e0b with SMTP id iu1-20020ad45cc1000000b0068c6fa78e0bmr104280qvb.2.1707330649955;
        Wed, 07 Feb 2024 10:30:49 -0800 (PST)
Received: by 2002:a05:620a:24d6:b0:785:a14c:1d29 with SMTP id af79cd13be357-785a14c23b7ms85a;
        Wed, 7 Feb 2024 03:22:12 -0800 (PST)
X-Received: by 2002:a05:6000:4008:b0:33a:edaf:13ec with SMTP id cp8-20020a056000400800b0033aedaf13ecmr4111129wrb.14.1707304930042;
        Wed, 07 Feb 2024 03:22:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707304929; cv=none;
        d=google.com; s=arc-20160816;
        b=IB3Nf0ttV7hBdLw2KrldkluON6FgsYpJK57sNs9x+lcfSwaPwsCr63JjF14Ya0ZWyf
         SMy07EKZGzehmt4JXEQW3yfIgzGl9uKFc8eh9a+5edXX9EYncu30EDzEjmePW/dWjQAK
         tIxCxoNDHl8jgFJ4BMxHLr50xHYy3XYmtWUa6WYo+w+xWkYBLIs5JEgSBGlh1PFlXHxl
         QAI5lsDTomAII0mDaC9PC0hMng902JC/yDiFZcQBiYuqjAhvBcrN4bWF5mV4K7c+LH3p
         VRw9VRCU04v4up6fm2Mm5d5o34o3cspvjQ+ObQSTouHCTGypicgiVtS2sVMRJzKAvvgk
         0PwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fe6SZmmP/zqXcfKDaAFGsJGopV6aAaohrfdr91yiNs0=;
        fh=AtU6yvs3B+9bsLZ7DG4jM8h6mD8Ww1XGkQ4a7r8Dkiw=;
        b=ruTEgicXWiW/htXlOQiIRk6ux0lyPD01a+Wj0tP6Iw1sLXcz9235lEXIXx5rQI1ODK
         JWJ/OVNK8xaSYUbbgHHOa5u0ylO/Pm9uh3SotjgB+CPtrbVBiLsNDmcZXdA9JwbyxtDI
         c78sGsAIH11UDLa0APnbPdo8J2eBJApJyTSXw8YhF+hQpciiK1iGPTJ7fLkzLWRDPt4e
         qKfy9ZapDUdGOglUhgZDUN+5kJR+FgntsKa6ueFJnl3INHXynDXmuCXoi9ZA+nxuLHI/
         dvjluPyJao3ZHHiHSVHV0J7rjPrt00Ydi/BbPVQu9NsiZKMuHuJHLhdo7Mb85ykzC0k0
         T4ew==;
        darn=lists.one-eyed-alien.net
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=ewMEccJJ;
       spf=pass (google.com: domain of colin.i.king@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=colin.i.king@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
X-Forwarded-Encrypted: i=1; AJvYcCWp6dPu6TrzkSiTXJmonQEmWMkANYROwCKTcoUcy/m/3PT7zb71m2O2xiSB4C/F17v3Vf9t2KqWiR2SIjRXwOYwPnqa97s4pPNcVH6BBAZFs8FqwFA=
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id g14-20020adfa48e000000b0033b4c2685d8sor395701wrb.4.2024.02.07.03.22.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 07 Feb 2024 03:22:09 -0800 (PST)
Received-SPF: pass (google.com: domain of colin.i.king@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:adf:b1c3:0:b0:33b:279a:5cb1 with SMTP id r3-20020adfb1c3000000b0033b279a5cb1mr3554011wra.11.1707304929441;
        Wed, 07 Feb 2024 03:22:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXid5VlkYlXypa1vZv6wwgKQJzGkoy1QHIVzTTa46oCuH2O6c7JisiUYKgsz8bhDDRGkqT28h2dW3Fg0dwGB9MjN9TaTua53IUbK0si/R2FE/owq+r9yFjATTpcHyZURbFa/5ODMsGVgSUqsaMUo7j0VAKO4fzgobxEl3WkxzunRpf+XawrgN70Upk7heW5iO9wzvJGuYUBQMMUY9sMMbWrbp7x4ecFxcddeVT7xZ/JlKuQdoB5Ys6UHUAzNRtfb7Mo
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net. [80.193.200.194])
        by smtp.gmail.com with ESMTPSA id l1-20020a5d5601000000b0033b406bc689sm1262926wrv.75.2024.02.07.03.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 03:22:08 -0800 (PST)
From: Colin Ian King <colin.i.king@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH][next] usb: storage: freecom: Remove redundant
 assignment to variable offset
Date: Wed,  7 Feb 2024 11:22:08 +0000
Message-Id: <20240207112208.2443237-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Colin.I.King@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=ewMEccJJ;       spf=pass
 (google.com: domain of colin.i.king@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=colin.i.king@gmail.com;       dmarc=pass
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

The variable offset is being assigned a value that is not being read
afterwards, the assignment is redundant and can be removed.

Cleans up clang scan warning:
drivers/usb/storage/freecom.c:537:2: warning: Value stored to 'offset'
is never read [deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/usb/storage/freecom.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/storage/freecom.c b/drivers/usb/storage/freecom.c
index 2b098b55c4cb..c3ce51c2dabd 100644
--- a/drivers/usb/storage/freecom.c
+++ b/drivers/usb/storage/freecom.c
@@ -534,7 +534,6 @@ static void pdump(struct us_data *us, void *ibuffer, int length)
 	}
 	line[offset] = 0;
 	usb_stor_dbg(us, "%s\n", line);
-	offset = 0;
 }
 #endif
 
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240207112208.2443237-1-colin.i.king%40gmail.com.
