Return-Path: <usb-storage+bncBC5KHUNMXUCRB6OLZ77QKGQEPEF6FSA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA992EA43F
	for <lists+usb-storage@lfdr.de>; Tue,  5 Jan 2021 05:07:22 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id a9sf13480045edy.8
        for <lists+usb-storage@lfdr.de>; Mon, 04 Jan 2021 20:07:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609819641; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgVQTgbXSvNq101Gdq31gtG7r6GzTgl3/AmS3FiNOc6Dql0Z0ye6SITmyg13Z2Do3N
         YaNaxYOKp4XI40e/9n4IXSlGfswR4eWKfuRTRH+vjOMuDBKTyGU3NQm0lgayE4V7ofHQ
         +nW7Mg3JIIwL8+neDQf4tY4a9Eua5ZXsTHdgIf6FH0CFbNdQ8qru7PH8F8qyYLqnVoQi
         zS9GilpUZioGBbOYC8527gkuV1jYGaR9nsiI2UPC1SkM8IGnZStZIrTZs2YILewyhrdQ
         wCX3/WeSDMzwyRwkruWyZoLuGrhml/o0u7IXH6Y62oYlIiXizedO/JeZNt0zYBn4ZT8O
         DH2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:from:message-id:date
         :mime-version:sender:dkim-signature;
        bh=6kCnOLI+CjF0UGeE4hya+cmnYidOTOeMsHzJNgCznNE=;
        b=CFcmO1o79FH/DN/ReDalOhybqvn5q8M1J1narD162+ct1aL40bTbHNGVxiWNxpn97G
         wn3THK7d+2alIEgVifaA3MGcGGJFwHxg5gwj9CPqo8dCcsrj50obp1wBpPRWbKIibeQW
         0FBev4Zb8v03b5TzD+HetJW1GIP/bb6lWwNLR9q2Vt+ewwXles5veJMiR1z6FIF6Kx/Q
         bQAxCDHgW6fO64rVkv7NEy0xXj7hiuYR8YtGnPWMEfnj1JnPhbbaFtE6l3LINKFTsq4r
         xpu6ZY3PhhEhZ93wmv/mLg8NhT6PM9TI3wqRKe+T4HXN8KcUNhKtz4P1OwC5eMN2vioB
         pBRQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@synopsys.com header.s=mail header.b=TPkQ94Vf;
       spf=pass (google.com: domain of thinh.nguyen@synopsys.com designates 149.117.73.133 as permitted sender) smtp.mailfrom=Thinh.Nguyen@synopsys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:date:message-id:from:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6kCnOLI+CjF0UGeE4hya+cmnYidOTOeMsHzJNgCznNE=;
        b=ZUBv2kSeA3qqJepuFa0uT+VwSkvccjUb2X/uUThKLcWeoyPRENm8Fi8AWzIC91+Tyk
         VHeJ9ImIpIOHGIrW2oOsa/LKFN8+2JbM3EfYUdqwveOGkbm1znn7q3EcxIKIPhPXYq6X
         0MRkQ0+UkWLlmKK1wM51y3j9Io1D95VN+rFi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:from:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6kCnOLI+CjF0UGeE4hya+cmnYidOTOeMsHzJNgCznNE=;
        b=EyUQCP57HeDSa0AqLIKZC9x0BhJAfcodEe2ajTCWQyD3MqfDc1ZuuTTc/WGw1II/yC
         /rQp9vpr9HKz34ILewyVFeAWNELsz7u2hiS4Uf6XaeHMsTZ3tPMhbzCr0fUKp2e1elN/
         tYGTDYfudSb7LTuyyiaYlV5qbY2zVSFBZzSkgnVXcB+8qabWZ74lpa27fK1FdTzlIdfC
         TYLysF+iDKiVDRcfpgI5f6B/UbClIpbBxMxiJ165H6iH1ZvuVQxLTNBg9UCLCiGlsueJ
         ggSVOVqjx54t9EiSXUQ8QTmuK7rze8Uza+6Hd+/YXbe8w6TQCT1G5Q0UmsfxM9ECIO2U
         5wYA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530teOZPi+lAmh7IWyJ7hei+0SfmK35hWDwSep+7Dtis1jcYKryl
	I6dIjHFXGuJYXo92+7Lsry3HlA==
X-Google-Smtp-Source: ABdhPJxzyfQDxoVkQDgi6cMlBy5KIBWtw9xtcYHTHDBiB2Yx1FpkUogsv6GnIYQGovS7a4juGW8CUQ==
X-Received: by 2002:a17:906:1cd4:: with SMTP id i20mr70439778ejh.415.1609819641746;
        Mon, 04 Jan 2021 20:07:21 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:8a9b:: with SMTP id j27ls1346779edj.3.gmail; Mon, 04 Jan
 2021 20:07:20 -0800 (PST)
X-Received: by 2002:aa7:c3cf:: with SMTP id l15mr20284060edr.282.1609819640727;
        Mon, 04 Jan 2021 20:07:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609819640; cv=none;
        d=google.com; s=arc-20160816;
        b=jE7RqMvRPBzrW0fdXR+mVfaJSwR445lT8UW7UolHtR0iHNnhYnWarcdFFjkbpH9NYu
         DxDbFhujFxTcySdfDcsvbSaaGgvyJbKtKuXcnPcR2kDHLvjSRKSZvSGP3jhxN49ALEBc
         1RZn8zQoPXrxAVnmOY67baGsOBgIA9iJ7HTvtOvAUhch/sKHLwchRSxtf58F6Ki8Rt7U
         wPIxH0b0JWeNKuhxtzU7TpLn9Xr3qtYfzqX+VvJqpsdqHT5YSKbXdtOT4LQWY7SPzlR7
         QdwZz3wXvhPZt4wCN4cDyyT8Ddp1fQV0L7n9zdzfFx3Nye7/BpDcqVJhA02tUaT60Is0
         vz1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:from:message-id:date:dkim-signature;
        bh=egAfhvUYnpTgpf0jeU2oxQKDIrTypk8dZ2sCl3KPuRg=;
        b=y3u6NK6hfRDqxsAo7Itp5v+LilY60Kxnp7gSHaahwlesyVHSop6aTa6HZ3swSKKZvv
         WIUAF4olX8+EMS+ofs1ICUckbxZq0ZyvWAZbaE1+gnw1PeK+iJCH1Yjwl+JAS4Yw6XJg
         PgsS+IQCinIjKRiUMCC4umMVU3l1HqW7GetJVOj/shzNwvUdupojnvEIhMB8cS0lgOnJ
         5RYMAoLI3Rmk3YsPBh4olwVXuKsiWFM4bRl2YytDypw9Z/e2S56ASyaWVCy3yAHeZLX2
         nzVoRVMLXJrnG5wVAS6LkFC3MlHJLHzigZQBHKNl/FgYaHL3a47jyN1xas9MlEsUL90a
         gGIA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@synopsys.com header.s=mail header.b=TPkQ94Vf;
       spf=pass (google.com: domain of thinh.nguyen@synopsys.com designates 149.117.73.133 as permitted sender) smtp.mailfrom=Thinh.Nguyen@synopsys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com. [149.117.73.133])
        by mx.google.com with ESMTPS id e6si35236196edv.445.2021.01.04.20.07.20
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 20:07:20 -0800 (PST)
Received-SPF: pass (google.com: domain of thinh.nguyen@synopsys.com designates 149.117.73.133 as permitted sender) client-ip=149.117.73.133;
Received: from mailhost.synopsys.com (sv2-mailhost1.synopsys.com [10.205.2.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2EF474017C;
	Tue,  5 Jan 2021 04:07:17 +0000 (UTC)
Received: from te-lab16 (unknown [10.10.52.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mailhost.synopsys.com (Postfix) with ESMTPSA id F2484A0250;
	Tue,  5 Jan 2021 04:07:15 +0000 (UTC)
Received: by te-lab16 (sSMTP sendmail emulation); Mon, 04 Jan 2021 20:07:15 -0800
Date: Mon, 04 Jan 2021 20:07:15 -0800
Message-Id: <2edc7af892d0913bf06f5b35e49ec463f03d5ed8.1609819418.git.Thinh.Nguyen@synopsys.com>
X-SNPS-Relay: synopsys.com
From: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Subject: [usb-storage] [PATCH] usb: uas: Add PNY USB Portable SSD to unusual_uas
To: Hans de Goede <hdegoede@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alan Stern <stern@rowland.harvard.edu>, usb-storage@lists.one-eyed-alien.net
Cc: stable@vger.kernel.org, linux-usb@vger.kernel.org
X-Original-Sender: thinh.nguyen@synopsys.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@synopsys.com header.s=mail header.b=TPkQ94Vf;       spf=pass
 (google.com: domain of thinh.nguyen@synopsys.com designates 149.117.73.133 as
 permitted sender) smtp.mailfrom=Thinh.Nguyen@synopsys.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
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

Here's another variant PNY Pro Elite USB 3.1 Gen 2 portable SSD that
hangs and doesn't respond to ATA_1x pass-through commands. If it doesn't
support these commands, it should respond properly to the host. Add it
to the unusual uas list to be able to move forward with other
operations.

Cc: stable@vger.kernel.org
Signed-off-by: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
---
 drivers/usb/storage/unusual_uas.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
index 870e9cf3d5dc..f9677a5ec31b 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -90,6 +90,13 @@ UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BROKEN_FUA),
 
+/* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
+UNUSUAL_DEV(0x154b, 0xf00b, 0x0000, 0x9999,
+		"PNY",
+		"Pro Elite SSD",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_NO_ATA_1X),
+
 /* Reported-by: Thinh Nguyen <thinhn@synopsys.com> */
 UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
 		"PNY",

base-commit: 5c8fe583cce542aa0b84adc939ce85293de36e5e
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2edc7af892d0913bf06f5b35e49ec463f03d5ed8.1609819418.git.Thinh.Nguyen%40synopsys.com.
