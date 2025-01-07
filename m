Return-Path: <usb-storage+bncBD4KDUPW5UNBBEGV6W5QMGQEJ22L3ZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id E7160A048A9
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 18:55:29 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-e549eac4ae6sf6821536276.1
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 09:55:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736272528; cv=pass;
        d=google.com; s=arc-20240605;
        b=H7OnkySW26Ks8szpZGOXGjMTiyU7sQFgJBFtqcIb8cFrZU9eqI5DtB0B/iTFBl28ok
         6CecBHDo/Zbi2LsGFnw7YKYVc3eDDoOwlKHGONtai9mLXbpdE7qas0Mxq7rGvSfPTmNX
         Tw/YYF1YdEftlbT9bNFfX/HNanizlSt4TeRGqD7G4xCwP/CmYBhE8MyafUZunT4fSBIB
         /xfdI9tD6TMUTE+6/738UNUKjlaAwz29KdaiwTaQ4O1N85kyJwju8FBLiE4o4YjFbLHM
         JDFh48QF5zR2SlE9/3aCxhZp+MV6haLKCNaOnhpiycUNwsCGQ69OOa6373srRsMVBzn7
         ip1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=Y0iBj5HCaRuQVwimnQt2X1ZMjeoah8mQb8J+r4BNJlc=;
        fh=oZTV3z25+fyBtz7+Nw9bKLy9qFmkh7sJP/XHmG5x+v4=;
        b=OwPwou0gALdQzUi+8YGEQCao4a5Kado4f3SC6kT12Gh+djjfjUaEl+vOfR8XOkKxtJ
         RFmaOCFjEK+6e/jOBnvvboT8uzNzgDTexJ/6093OvEIkpIyL16PBvALu+0nG5OmBhTGp
         NOvi/wtT2Xa9Z5VepbqfpGAo4+c9hwa4hg8ktTdUBse+G6pf/wFvWtaSXDXxIJmkh9tU
         amgB3Y7bh12j8pWWkNjX0ahgZFl/VnD+COmsE46vFSWuOy8wjfIh3sHX6egx/DNaZqjZ
         Nj4ZwWNxzfGJ61zQ03YErUGS5pC3nE3nKjih6Mo2NLD/myJ+L+MaLstPVh66xtJr5Tqz
         q7ng==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="rH/32Jzh";
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736272528; x=1736877328; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y0iBj5HCaRuQVwimnQt2X1ZMjeoah8mQb8J+r4BNJlc=;
        b=aq7wYi7SY08q2eHun995elOFpMcL8WGDFqU38eNByb50fZ3qSnOXG8ZZ5gu+Zs1oah
         kby5C0ZS8g+AZdRcv+JyjFAvlVJW0Uy+BjXiybq3mzhGdxrbf85E/U9nl+I9RuLzTYlW
         ZKxE4Qr2avsr5vp20nirtAnZ5C7iYv37rsLzI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736272528; x=1736877328;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y0iBj5HCaRuQVwimnQt2X1ZMjeoah8mQb8J+r4BNJlc=;
        b=QwVhaRuiffBWli96tyrts+woIW97kdROw9xYSIbz+PsrG5C5ym2dEHM07vws05o8of
         NxMHIgbaE4mcRFEFTJtL8Gjjbpfk+AaISw6eZ90XNeTit11nqLntpY6znY/9tKEqW0GG
         xbQDMgq1rc1/5ETOAVetbU+mh0p5fnE+ObxvGmRggYUpH4GjdGvG4mKv2Vw8HngYquEB
         KOX15nqJCrFDDfMwTvn+lSvxtoY+B3OTLoBSu/YpWwrckr0fydhHEjkcGFWVj6fS7dRD
         e3jkaqiDSu3B6RGUsPBnZ/JY9wm+9OK9uSgWdoYxgd39jYimrmPTTvq8c2Wdr4360Xre
         a2TA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUS+HfoXC2mDSVHj4pyysyg5ZrhDt10nKWVsWlofTDe0RUTKihGShaLfPfL4UaXRi1H9SK5Ww==@lfdr.de
X-Gm-Message-State: AOJu0YyiEXNzAn7YwPB0rK9RzrEqBDb/Z6KG6Wp3EdvcJluOxERgFK97
	cyPFDV/Fe60VAfNlfstUTftRAEw68+3ZrvgYr7scGT0w2h6dgZsKU7JRsdZZLtM=
X-Google-Smtp-Source: AGHT+IEYM8zGxWrdn5RPaMwgUjHRC0wzlVZhG389fB4aCxh6KMjqhG52lE/ptrSkbkpFYkn6SOE07w==
X-Received: by 2002:a05:6902:1006:b0:e39:8c5b:90b4 with SMTP id 3f1490d57ef6-e538c25d277mr41310625276.18.1736272528627;
        Tue, 07 Jan 2025 09:55:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:ab85:0:b0:e47:56ee:7a99 with SMTP id 3f1490d57ef6-e549d7e3dc6ls737381276.0.-pod-prod-02-us;
 Tue, 07 Jan 2025 09:55:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUAdUtluxzPSUGh4ieC5MdBRjUyV0FE5MFKf7KEJgT++hFMdqZ7f1nVkW/NlbNPcWK85OdcJj0Tsqq7cw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:6107:b0:6ef:97a2:49e6 with SMTP id 00721157ae682-6f3f820cd0cmr512255447b3.31.1736272527420;
        Tue, 07 Jan 2025 09:55:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736272527; cv=none;
        d=google.com; s=arc-20240605;
        b=e/2mYh1gH/R1G1Udc+slJVK403yduTcBRuy+/WuCVK28Fu/CC+pz1COM4njQQQMZ1i
         /OWo2yqJHt/LYcpifOqsADYSEKbdBQEToLVDy4otJ8I33TyTBmvY97uGK8wXntL3W7wH
         Z82VaRt06ZQeM3qiI5L4A1PDFkptt2FbjcZyAQ1P9oWI/t1UKF+ZVajdD1XPe+q9sYm3
         eI+OidfTR3oreGfu/WujDUYEhhZrbN5jirdjeYP93iEu1Rm8QeNz/cshSYhdHLcez3SL
         LryU+d4xrf9y24z7laAKLA+CAK8hYNp0Thsr+bmcH0RBpgP7ZvelBIWBsumdOOIMDvWE
         Xl9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=HMbO7hlrNMTXdmKpONt1Aq5oqQ7AJaSHQUMIYEFQ2eM=;
        fh=t8kSgzmsOCPzOgDM4DP8dMU3CD3uxeQFaZeaP/9WqE8=;
        b=eYbFkBoBjjn6NrvHVv77MqwZYHp9g6mzxhiFEjC7N5Am7aB2v16zq9/ze++vxbCODv
         bkEmuClXz/iZkhJvpDLQO+tt7PJwsJ/4NYwaWfjxi97JkYOFj49IegS1yS82ZFQl5WrC
         omW5dZFVaiMg9VhZARxZcAMgCyFB40FJcb5zfhlkopHWflu07gozuN2Q0XaxKp9B2IMh
         2aLXGlPZkN+t9aHixVhRd27G8OxY6D0Jcl+L5GHFKhFXnRJIskrElJXW+NoyN4R6GKeT
         0PTrMIgMAHph2FwMtWx6RCfLDq9Qbvw6gXn5l3pfXK9wjAz1XVF5P8MwMAUMriZ74/+9
         2hSA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="rH/32Jzh";
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 00721157ae682-6f3e78c1200si252889527b3.526.2025.01.07.09.55.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 09:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50785vCe018355;
	Tue, 7 Jan 2025 17:55:21 GMT
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4410f3anky-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 17:55:20 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507H06SB013571;
	Tue, 7 Jan 2025 17:55:20 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yganuq1m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 17:55:20 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507HtJjd62980550
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 17:55:20 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8C9025805E;
	Tue,  7 Jan 2025 17:55:19 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CED0758056;
	Tue,  7 Jan 2025 17:55:16 +0000 (GMT)
Received: from [9.171.94.59] (unknown [9.171.94.59])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 17:55:16 +0000 (GMT)
Message-ID: <28ac4f43-7454-4cfa-b84e-1f9d5e88ae4c@linux.ibm.com>
Date: Tue, 7 Jan 2025 23:25:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 3/8] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
        Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-4-hch@lst.de>
 <220cdd33-527f-405d-90af-2abaace36645@linux.ibm.com>
 <20250107082145.GA15960@lst.de>
 <90ae40c5-b695-4e17-8293-6a61648ed24a@linux.ibm.com>
 <20250107135153.GB22046@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107135153.GB22046@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: fsV-E_6bOkHQDwwiIcx32pKWFDomgWq6
X-Proofpoint-ORIG-GUID: fsV-E_6bOkHQDwwiIcx32pKWFDomgWq6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=999
 spamscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501070146
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="rH/32Jzh";       spf=pass
 (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass
 (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
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



On 1/7/25 7:21 PM, Christoph Hellwig wrote:
> On Tue, Jan 07, 2025 at 02:53:40PM +0530, Nilay Shroff wrote:
>> When I applied you patch on my system and access io_poll attribute
>> of one of my nvme disk, I see it returns 1, though I didn't configure 
>> poll queue for the disk. With this patch, as we're now always setting 
>> BLK_FEAT_POLL (under blk_mq_alloc_queue()) it return 1. So when I haven't
>> configured poll queue for NVMe driver, shouldn't it return 0 when I access 
>> /sys/block/nvmeXnY/queue/io_poll ?  
> 
> While that was the case with the previous RFC series it should not be
> the case with this version, as the nvme driver does not enable the
> poll tag set map unless poll queues are enabled.  I also double checked
> that I do not see it on any of my test setups.
> 
Ohk I did install previous RFC series and tested it. 
On another note, with latest patch series, assuming NVMe driver reports polling 
support when it's loaded, accessing io_poll under sysfs reports 1. This is good.
However later resizing queue so that no poll queue is left and I reset the controller
and then access the io_poll it still reports 1. Is this expected? Other than this 
everything else looks fine.

Thanks,
--Nilay

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/28ac4f43-7454-4cfa-b84e-1f9d5e88ae4c%40linux.ibm.com.
