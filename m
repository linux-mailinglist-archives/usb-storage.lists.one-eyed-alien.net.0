Return-Path: <usb-storage+bncBD4KDUPW5UNBBJWX6W5QMGQE37MBN2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E728A048CB
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 19:00:07 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-e549dac2eccsf9281712276.0
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 10:00:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736272806; cv=pass;
        d=google.com; s=arc-20240605;
        b=JD7IDIwsNEtFpincm7Ei4rV5U+lAomexxJgoAwsFwE0LP5vlD+kRm3yXp4dtZkRJzc
         51p0eTUmxwLeGcub2M82NYIKZ+v+5k9CpSbw1z1NNJJuh7adtp2y1EEQQ2r8KO85wZi4
         qp7+Q2RmDrxWCAC7bXhIehGDJOmZuLiIcZlIK2U1k+JtAoxCKdUr7po9YjetAqpQJBac
         4ncWBJD3kbC8Y6awgWkcJYeR0EyqtocxEl2EQElsSH2COaXYTdyY4iPvuFyUSfV6QOty
         pMcjAZMZ9k5ZAIudiGd+2isksRT6cM/M3Pb7AKIo1Pv9qBciu+xkhsZGc4rbTrfkBPru
         GM9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=IefWMzp3cXlJlJpRh+Oyn5QCIDVfLWMti+nRlX/Kx0I=;
        fh=f3CujOmVr6iKrEzVuK3ubFBp/wvfEyp57u0dDXfXhAo=;
        b=NJIZr6kucKYrfux39MMwXFkZKlJOfC3CNlwr1TRx+B2nvFnmGX+KA9OwRtmCWbcgAJ
         2zIIw7Vvvr62bKLlxYj5iZ8cIhzAfiOUOiwx5hPpJhm4n9n12zhemVTjh++IH1gqQJTZ
         nCwNG48JCz7oWJ/HXwRqHWlJA3VjbvLNgCiFm8iBevPRTCemx4MLa8WyBhCQ85eav7Pm
         FeF26ND6EkPPtfm+ZpGZZ79QHv7hHocMGbxZP7lcBrrpSk308PbW/Q/pUmRHUBPzoxvP
         EAnGhjgC0CoJCbbs1S4bFRZ3x/Txk291P0X2aZIv8BNvARyVbseft6ZDEtrXPJQeX5td
         Qfqg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=fCAySHRa;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736272806; x=1736877606; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IefWMzp3cXlJlJpRh+Oyn5QCIDVfLWMti+nRlX/Kx0I=;
        b=lx9YabksISXqD1VJ3bc+G//BTJbMbriRoiHiSgsH13q+fJrv7ApUe2Vbw9yBSUdNfD
         pw424YFSFu/5n44a0X25tx4NEt3FCoXH+9pl2/39bRuv9HL0NINPORS5iWKkbjIwfA/s
         05aBRBFGYu/I0B/8I0gZ2GvRu2OG0ZxleHxN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736272806; x=1736877606;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IefWMzp3cXlJlJpRh+Oyn5QCIDVfLWMti+nRlX/Kx0I=;
        b=bnONjQiftjHYy2DgdKw39AMNR4zJ32A+zKxyjtSuIJcf/CvJC++rO2ZZRB7TfVVIKE
         HOV+NdknDnqXboEm8IBifPtqDxKcpi9ugR0k51TPlF7UQvU/uYNPQbXx2hsIyK0+ADdj
         3IerP8aLJvm/GPGnzQRD6qtSoiA/AJ/REFrHd4PoTIoli+29NTsyc6BRbHzHtF67JIDj
         dMtrGHQ5C7tCVSotrGaTONG21EKmyjMYoCo7SyJI+BCOiK2jt7Al1DvRQm1WDNgj8g/G
         3iHhS0aq9o0Dh26J/flfEU9zcxJKBXr6Oe8HivJrfEYeQ+rUXEL7lhYvSR8oai316fvO
         jI6g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUgw6KDQBuBTdEiQKPZsZfwy8/5syNt/3wLQ8zk52lmpieStwR5rOY4pZ1B/sQ+8xrkoZx7yQ==@lfdr.de
X-Gm-Message-State: AOJu0Yy+ArxVje1v3ncPe0/hMsVPM40JjtO3BORWeKtSB0auPYUH3O/S
	ajdXmW0PL88gNQt6naix+rH0YWqUv448vZsSsnCErUfejloCAeNIwPoZianxpdg=
X-Google-Smtp-Source: AGHT+IF2omr3XwhsgMMxORV23XrXYdoyCxTc89ycwHB9T/u9JkpbPaOkHCz1n1qUw37UQclnAPutng==
X-Received: by 2002:a05:6902:18ca:b0:e44:82ef:3963 with SMTP id 3f1490d57ef6-e538c206d62mr37205811276.11.1736272806285;
        Tue, 07 Jan 2025 10:00:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:2055:0:b0:e38:94e3:87e with SMTP id 3f1490d57ef6-e54eabcdc1dls252585276.0.-pod-prod-07-us;
 Tue, 07 Jan 2025 10:00:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXzMsh2IhKpvLuM0G6f2AUUzpwVeayGqyZA7yaejNdSKxkay622+YmJPNG+HwnG40Y8nwF8B+zgwEUDHQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:88c:b0:6ef:79d8:c908 with SMTP id 00721157ae682-6f3f8110161mr512645977b3.14.1736272805144;
        Tue, 07 Jan 2025 10:00:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736272805; cv=none;
        d=google.com; s=arc-20240605;
        b=NSV1aQnfbgLht7QFB14IQW5V0uRRi6fvaQd6SG4xPv9GrdqdHA69f2YtacnKzOi+ch
         jcXQT/W9Ez0gLKH4WMhP7ELAKgnOAT1ENb+pTwfVgmxQAUqT0L9goNMRkD0bVp5hUBYp
         HM5mBfQnBEOjZ1tuYeZO1I1SmZzMuL4e7ahg2olj8jp8PaXKrL7r3KH1ElJhy+yQOLHJ
         gTXKQxf3MJtf4UmHJpF4RyMHW/2/tMThy13aW+4HhOBn3iLkzCzFI71oB0XDXiiTVlhG
         W24Uke+kAFgjMcC8AS+jNFt8OF/MEH66U3WOciZJR8VTuyMyrDQZG25qFGxQQsKxVvDO
         VlKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=WV+TLZuDtrq0vN0L2SGNhb5nPcib4hM5tam8yfuu2ms=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=S6peHwiPczx37oPlfVLQopMcWGsb5UVsM3Aq7QwtWy/ejPjySetefCU8zgNJCLr0BT
         +e2+U9HUpwdzFRwLMEsYaUT1Md2tr+RA9P/2vV6hmjM2oNF72AoTS4q4phQtDYE1xCmF
         hPRR5ZoQ0t5KvawdSbjC4hNKENo8+Inp9RCfRIO6Cr4R4bxaaHvDun+GLtENDzn+2HOE
         hp1QLObFaqcm44xWWbp66wK9Mh//YrLlj7prX/stf5I5/VQytBlEH+DV9+hh9JH6hR2/
         g2LsfXgqPMG2JJVEoaJp80kiyGgwVLoEEMyzuH14VXiOcvYeBgcSP1ZTJ1/5l7bCapAO
         x9Ig==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=fCAySHRa;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 00721157ae682-6f3e74404desi236012637b3.114.2025.01.07.10.00.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 10:00:05 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507HHR9v017910;
	Tue, 7 Jan 2025 18:00:00 GMT
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4410f3ap5q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 17:59:59 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507GdP97013645;
	Tue, 7 Jan 2025 17:59:59 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yganuqj5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 17:59:59 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507HxwOh38470348
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 17:59:58 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9591E58056;
	Tue,  7 Jan 2025 17:59:58 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EB04C58052;
	Tue,  7 Jan 2025 17:59:52 +0000 (GMT)
Received: from [9.171.94.59] (unknown [9.171.94.59])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 17:59:51 +0000 (GMT)
Message-ID: <60ac457f-d762-414b-9b3a-b85a2181c2ce@linux.ibm.com>
Date: Tue, 7 Jan 2025 23:29:47 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 5/8] block: fix queue freeze vs limits lock
 order in sysfs store methods
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-6-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-6-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: SAmk3EbAribcnbNq4fhQEPQvwJ5g5bbV
X-Proofpoint-ORIG-GUID: SAmk3EbAribcnbNq4fhQEPQvwJ5g5bbV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=531
 spamscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501070149
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=fCAySHRa;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
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

Looks good to me.
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/60ac457f-d762-414b-9b3a-b85a2181c2ce%40linux.ibm.com.
