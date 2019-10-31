Return-Path: <usb-storage+bncBCHZVHVFVMARBQN35LWQKGQEATYNXCQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D351EABA6
	for <lists+usb-storage@lfdr.de>; Thu, 31 Oct 2019 09:39:30 +0100 (CET)
Received: by mail-ed1-x545.google.com with SMTP id bo12sf3519799edb.22
        for <lists+usb-storage@lfdr.de>; Thu, 31 Oct 2019 01:39:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572511170; cv=pass;
        d=google.com; s=arc-20160816;
        b=G0lrHx6JNMxMhqODy4tKDRhOpwfQIUYU0GrMp7fqeMpB2xSTggQO/zp1r2m/zSQ+Mg
         TqEKohGRGgLVcQJJuMp+DW3+jrCEP34G+9ui5eNLVd1++8dYZO+WdCAYySwbnNAVvgWo
         5IthQlN2jEm58gRl+uz02JC47L8zdrTVBQouQ6Mtjv9/aQPssdWm54JT+eymNmOSC3Zc
         QvcAC7bOOifwW8u7iJSYKQWaco3SvH24xj2Fa3pd+UglwDEGUo0v/Rc2+VOhFAqUK1XR
         o4Rl7ZTQhiR3NjVJwlILmxLqloKDQqFQ8X0JB8rCjN411DFdwA+w/nuvwF2EHIxOcq9z
         R9Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=QPU5Uu6iarIjB/6VxKmBzX2r8OxGnTUl0WdkaHKoC+4=;
        b=yqqa/+zh1vxlvbOR2WZI5dE3gXbHOJNPC20Sec9JGP02/DP/os6sqvcgAQVby6lgTX
         jAaa1qrUAMPlGX6CBrLEENo0ZzyJ+58268238fvJkgRMyN0ctzSo3ZHOGQ28ZGZdbkch
         Mq+8n/agtdLrKFt5X2da1JBkhH/frTKKcumFOdbcfXfqvYmRX2bcod5/CzkRU13j8T3w
         OWado5tZEBJp+NtNBJaeQ7792mVsGebYQLA5o1yKz5a+EjiW/6G2ZwAh5r9uMPUk+UO4
         BAuDpCdit5hc1uok4LXms/LNeGN2QniRdTz3wM9BqXVcCqvByYmKGijcFTweA8u+xE4w
         BjZg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QPU5Uu6iarIjB/6VxKmBzX2r8OxGnTUl0WdkaHKoC+4=;
        b=Pzr2K0xYIn01D2xKnenk4RBKvCbN7x0LL+sbNjRPU6uVsKOirxu9a9b/ggTeFAqzGm
         GICXPXVnP71L4p2gLkByJdujY3ooP1SABmye7dRxb/V7SbWe+DP7TU7d8PSUTf9VZlwA
         RK7tmTDbwznKFFBvmxx+ULdBHCNLE3vyAQZAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QPU5Uu6iarIjB/6VxKmBzX2r8OxGnTUl0WdkaHKoC+4=;
        b=XUqZ8j99pO1PfR/pjH2lc7QSlXcz0KM6ogAfASQhX/3Z/uT6L+E2JvcrBfo5tChkap
         jg2qcg2baVatG+IJq/GrsUTpAcZ10QupIa4sYNmWhFOLjA/i4VEZH0Y1ZQKm+/AUOuFy
         IJGZVpJAmLryYb5+EYA8UQLCagM3grcsh5O9VQVYFcDSuk026Vn0mCQ8eqoj0sQXRBAR
         qD/6LXZIVtG8xdwZsYVOAE2m+cG4kPq86TK0n/kZP6wvuA9RkV9UmGMYmo8zsReiIxjG
         H2c4j7zfS+E6X7POmVlb2/xHZ6FCwCr2N6Fotl5EvSSLzjzUHnQegu+AkcJ5IHHew5IM
         h0SA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVuVb734ysMxRmjr9fHr//rch0e+bh1+/cehq7mr9glU1Jfj42x
	vuPurdZpFwKzE9ZqHIuxK0pwlA==
X-Google-Smtp-Source: APXvYqxPb5hwl8anUIlcqdTbTEDcKybq8Fz6HxraAH0fJ/Q0wUIqoZg5zIqenqslzcpJ6WVwAVtB4Q==
X-Received: by 2002:a17:906:4bd7:: with SMTP id x23mr2533991ejv.320.1572511170148;
        Thu, 31 Oct 2019 01:39:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a50:f092:: with SMTP id v18ls529446edl.9.gmail; Thu, 31 Oct
 2019 01:39:29 -0700 (PDT)
X-Received: by 2002:a50:fa85:: with SMTP id w5mr4587894edr.113.1572511169338;
        Thu, 31 Oct 2019 01:39:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572511169; cv=none;
        d=google.com; s=arc-20160816;
        b=lLKIcmlBcUv3TfBZJZQWIvbij/cblo/ibg8ndvTStaZDtRw4VG54rh/hoZfA044h33
         MTwpuvxHhIsz/mz1c58ibhNCIoyPxbsjNSodYQ6RF7ccDkvLCwdVaeOlrtrtTCR0H1+Z
         t8h2Ks3/RtpUZa0q9wR3M3Q+lTkvHR1TkEKrcmbBsfFwLvhlz/o4S+QBMmAadG9+FcOF
         S7krdbA1++75Fq0DsEXJkdBL0JDZFfdK8FCWLBlTP4EXMFq1dHM7I8uVaRyg6f1jsUQR
         TtnSfRV6GEsx/9OlV7qwdR8wYVXOfqR+dERMMbiYNVdenVG5J8y0mJXrxJX3FfMvSPeE
         4qEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=xlQh1AbIhT7jBqiTxkE7KHqv7YP5IpTD0s2mSIthkn4=;
        b=I2KJ9z7hDg0Ol7WvPeqJjB3ghEFCKBPY/9eH75LtOdR5GoPVFZV36nMTLSYiOmsP1j
         CfvPuZv/8hGknVHGGr9xfLsXibIziTx951ErIUh1UxR2XiUDs0fDcK7NDtq9hjPbtuD0
         wfZ7OlIxAmMfZpx6r3+qtaPKChd6PLbwRC4/ZKkIsqcU5FIUV6VE6TClvQ9mvcJr1Pjd
         h0BxU5Qq+E9jif1smZXiHBbGg2jAQVl+9dq5iF9je2n0Pjr4arMdi0JUYVklKWw0fnY1
         2d1PcSdNUOLSQyXBPtJfGaNj86BPx+hq8x4vRAk9r3K9R3r48TlW8XBDORBWirVRtycQ
         B68Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by mx.google.com with ESMTPS id k51si3508894edb.411.2019.10.31.01.39.29
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Oct 2019 01:39:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 4BD67ACA4;
	Thu, 31 Oct 2019 08:39:28 +0000 (UTC)
Subject: [usb-storage] Re: [PATCH v2] scsi: Fix scsi_get/set_resid() interface
To: Bart Van Assche <bvanassche@acm.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "usb-storage@lists.one-eyed-alien.net"
 <usb-storage@lists.one-eyed-alien.net>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191030090847.25650-1-damien.lemoal@wdc.com>
 <af516590-58dc-0377-5c54-ac63cffbafc8@acm.org>
 <BYAPR04MB5816D4B866F2E7CC421E8488E7600@BYAPR04MB5816.namprd04.prod.outlook.com>
 <a33afd2e-a7d6-5584-dc26-79fb8f3d6a97@acm.org>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <a640ee15-515b-6811-9883-48b49ead9276@suse.de>
Date: Thu, 31 Oct 2019 09:39:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <a33afd2e-a7d6-5584-dc26-79fb8f3d6a97@acm.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
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

On 10/30/19 6:01 PM, Bart Van Assche wrote:
> On 10/30/19 9:21 AM, Damien Le Moal wrote:
>> If you feel strongly about it, I have absolutely no problem with
>> dropping the patch. I just would like that it be dropped for the right
>> reasons...
>=20
> Hi Damien,
>=20
> What I'm wondering about is how the SCSI core should support residual
> overflow. Should a new member be introduced in struct scsi_request?
> Should resid_len be changed from unsigned int to int or should we
> perhaps follow yet another approach?
>=20
Please introduce a new member to hold any overflow value.
And document where it is needed.

Cheers,

Hannes
--=20
Dr. Hannes Reinecke            Teamlead Storage & Networking
hare@suse.de                              +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/a640ee15-515b-6811-9883-48b49ead9276=
%40suse.de.
