Return-Path: <usb-storage+bncBDAOJ6534YNBBEVEZ24QMGQEIDVV5OI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6249C5F22
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:27 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6cdeeb785c8sf100549126d6.2
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432978; cv=pass;
        d=google.com; s=arc-20240605;
        b=izIsN+OM6ikMMmwk538xIG+P0bAeXNtJBQxrPxzWpykuY7af8xQGwlRI3f0j6Yzsrk
         gnLkNC3eTeqqwkFNJN+jRgPOIZDyRWhnhZy+sMrr9dUS4D9UnrH8ybPJO/x0r+oqCiny
         /J6QpluN/kPg8h5EYAQkjHmMm2frSKB3itUeTVP9YLkapHpZqt4D8b9JR4+Tde2rB3oV
         A2W7ws2Hzr7FcQoCZT9m78rxtb944IeJFXusexWEYWB+kZYJ8b8GeqyXqW7Z8lK+l6XS
         Dx0QUrwFDqw/JK1uK6QD+yPZZm0wMwvZlcQFf2h5Efukyagc8P+CiQaKSx8H1HBGU7d3
         i4dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aF7E+4GNm+Kp8PBj5EGkTBO6NnwhMtqAUBdjPmAQX2I=;
        fh=+eiNTCve7jqKiwRgDhYoG0ynTtBD6+Jkco5XbZkH8Qw=;
        b=BDcmKbM0tbvpG4DgvbNFZiU8xBBj34hJJp3tJ9jShCRE50anBFzLYQtiIcyTICDVo2
         f0KO4BxIVcWjVH+He0E6eheHDDraZn/OecEuJPP0aFFMGFE+zpoGoHxe4RaCXjhuSGD+
         sfmkvhaeAwYv0QXVSYRgxwAyfYnx5bx3JNeaml0+rFnxed5U7o7DL6GB9vbcg2BIWftl
         QrjfAOV6+X3EbVkVNmkWxKCFs/ss+LTbvp9x7HQTeDQevGaSLymGtVWscA4gLRkREKrG
         6I45cbg+P4+2wXhifoJ7gCmqjNhIstPOhfjHHFmlChmA5w3HIcC6vrbYoK9EX2NByFHn
         3vog==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=dQvrVuzB;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731432978; x=1732037778; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aF7E+4GNm+Kp8PBj5EGkTBO6NnwhMtqAUBdjPmAQX2I=;
        b=GOyLn8q2AIO3sZp31Sa9UhiXDHzxHsSx+OKkH7bMgVigH1fOQlMXMSZsPSbPCjW6ya
         ip2y5Sa98km4bcaenJmxuYcF4PINwWWBsmTkFFTUQG92hn1UMSob73nwGjIyoEC+BfaN
         NCU8sX2zOlXb7tvQnw6PnLNZGzGTY+zdTy/wY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432978; x=1732037778;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aF7E+4GNm+Kp8PBj5EGkTBO6NnwhMtqAUBdjPmAQX2I=;
        b=F2npqAHxMS0ecA9p/74t8iQB7JSAWMjzzlz5ZhG6t+Ho+HuSk9BAcWKda59156rQR2
         07PrbzM+un4NNobkgv9+ELhoG9MjSdtVp5VE86C0KxnEN5HBRpIyZvF3lssoLJ3upF9q
         MjoJ2ELnV+v4xSfTC1/ImQ5V7IPpBinfp7LMivaGHjvnNnwQbR2h2hWCBnm0yfKnVawC
         CqMYyL9my8ht7r6GNnZG+ZT5AX4bp0EAGWrSkXUv1sUgtXW2CzMv1SIBHo3+VBwsxKx5
         F7fviEtlf9VAzssaj2fHrY+GVFmwTm6ApQD7YD2oqysWT07+z+oTJqWOoAMR6Va9N7VK
         ZyxA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVriykdjRJXBNea39q8XYK7r2RjVUPXG7+6kiGRHuSJvg1O0H6YDjsKOG8HyqLjZUR4M4/l9Q==@lfdr.de
X-Gm-Message-State: AOJu0Yx3fAZywXosOfRNdsLIXlx4ei9rY1bfvzwjyzwaMPujLpZZCCu5
	zaT0+lw/qNdnjKbQsGvKdiSPY8uA11QtCnDPUAszAkMq6K/6HCpIxJo38bhGe4g=
X-Google-Smtp-Source: AGHT+IGtXAHPBZtqLjtLPjFB7EOn6YZyJwN5WTUaZeqv+xvrFdnFk6NqXWf7UWKfAXOEzm+MMjg+Sg==
X-Received: by 2002:a05:6214:3f91:b0:6cb:e4d3:10a0 with SMTP id 6a1803df08f44-6d39e1bae2emr251830656d6.48.1731432978460;
        Tue, 12 Nov 2024 09:36:18 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:1d0d:b0:6c5:19d1:7aa8 with SMTP id
 6a1803df08f44-6d39355a624ls102534566d6.2.-pod-prod-06-us; Tue, 12 Nov 2024
 09:36:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUx+msU4lmSCopqNQ0EwtxkAAHScdgQr2NR2Fl0mC4Bq0WvtMiLVsDECQaTTJdhLEJER7Usy0XD8N40TQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:4504:b0:7b1:44f1:cb6d with SMTP id af79cd13be357-7b331eff2c5mr2266087985a.42.1731432977917;
        Tue, 12 Nov 2024 09:36:17 -0800 (PST)
Received: by 2002:ae9:e106:0:b0:7a1:d643:94b4 with SMTP id af79cd13be357-7b34c45cf34ms85a;
        Tue, 12 Nov 2024 07:58:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUKDMQugEN+Jrf/nWFd03Al6Ig242UsgM867ADoV2WbYQfcobYwpwKqm6WNL0vvRXIkl4IWktC6lAbZjA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:46ca:b0:42c:bd4d:e8ba with SMTP id 5b1f17b1804b1-432b7502429mr146406685e9.8.1731427119820;
        Tue, 12 Nov 2024 07:58:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427119; cv=none;
        d=google.com; s=arc-20240605;
        b=isxXRyb05iYqs0+fjlvj27/smbYS99xZC1TPGorC1cpJwLOGxINZR60Yr50kUO4TI3
         uQpspYbQJ5J87EAI9NkrsASO7hUigbPt4lzKB5uTVBJxO/tK8Tbo36c63KMFQODtARGK
         QtJ3IEmir5AZROsoIpuNkZf2F0gXAKYNq6LKBIrQh+N9LGEsVmkT3CyjLiKX4nHoLtZE
         +e/hRtAdhZORloC5/IMZdLUaRgIf4Stx+XMkgC/o0pf3Cwa4oXKGJQE1pPA2mMyz6qzI
         lWJeFlCxQjakJVqBwcXb3Jqr3Z1CI1OYqZE/iQzhSa3HGasPs5FxezsdMabSceOvOnPj
         5xQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/a3ScA4GKVwMKEp5bNwzhgLvy/jMX4sk0gqCJ9bcam4=;
        fh=ldkb7DGxBu3tLBSUFjXhLeaIuNzYUEvNUwa/e1kh3ZU=;
        b=hcckpX2jSSxIsklVV+jJ+UGssytKAlEskxFBdxVMBYsmXmBSVfKOZHNuTk0JLy+sSz
         FhmMIS5VJvQClsRbmpeZivPCbm38HJ6WOB6amJPHwF44qH7854cTeu/gEtD0gv806lxz
         auxEMkryZD98ILmghrQ3tAEXFz1c1SQGwNz8BOM1sOBQTFE9IilTQAO+nUlWxMAima/q
         bFgB/so3M1dC2tTDCeIbG41ltup6A4JFA+nIX0Yz/zmcmeD/HfiMBLIKTcbGjwcJxEBG
         aebG1JmStfOHOz2ssvPlOQyu6cX1l7ZBB4nVf9qkXJEPRyubcwRaQqoKV9wjfh3/Jvl6
         eFGQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=dQvrVuzB;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-381ed97f022sor3750017f8f.4.2024.11.12.07.58.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:39 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWQQQjoFxS4zrsUcKdMEmgIC1i/jH8nc3CmdoYaSjW2inMCTQFRHa3vrj4sGiBTkaedwIQty5/C1grfow==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:2a1:b0:381:cffc:d419 with SMTP id ffacd0b85a97d-381f183f682mr14837750f8f.36.1731427119405;
        Tue, 12 Nov 2024 07:58:39 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:39 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: gregkh@linuxfoundation.org,
	andreyknvl@gmail.com,
	b-liu@ti.com,
	johan@kernel.org,
	oneukum@suse.com,
	stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	snovitoll@gmail.com,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2 5/8] drivers/usb/mon: refactor min with min_t
Date: Tue, 12 Nov 2024 20:58:14 +0500
Message-Id: <20241112155817.3512577-6-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=dQvrVuzB;       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Ensure type safety by using min_t() instead of casted min().

Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 drivers/usb/mon/mon_bin.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/mon/mon_bin.c b/drivers/usb/mon/mon_bin.c
index afb71c18415d..c93b43f5bc46 100644
--- a/drivers/usb/mon/mon_bin.c
+++ b/drivers/usb/mon/mon_bin.c
@@ -823,7 +823,7 @@ static ssize_t mon_bin_read(struct file *file, char __user *buf,
 	ep = MON_OFF2HDR(rp, rp->b_out);
 
 	if (rp->b_read < hdrbytes) {
-		step_len = min(nbytes, (size_t)(hdrbytes - rp->b_read));
+		step_len = min_t(size_t, nbytes, hdrbytes - rp->b_read);
 		ptr = ((char *)ep) + rp->b_read;
 		if (step_len && copy_to_user(buf, ptr, step_len)) {
 			mutex_unlock(&rp->fetch_lock);
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-6-snovitoll%40gmail.com.
