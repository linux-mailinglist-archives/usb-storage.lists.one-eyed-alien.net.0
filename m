Return-Path: <usb-storage+bncBD4KDUPW5UNBB5PH6O5QMGQEOYIC57Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id C86C2A03B17
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 10:29:26 +0100 (CET)
Received: by mail-yb1-xb45.google.com with SMTP id 3f1490d57ef6-e549b6c54a0sf9303660276.3
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 01:29:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736242165; cv=pass;
        d=google.com; s=arc-20240605;
        b=Vdr24VPLb7/zKFPb8C7JJxUyWZOsVV1RV4uvjHABCaYoPcFlAKFKq6nv03gTNBA4Ih
         o5/VzBVqPVv4HiWLuQV6PrTaJtwAUa+8US7MwLeAgKyLaTuG5/bfrgklnfhCF9UNzh6j
         beVS7k4BGOadObbXbpMVyMKlvEbu/i8BJ2fR5zAAQs37+XmJKisbv+YppFu18xrafTcG
         RmvqXugEpXzzWCTt9kHmHYltESFbbvq2FORbaQfGv48K2gJUqPPu/P5jhF6R6BafVSEv
         vBeLsB1RX5McpYoQyoLjY/SZzw536k+NUo5UMZHg1Vv8B80SKda2aZrDAlgQLaJxFjk1
         CKRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=e9i7T5tppq7OUtjfEZvaQN8opLtyngdT+RwzXHFM/xg=;
        fh=tsQx8NmNH/cKV+BVMppgpnTDhtJn7hroVjIokvc5OSU=;
        b=Mu+23fQrClqwS1DzKzEkG/8RV8Yb1zylJA10fMyvZfC1KVMIFqOsx92fwDg6CyoYwC
         o+xHjssqCIEmRJHM/xhE30Z4ac8W9HHLApitmbjVNwbFXlGBXE9h/TqrorswcsnZXFAt
         mvaua/5POiA+WWYAzkQu1c0a0Hhh+KVDl9mdOBSJ/CuCCK8d+ZjdDjLU3fGUlsq9sIUP
         wkeXZzr6uAaJz9YEnOWPfWSVcszHX92giDQXFPuZFXj6NUMbPE+yJp5szqDLw9lEDCSW
         tpDIqP0GeXf9tWpPYISQJ6935n2SDmmvYZAPdd9hIH9QEd+Hrcxw5d5q2hquV0lEc1mV
         aoqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=o10GpuTN;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736242165; x=1736846965; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e9i7T5tppq7OUtjfEZvaQN8opLtyngdT+RwzXHFM/xg=;
        b=HO2Rp7mRTqHpC8XyDx221FtnY623c3Dae30UIMU/y4dlXgkc+cwSrXqtRo3Owye/o/
         gGlb6Qev8FdQ2SddIe50OJB8bcetNwLe4feJx+mCLXtqY/5llecXBruEayBmsAtOh7xG
         +YVGxL6Pf1gGhY0KYiohw96+1g/Gtw+RGZ69c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736242165; x=1736846965;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e9i7T5tppq7OUtjfEZvaQN8opLtyngdT+RwzXHFM/xg=;
        b=YYllWlJQHfZzldoPQwJpOVhnz1dYo4uQbCp3539khpE5x79gTuC3AUVQlIGhvvJT9k
         viE4UXXYAKxKgK82fkoUvcgWHGbSa43ATKJa3WnXbKlplRCOXZ51DgWQ/oHJQ2yfBPq0
         F802fF+XJvNYXjB8AYOrBr9Leaiq7qyldY949o0SI43x+Z0ubZ5Ud9L9hU5YStS4BKfG
         z+NQ/uHoCB1X04wYmiGJjfwoFvV/JbTPD0icG6UIspwf7p2Z1K0snOl+syHL5byeRAD3
         4X27RbeW9cdAOH9BhppXLIcxRftSlbv9tfaBvpP/SzoehPhhvGSNpiAifuCEdTWj5edz
         ufcQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVlLuqTcWBpNYIl3Z/bAJvxn1GXsLwlQU9QMNihw+iJw141lKKhGsxD1LFqXRMuAiQLGHCJ6Q==@lfdr.de
X-Gm-Message-State: AOJu0Yz2joGtr2dFtoBHXVAF0hLyaKghaeMMnXn0a6f5vBbQzA+ojJmh
	SK1H5kBPwYxSS75AyC6ogb0WjdNc6PtafoqE6T4m5LGqX0zLm140wwrNs9oynhI=
X-Google-Smtp-Source: AGHT+IGjTZuqS2xOsckXzBm+RYkfe7ObKE4WscKETLWaBQpP6h7kcVuUpo15+XSwX3VS7REiq/5TtQ==
X-Received: by 2002:a05:6902:2845:b0:e4d:25c6:c398 with SMTP id 3f1490d57ef6-e538c20824amr35314648276.1.1736242165654;
        Tue, 07 Jan 2025 01:29:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:b31d:0:b0:e22:6000:7f32 with SMTP id 3f1490d57ef6-e543f967361ls507374276.1.-pod-prod-08-us;
 Tue, 07 Jan 2025 01:29:25 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXpGpPpVE3OZO0Ax24gP/GFLCPKhxagSqv3n+seZY9RIgHXsmHadeA9r0IV/tIT9YdBkFTRGHaziLiv6Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6902:2607:b0:e4e:95b3:4fef with SMTP id 3f1490d57ef6-e538c243ebamr47131332276.16.1736242164751;
        Tue, 07 Jan 2025 01:29:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736242164; cv=none;
        d=google.com; s=arc-20240605;
        b=aUY1Vs1JvVazeyGU+DDl6CZYeQ8UheUM0VoXfH2Zk1jLkbUT7otOW1Gw3h2vyeryAN
         OCahKlikHvzvOZL6pdU1VoinyUYLzyOIMKy4JhWp7X63Qg+LyvBoKI3YztHavhtSXgcD
         EOkksUBFqPDMpICwGjhdudFVW+o75qbuVBbjJ2xLNNkUahmgHNJg/ANB4cx8uOnLIpg/
         2/6gmj1qOds4KV322bPcVyOC8W/i8m43txDPDiyKtKHL87z9c57VLrLHmetP4sQs1fM0
         YhcJaPtx7g2RVq9nuHc82IPvHNJHwxEcLXCYqkbUTgwtsyrhNGHboNHiP3HW/Cpm9Lfc
         7l0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=Nqt19LjA7V6SFxJ3HfBT8AU+vaazARI3YF1sz5W0Vfg=;
        fh=t8kSgzmsOCPzOgDM4DP8dMU3CD3uxeQFaZeaP/9WqE8=;
        b=JicbyLv+BkpypRj1MrKitId/0qheQxRqSB1gIE8Hf6GHngiTQID8tMAwZ38OZhnclk
         n00VSljEqy6l+QE1l5V3kVW0/z8wReeK1B/X9jhI5zgRTKTErROrbUmXhBr1m7l7NAzp
         cmRm2MtOWWOaxCocQm6GZWnhs+gqY0GGfXQNGqYhm/tfCKNL6Zip3lM8BUaiF9xQccq5
         G6jcAbQhFGDdiC+P45+iPxC9l1TB1bThyqvavqhdhz8McStJ7b8R9rGYXokGLeGGPz5u
         jda9X4OFsTzkTkKCKGundaoKSgP9DgvGBBLOhUJ81y/hbWEhE1cRYmzksiKM82ctXHqV
         e4ww==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=o10GpuTN;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e537d1c6032si20548462276.609.2025.01.07.01.29.24
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 01:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 506NaH29007319;
	Tue, 7 Jan 2025 09:29:20 GMT
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440s0a9yn8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 09:29:19 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 5075lY9X027963;
	Tue, 7 Jan 2025 09:29:19 GMT
Received: from smtprelay05.wdc07v.mail.ibm.com ([172.16.1.72])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yhhk1k3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 09:29:19 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay05.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 5079TIOr23855864
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 09:29:18 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EDFD458074;
	Tue,  7 Jan 2025 09:29:17 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E9A9258056;
	Tue,  7 Jan 2025 09:29:14 +0000 (GMT)
Received: from [9.109.198.241] (unknown [9.109.198.241])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 09:29:14 +0000 (GMT)
Message-ID: <de4159dd-d0c8-4638-9c2f-c2d4fd1c64a6@linux.ibm.com>
Date: Tue, 7 Jan 2025 14:59:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 6/8] nvme: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
        Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-7-hch@lst.de>
 <96c48ba0-3db5-4504-a456-e57440aa1b56@linux.ibm.com>
 <20250107082224.GB15960@lst.de>
 <263963d9-ac40-4f87-b38a-edb4202d294c@linux.ibm.com>
 <20250107085825.GA16827@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107085825.GA16827@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: EwIytq_W9xmRz7cg4BLBWcJ2PsLco0gO
X-Proofpoint-ORIG-GUID: EwIytq_W9xmRz7cg4BLBWcJ2PsLco0gO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 phishscore=0 mlxlogscore=753 lowpriorityscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070079
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=o10GpuTN;       spf=pass (google.com:
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



On 1/7/25 2:28 PM, Christoph Hellwig wrote:
> On Tue, Jan 07, 2025 at 02:15:05PM +0530, Nilay Shroff wrote:
>> The nvme_set_ctrl_limits() sets certain queue limits which are 
>> also used during IO processing. For instance, ->max_segment_size
>> is used while submitting bio.
> 
> nvme_set_ctrl_limits only sets them in the on-stack queue_limits
> structure, which is local to the calling thread.
> 
> 
Oh yeah, I didn't notice it while reading patch. Agreed, we don't 
require freezing queue here. Sorry for the noise.

Thanks,
--Nilay

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/de4159dd-d0c8-4638-9c2f-c2d4fd1c64a6%40linux.ibm.com.
