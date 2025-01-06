Return-Path: <usb-storage+bncBAABB37U6C5QMGQEQY4JM4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 59846A0313F
	for <lists+usb-storage@lfdr.de>; Mon,  6 Jan 2025 21:17:53 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-29fad427229sf11461323fac.1
        for <lists+usb-storage@lfdr.de>; Mon, 06 Jan 2025 12:17:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736194672; cv=pass;
        d=google.com; s=arc-20240605;
        b=VJna1Oe4yiOICM630dScRMKRCK05EIErCTUPHULWznpb0vPbTzxQ0h02HKvyoqdQhZ
         QdXWmKuV4LYdp7HpjaVFGB6AW/R0oOdsp1vEQd5D5R8W7evj687NPF/qLTxo4Xpz4sss
         2ekHPVpWmtyDQP2vKOtIgiPaynLS2BQAF5Eyv/zvoEXeU6ghSaJ8e6VRY2WMx0i7Cdnk
         zk69ggmfeddSBFHYvXnJBhwFWyIVPHAC64KNEWgtS9BEAGOvf67Rk6R1TFr7EBenGjXe
         q7KqVX9AiM5SQ6qRIAv+bHInlSjLK0qY2NUFVM4XQ2RXv66cU5mVisA0LZp56L8j9tGF
         qBZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=oonJKPUnJhENDlVlHeFm2KeA+5/8cI/g4mUH/XF9AQ0=;
        fh=Ke1ntOJwwzqG+LsiktS+X1mduTRoTWBL2WEciPT1Fzg=;
        b=bs9lMeZenDojSS9E8iBvq+c5MRdDykzv46LRpVbvKz72v3nayv9ImGnKIV0JikXiF1
         wilmbBAv5+iahBWCUnfm/ZyEU8aEAa8nXHN3+fFmlxD5N8H0Re+QtGOSGrbfiVsEnPaD
         DbbhXnDeQCv+wgegGc7K0X4GPFOiueFsqwkctOmfri5miUnKP6ihiIsPhy9ssOJKIyxk
         ayEWsuZxPAFS9DaowPfC/m0zijK0qgUO6cbmltlObLebvbusA2xe0Ktc5U6ht9hZCWLi
         orFfvzpGsnp7StS86iZrCJrX5KszVhErelcnEsiMNmuAxqCpS7If3nigw/qzsv6j/Wi2
         YTtQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=MmnwOSfr;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736194672; x=1736799472; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oonJKPUnJhENDlVlHeFm2KeA+5/8cI/g4mUH/XF9AQ0=;
        b=ItmtdVFwPaCbyrMOrZSLOwARCMt7anI+SqXUrQfYo4yhONKOhkp6iYJwsAuwumnXnJ
         3u0Llo/EnYBsTsI6dn23rwNtGgSm6LhCth5lB20kX3fPp3HHZg37ZGQE1vCNc/2Nv5UH
         mH4gmH0QSqBREffu4xgKubXi03iOXn7T+adVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736194672; x=1736799472;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oonJKPUnJhENDlVlHeFm2KeA+5/8cI/g4mUH/XF9AQ0=;
        b=vXcs+b8hOLwE+0haTR9H9oqF88ow07kt1EU/lDlYDV4pFLm5tmmgaICIvxxkiZ+12Q
         rLR7kY6Ay7c2tmOPD6f76Lme97IppQ1K77gNuvbLOMjyHqFF4HbImjLl2A3Z+dPMWvNW
         dyaJqCUDN8xxq4tHmBU5LEVZ0qxB8TUo61FQn1zFNA+nUxeTbOCtDv4uErY2F6zTt4KA
         FEFjRgmH9SZUdi/iTb/ON9sTK7hQ2QFirgY7WBL6qGrvkWPHcVv02UN4NZQw/i/MAxJf
         JqxMI+MWx3Urmqq8TddszBMs6+rPNkeMPfFA1rPw/A0sLuz9bpae8oiT28jy7eJRukj0
         kGPg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXNC8kf3669G80RwM0gvT9Wk/Uxc/SDyIE6MNJsbXC4lSGjMb0KD5t6oFjuuy8OgX9NLxnvwA==@lfdr.de
X-Gm-Message-State: AOJu0Yy0UFC9ODkogAei2ssK0Ym6v9tUclzarfI8AesjGS664FtmbuUp
	oQ78MY+rj+ExSp7mzhM9NE6tTFzlkflG7I8KO35yLyywcWnZhV0ukMkVf2SLOtk=
X-Google-Smtp-Source: AGHT+IHvK5kvvYpuPhENlSDp/juEqCdACPn7WGjUI7bM85NqsNptWaBwfXnN/Oakb2z3s0VeqD4FNg==
X-Received: by 2002:a05:6870:31c8:b0:2a7:8c73:be33 with SMTP id 586e51a60fabf-2a9eac0df5fmr341925fac.16.1736194671752;
        Mon, 06 Jan 2025 12:17:51 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:f68e:b0:29f:90af:48b8 with SMTP id
 586e51a60fabf-2a7d0d70cfbls6729862fac.2.-pod-prod-00-us; Mon, 06 Jan 2025
 12:17:51 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWUL7CrBu/g1Vc7KF9fk31bn3IfvrXd001zNby1+YqUMguYdCkC+H9Boo7dcGM1G5GAZz1qcNzda5t5Ug==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:2e46:b0:3eb:3dd6:81bc with SMTP id 5614622812f47-3ef1a449178mr431522b6e.15.1736194671012;
        Mon, 06 Jan 2025 12:17:51 -0800 (PST)
Received: by 2002:a05:6808:2018:b0:3eb:6ba8:8c6b with SMTP id 5614622812f47-3ecfdf910c1msb6e;
        Mon, 6 Jan 2025 04:07:13 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVT8Bt+qz8kIr/rbRSMLjT1ZNeuVUU87x3QlutjzzhoaCLtu9oFkqFW/bFe9XlMtF+zVGwsBde0C4Srxg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:2bed:b0:841:ab27:acac with SMTP id ca18e2360f4ac-849885ad656mr4469106539f.2.1736165232479;
        Mon, 06 Jan 2025 04:07:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736165232; cv=none;
        d=google.com; s=arc-20240605;
        b=gy34jWwZRcVoJYn/Yip76YdwDxgRCbxnzDsAV04kKg+DhWazqyfi3P65oxKKQZ0sbp
         QemIHO0EgV5bVLrrqq1o4BDZRoJL/UevhEKj8X5iMdChURFjEKSJRs3GVafsXRZEAmRM
         ESE0gghRRC1FMc7/bo0RQ8cMJNyXfkawNo6TvctimJpzDJSUIj+YXraeH6lFAFR3FBRO
         FUC2ceudIR+8jLnNx3eN6+fPxBC5Q2ITXVVk4oaB24ifLsihC/Vui5YuCQBjoN64FOO1
         IcP2IVHGWG089VRAefnWNG9K5QD5ln1fyL507kYnmrRod3cBLOK8O0mAfIg4ISQzh+BF
         ZAYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=5VYWlzs54e2fOmMAsKWa3Enn7OneHP0TVzdAjmuEUBA=;
        fh=5/xUkkGiTFjTmc2HK85AQBoWPUmulwo9cPRWbjDPwX0=;
        b=FeTDpzkVXP+v+AyfGoY8VzYKvrtOjtcJ/2GV8SV5PKPPggVGV/QMDQLdKAOUdnrUX1
         QwqMRcLw+7u5RdG7YrsEB6GSy2lyl95sCYOTeexv/piGis1X7WqungU4lJy15if7Y4IZ
         kZpWYX82GVDFgx40hzWPj25iO1PI7ycRBmz7qd1BczxvuFu9HSUi5h6lbPecO36zD5tD
         A7s0rtVEHHyIEgcBLGQXj0TBGXZkSCZ/SQpnP+o5azVJRBizRex3MTCDmmuDZyt/7njh
         LpZDl7Lji34Rftf41Vh0Buwyb5pEbMqerp2G7iEeUEhYRSipE6LRw1IHqwIN7t1vu1ZE
         UQhg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=MmnwOSfr;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id ca18e2360f4ac-8498d8a7453si1865534139f.93.2025.01.06.04.07.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2025 04:07:12 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50600EP9030214;
	Mon, 6 Jan 2025 12:06:59 GMT
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44047haeuk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Jan 2025 12:06:59 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50696WKH003630;
	Mon, 6 Jan 2025 12:06:58 GMT
Received: from smtprelay05.wdc07v.mail.ibm.com ([172.16.1.72])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yfaswspx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Jan 2025 12:06:58 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay05.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 506C6vCc32244426
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 6 Jan 2025 12:06:57 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 62C0258058;
	Mon,  6 Jan 2025 12:06:57 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F24FD5805C;
	Mon,  6 Jan 2025 12:06:53 +0000 (GMT)
Received: from [9.171.85.164] (unknown [9.171.85.164])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Mon,  6 Jan 2025 12:06:53 +0000 (GMT)
Message-ID: <3fb212e4-8fff-45fc-9cff-f5b5eaff4231@linux.ibm.com>
Date: Mon, 6 Jan 2025 17:36:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 05/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <dlemoal@kernel.org>,
        Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
        linux-nvme@lists.infradead.org, nbd@other.debian.org,
        virtualization@lists.linux.dev, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250106100645.850445-1-hch@lst.de>
 <20250106100645.850445-6-hch@lst.de>
 <4addcb5e-fc88-4a86-a464-cc25d8674267@linux.ibm.com>
 <20250106110532.GA22062@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250106110532.GA22062@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: FGJElPxHemmUGQZFUCCrmUdflIso0Eah
X-Proofpoint-ORIG-GUID: FGJElPxHemmUGQZFUCCrmUdflIso0Eah
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=380 bulkscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501060106
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=MmnwOSfr;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
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



On 1/6/25 4:35 PM, Christoph Hellwig wrote:
> On Mon, Jan 06, 2025 at 04:31:23PM +0530, Nilay Shroff wrote:
>>> +static bool bdev_can_poll(struct block_device *bdev)
>>> +{
>>> +	struct request_queue *q = bdev_get_queue(bdev);
>>> +
>>> +	if (queue_is_mq(q))
>>> +		return blk_mq_can_poll(q->tag_set);
>>> +	return q->limits.features & BLK_FEAT_POLL;
>>> +}
>>> +
>>
>> Should we make bdev_can_poll() inline ?
> 
> I don't really see the point.  It's file local and doesn't have any
> magic that could confuse the code generator, so we might as well leave
> it to the compiler.  Although that might be about to change per the
> discussion with Damien, which could require it in blk-sysfs, in
> which case it should become an inline in a header.
> 
Oh yes, I saw that you moved blk_mq_can_poll() to blk-mq.h and 
made it inline so thought why bdev_can_poll() can't be made inline?
BTW, bdev_can_poll() is  called from IO fastpath and so making it inline 
may slightly improve performance. 
On another note, I do see that blk_mq_can_poll() is now only called 
from bdev_can_poll(). So you may want to merge these two functions 
in a single call and make that inline.

Thanks,
--Nilay

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3fb212e4-8fff-45fc-9cff-f5b5eaff4231%40linux.ibm.com.
