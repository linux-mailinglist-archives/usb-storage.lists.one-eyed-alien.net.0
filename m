Return-Path: <usb-storage+bncBAABBI4MVHYQKGQE46QHF3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 998D4147653
	for <lists+usb-storage@lfdr.de>; Fri, 24 Jan 2020 02:19:32 +0100 (CET)
Received: by mail-ot1-x347.google.com with SMTP id f25sf95185otq.15
        for <lists+usb-storage@lfdr.de>; Thu, 23 Jan 2020 17:19:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579828771; cv=pass;
        d=google.com; s=arc-20160816;
        b=DvLi2AZ50tf3NPa9tVSlmGOJRZESC/blfCWkxTkJQnU+SzYMhubErs5HRYeoXMg7x4
         Z5JpwSrRMhHlFRljaXG6AOIhmOCz6erOwh2OfjFrozlkkt7O0UkhuI7RGLg3aUc+0x8j
         vJFPXeonJXkWqK4GlvrihLozdkbkmaqbxwSRRdta5THyDM6aQo9kV41xhCdMs4CtjTQO
         5r1ZtGdSmaPw+bpO6C6RC0RpJ90gsLBA/C7hnNixXA7T2CkEKE455ei9upIL/zgwCkdF
         dqq3R5NorjIfmGzGNhmDfdL2iRdEL/W/JeQNDdolqK0LrA2Kpv55kRQMhQAPiEpYMEuv
         BBaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=DMtrb89SBjViq/us5Wcm+EVAfUGGsi9vKrzE/lOMlR8=;
        b=wxaZwsqasl6oZgaYl9bm8gKSkv4rOFWpV8o+8w5tekWEFZOPlxbpGs6lmfQEQQMW2g
         0zUPtQpeRfr1KgeBauzGvNL8tPYGErkezKWNTyRI0RKw0JyulZ4gJgeMy7fRwqICIKPf
         DBoEHgPvs1FnvkgbSp5zzr4tlbW8FXlBpLac4zGVtqfTiusHSLMDzk0VULayf1U/y6+N
         NDseKwsBWw4TO+gravs3GficwiVbF4k5n2vBwfUmWVQlI2BP6HY6/OVkMk14+aipgrpM
         NhgHfLRIpz1v7ODft/KfhSy6ies8k1sw5R54bQfWsPV2Y2OBFgrvIQhzonVUVJc1iTKM
         I2YA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y2uMTvV4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DMtrb89SBjViq/us5Wcm+EVAfUGGsi9vKrzE/lOMlR8=;
        b=dr6l5MXKgGLqvOQS6/6u8J6336jQS22OpgTGtLTa6UUlGS2K/lBpH6Iu1fA3l1r93d
         D46LG3wGXNS9b12qD65i0HnjjwtD3SW93HS83irlTHGjtdAqgG4adzMJ7voB8WgJKvAo
         k3Pc0JgBTji2DUOGEqP5iY/L62wLqcPdqdYdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DMtrb89SBjViq/us5Wcm+EVAfUGGsi9vKrzE/lOMlR8=;
        b=ismEM2BOWvtzRWc3wXkykNd8WwPKvq/yCSPJkQjDElHdeALcM42j+WRR3yT5AyxHd0
         YCBw1lftzday0fukLnXdJJllAxvLIhUPsJhAv1XlVUL/jzT2dzyRdLTGEYUlvpGxT4N7
         pee/0caXbSwAGwI1mWtXbljHxkaqkmaCb2Cqh7mr2Du9CYMg9OIuxqOH0KkXBtn2tzFt
         y1x3XhP243L/yPcRaYztXeuLIE9symy8Ng86wZ7IOM/4FQoGQ5R5wwN7QQhxY0rwWtPY
         HHoqXyiKNh7rhh6ztxCo3eWjYpUfTFZoz8l8tN2MhDuF7f2cxo4A6XsI/VIRsmUhc3Kz
         2GEw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUKDvK1sLooyIKeV4woX3ZSDdB0tREtY6LLZLCE5tqbLfC5JLkr
	dJVaF84cLJiTDL59zePZGMpP1A==
X-Google-Smtp-Source: APXvYqwBy7cKpaA8yAO3soK/K0kSJurm13XOWM+9yYQFSWkmXh5HXBUvNy++dJVcS4enLCHd7JJZ9g==
X-Received: by 2002:aca:1713:: with SMTP id j19mr501445oii.160.1579828771379;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:5482:: with SMTP id i124ls65255oib.11.gmail; Thu, 23 Jan
 2020 17:19:31 -0800 (PST)
X-Received: by 2002:a05:6808:84:: with SMTP id s4mr532508oic.60.1579828771023;
        Thu, 23 Jan 2020 17:19:31 -0800 (PST)
Received: by 2002:aca:d4c3:0:0:0:0:0 with SMTP id l186msoig;
        Thu, 23 Jan 2020 17:18:15 -0800 (PST)
X-Received: by 2002:a63:483:: with SMTP id 125mr1232841pge.217.1579828694583;
        Thu, 23 Jan 2020 17:18:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579828694; cv=none;
        d=google.com; s=arc-20160816;
        b=Sssu26D7HSHte7hA5CjOoNhn4SWdafh0sn3Dg8iULNQmVJO93n448vhoqsKqsrwvW2
         ihjOnLfICefMDvQrRqflWb87PlH8dmY9cfxH/eJ4uXqtzS0Z+7JTYi8SysKmuybI8cS4
         CBmo9oQryPbbRmCWuGrft8/ANvx5AGKohnHgvXsOwO7BSPBm6icKxU0k/WKYohav90tT
         5MLZ5WQjZRN9iYuRTZ8XygMQKoWbFFD53dMDUb4+F6uaW3po1m+fb/AUkL9Aqpr5Z4mH
         kIo/6rcKLujrZub8mWZ6Fzdh6ye+jWaldacgCwultQE2ukMsV29ULPhhZgXpkpPsLynE
         P3jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Fm+EhEspjsi8pQ3JPX+Dh/5RQfHooJQL79BsrwuNn3E=;
        b=bD7qbwVSavIwj0lLz2QzJiEN4wGJtIZnqBKyuVCMSkYCPm3tMunVV7ancjrV5+SqnK
         d3M06mztUpRfqPdcFY3EL6X6MKWiBHVQtJBsB4r2iNW71NXC6Zky4rGa7i9h3wWiw4aI
         gEjF1z/ppFQPIqr4by2hRnHFnR3TcyTkOXn6cqF3nkWbIEVHo82dxQwSWlzYE2X8mdlU
         2qmidmk/MlOvtYSKNDMmeBXaCD8TD9GY8TO7EoIc6+Z1ve96S8TnNYy0Lhmio5ZR0/ph
         dSoKGp++b8tiq1NZPKwz9Ob3sw1TsFoeuelgprs6L6hXCTY6fR1OgnQzhaLMsW2fEDKG
         +atA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y2uMTvV4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id 35si3137879pjz.47.2020.01.23.17.18.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 17:18:14 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 672182253D;
	Fri, 24 Jan 2020 01:18:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Laura Abbott <labbott@fedoraproject.org>,
	Steven Ellis <sellis@redhat.com>,
	Pacho Ramos <pachoramos@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 4.4] usb-storage: Disable UAS on JMicron
 SATA enclosure
Date: Thu, 23 Jan 2020 20:18:12 -0500
Message-Id: <20200124011812.18866-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=y2uMTvV4;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Laura Abbott <labbott@fedoraproject.org>

[ Upstream commit bc3bdb12bbb3492067c8719011576370e959a2e6 ]

Steve Ellis reported incorrect block sizes and alignement
offsets with a SATA enclosure. Adding a quirk to disable
UAS fixes the problems.

Reported-by: Steven Ellis <sellis@redhat.com>
Cc: Pacho Ramos <pachoramos@gmail.com>
Signed-off-by: Laura Abbott <labbott@fedoraproject.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 8ed80f28416fa..9aad6825947c8 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -162,12 +162,15 @@ UNUSUAL_DEV(0x2537, 0x1068, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_IGNORE_UAS),
 
-/* Reported-by: Takeo Nakayama <javhera@gmx.com> */
+/*
+ * Initially Reported-by: Takeo Nakayama <javhera@gmx.com>
+ * UAS Ignore Reported by Steven Ellis <sellis@redhat.com>
+ */
 UNUSUAL_DEV(0x357d, 0x7788, 0x0000, 0x9999,
 		"JMicron",
 		"JMS566",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_NO_REPORT_OPCODES),
+		US_FL_NO_REPORT_OPCODES | US_FL_IGNORE_UAS),
 
 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
 UNUSUAL_DEV(0x4971, 0x1012, 0x0000, 0x9999,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200124011812.18866-1-sashal%40kernel.org.
