Return-Path: <usb-storage+bncBDU5DXUG4MFRBXO4W3VAKGQEQKZL3SY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 7716E88140
	for <lists+usb-storage@lfdr.de>; Fri,  9 Aug 2019 19:33:18 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id m25sf1494335wml.6
        for <lists+usb-storage@lfdr.de>; Fri, 09 Aug 2019 10:33:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565371998; cv=pass;
        d=google.com; s=arc-20160816;
        b=aYI97VIAXM1Kt8GWMUgmmhjD04QlgreiYxFQyeo2wfysY9OLe1fulZPWqMWD7LYpG6
         vdV5QbsjwG8pX2uDVwXEgQJmGKwV+C+/D1fhJwOAy5vAcDGCsyb4+ywVTQjBVtB3TMEn
         /BgWyctjehD4gBIOhocTbndIDFYypEakFRmAiLKa07KYTgHVrx/HjovSXqqTGlIlj1HT
         XWujzLlGm5jpIoJ+ZOkeVs9riFyATR90gL36L/A80y+zcUTCLmEhI7UYvRFGL6MLIjjT
         rkys/GsbgvFz1OSziNS1dtoqcuTUd+Bswg2cFQ8oNmQWDoUrxUWv9QsQO6WY4Nf/wLNa
         u1Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=l8VW6TX2WxDXuXpwCVeY/RdYsPPIuaZvauwtE0avecs=;
        b=Aw/FUGKnZ7cWVhbUr4D98Vdsu4UqMFHnGg/rShDNbQxLVSM1oAiVP543GjXsOB63KP
         9Gi0um0r3N1LMpy7XltBIVIwd9ojJmOVinszXfAMpFMDqJH1R3UCQEQ/AWTyS6OsBLEi
         tQNBsPxIG2weUieqRjTNTP8uHxCcXYnATp4MNvd0fDh7KQwDeK1aMwWicV9cuW/BYoeT
         nc0mKUVIpsmSJBkj6x9O0lPigjtqs+Y1kVvGhBhHXIL9GbFarfq+bobqsVW5mlMNKuqX
         KPLAS9YNnPeoilre1chldiIJzjxHTqdchBtte9fKUO0vHJIJCQ0ycq7MiSI52Oz5atIb
         qIwg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8VW6TX2WxDXuXpwCVeY/RdYsPPIuaZvauwtE0avecs=;
        b=Q7wzbi0TF29wn+tVjBrnJ8kJio6tZBLggAwNg4OpwrI3smcSctjHMWVnJDq8vudmfL
         YMQ4HC4vFvIvjLjyjku1zcFpoXPJyec0NBGhecZFq2z/TAkTaIZYsFn9iDuP1kDcfsDX
         M2saibO86imzOxLOlUjrEctPa0qNaDnobNkLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l8VW6TX2WxDXuXpwCVeY/RdYsPPIuaZvauwtE0avecs=;
        b=WVucN1W0cVeb57XgCoY1dkqQYzH99YywrGXL+NYsXm4iJo43QiAH0YGA7VlBfNomyQ
         uk0AQ5timHyWXsjlkQGEiCf5WCdB9TACcgUQ5O/OYeLcmTvKztOmOgX7nuM6r7tXSnnZ
         +5WwO/FIuk7Tn6ppl0P1t9uKNAHg/OKphpTYlcfPpg3t//wBNTB57oxPv7ApQj/FsiCy
         IN8ev0+gI/N26yXkB/tpE2hDr5Gk1l4oAB83MPTwcW7bDLXwPDvuerjGncxvT4YFPhUa
         XKfFvHUjdZyRHtRbz7ZQROoIYEkpkzvdvgp5eDtQ7g4wdLyINIjRVZRQRvx6tITYUjWF
         6olg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXRAM6nll849NHR2kjnVgZ3rHONXO6G2DTf384y/Y54xyvRBbhZ
	0ao6P3x8Gmlg7X7rhPFYsg9f8A==
X-Google-Smtp-Source: APXvYqxQ5Wjk67IUUoo1wtX8RKcnNz3O2Rfdct1rYhuSeocV/oXlDjJZDoSvn4IGvswlkl0fmPms+g==
X-Received: by 2002:a5d:4ecc:: with SMTP id s12mr26010427wrv.157.1565371998203;
        Fri, 09 Aug 2019 10:33:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:5506:: with SMTP id b6ls2388895wrv.4.gmail; Fri, 09 Aug
 2019 10:33:17 -0700 (PDT)
X-Received: by 2002:a5d:5607:: with SMTP id l7mr26536351wrv.228.1565371997372;
        Fri, 09 Aug 2019 10:33:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565371997; cv=none;
        d=google.com; s=arc-20160816;
        b=cLRplmnJVHi+Vm7yEPQSq5PZXstSIiF3aVc9kjnoizZeeqxmGrN5KaAg21UoefP2K2
         nb/P8x9vowJ/9QxfbbDbXJjR0+l6cC84a5ozA1vAz0FgZ4z3aLAaoqq5vUhOKeUbIDDa
         us7vr+O6C8crP8ZoUmN8QUZXVpp8410q/GdBlAfiZkDVli6czINgzr66LdbV/ugksy1j
         m6i+gZmSX2xCeeBfP1ljvFrbvGGN6lokK7ucHzqhDb98+KsOSK1SiORhNK7lNsmoODe+
         VAuPhE9/eiQHZOk+6J2ifS0zcv/C8Qi8rqaozQi+aLSjv5i83HzkHeR3bSYN3ivyY4kI
         xb0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=yh9DcWVWK4zjarKmfmpH5ZEABYBdEjZoj/w0oBOddsw=;
        b=INv4/BPq8O6Cm7ZAns44uXaBgvJL1U90Xaw9sANb+kvhrDUhWB70/WmD556ViTfgv6
         aSiCrpj9RupHdFGzq5V/TDd2aIFpKfwpdiGqYOOmc3SPz1nUo6PHyifukMw5EZv5fuzk
         qY6L8JU2rZdBRo1YpWYvVT4cdPpzX2xN9eHG7VlcAMDRQ+0dpGrkhbDKkWGBUVxSeelY
         AE8uipbnX2pchxqQY+1LR1KXAhmPk/hL3n4LxSQVzS3tMyhIzHtzJo3NifWU4rqyPn91
         gz+Dy3BP79li8A4H5BqEwLEFeCLiOX5FC+OSViplPU2jmkriB0qa3U2ZY9mclYOAjTXJ
         LPOA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id q17si9714649wrc.112.2019.08.09.10.33.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 09 Aug 2019 10:33:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <colin.king@canonical.com>)
	id 1hw8lO-0000ju-Ky; Fri, 09 Aug 2019 17:33:14 +0000
From: Colin King <colin.king@canonical.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] USB: storage: isd200: remove redundant
 assignment to variable sendToTransport
Date: Fri,  9 Aug 2019 18:33:14 +0100
Message-Id: <20190809173314.4623-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of colin.king@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

The variable sendToTransport is being initialized with a value that is
never read and is being re-assigned a little later on. The assignment
is redundant and hence can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/usb/storage/isd200.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
index 2b474d60b4db..28e1128d53a4 100644
--- a/drivers/usb/storage/isd200.c
+++ b/drivers/usb/storage/isd200.c
@@ -1511,7 +1511,7 @@ static int isd200_Initialization(struct us_data *us)
 
 static void isd200_ata_command(struct scsi_cmnd *srb, struct us_data *us)
 {
-	int sendToTransport = 1, orig_bufflen;
+	int sendToTransport, orig_bufflen;
 	union ata_cdb ataCdb;
 
 	/* Make sure driver was initialized */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190809173314.4623-1-colin.king%40canonical.com.
