Return-Path: <usb-storage+bncBD3JNNMDTMEBBEHOQ6YAMGQEQVVRIDA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFEA88B3A3
	for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 23:13:37 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-1e0a5e0c734sf12608785ad.0
        for <lists+usb-storage@lfdr.de>; Mon, 25 Mar 2024 15:13:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711404816; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBW7xG6BXQMyXlNFprlfCbXdpDNK4NHmMyLbdkg9iQEsWlx5PhIwGNcDQIPQTIz7vW
         aA5yMQfXczNCpgHRGYuWX4j+WO5hUHSKxOJmQMYu6mrrRL1okB2m5/h5xwgK7QHr7cit
         IP3m2oCaV2s83EKZhn4QWP0pdeHuVmvdy6Ci+0bo8n7SH/EyGpJkxyGuo0yx4CzwrYGz
         da+qwdtILzQPj4khTd3qDXqxEHL3h4onc51eXEC2qoSdFVTrY2UDyz40AczNpQ3ap3gM
         8TNOpYhZn6mqBS3iT6dIlbjfFvvoUgKSrtSWAfyqDcOysW98ZyeyEf/4m3eI9AmC/7WJ
         SquQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=7ch6IR3Zi44ij67J2cQMMX/zyBYfjlWN2y5cMW//M5Y=;
        fh=g2jjm+7rWBGV5KF23GdJ2AsLku1OEaJgPbwwyupDABE=;
        b=JFvsgAj6sNoy6Ds2zhwrV5r1NOX105QHA9HFtgZRG4zVDneZwE8yPNHnCvQ5yqAGft
         d+sf2QMpnBQ5GtTJ4Ln5i8Ldj8cYqrRur6df6YVD98j6zTGP45WS7kDRMlOf5u21no8L
         6VRGldknUBX85Hja7PVfRLVV8lkaVjfP+aPX4FBilP3HVH2FibVK3HJ3lBs5cw6Vkq6n
         QfBb5CNvcPmcgz8Qs2OMcYwAHdhYNUbwumWPbn6zdNqsC/UynyDDt86tz5KP3FKw/i5u
         Pph0PMmphjULnNnAcxeMlbg1E1C12nyY/fkxH5Dd+3mKOlumIjaofjeOdo62tihLc6WI
         eNSg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711404816; x=1712009616; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=7ch6IR3Zi44ij67J2cQMMX/zyBYfjlWN2y5cMW//M5Y=;
        b=CZkh1FN9jR3yEaGP4QhEIeDyqte5g3Vmz/G8IxCfmI3a2fWxGiM3v+yiDrP7Rlj9Ai
         ew9EdThXbwfqoh1mAPasOVLyFIySQfIqa7pvDOhxPyAAUlEzNFf0Lk2sTuQVZdi//obR
         MszfTNpKkm3JzpXqbyfjQiVc12ubLQu4NY4N0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711404816; x=1712009616;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7ch6IR3Zi44ij67J2cQMMX/zyBYfjlWN2y5cMW//M5Y=;
        b=T0V0/2BgVbN7WzSz313tCzsuZtL+nTj6kPWNUVEPEQ47CnWO5bSKWwS7T3lLtcxMFW
         X3F5BSkv8eEEGuaaREdGTqPyf1cEpWxj4qGbf+Bav7a+c2oWi5H7d4pU9MW9ttDeX/no
         ZcdsIlu6OPDtPqsHVnjUdOSbPiqjoOKWCnW1OnaE0S5jx/nrPiUoW+Ax5rwxOyjH4m9D
         TJyMx2HGFgw5GqxVLNXqeXoAIYvnRbEVst9R5ipf/MxbCqbRIjkrD0AI5LmrRLblR2PO
         IdHgH1rNn20VtTi6io5t1X0nh20YoDe03RERAkSvlar336iNlVnobZ2P/98RI2XMKvxu
         2gMQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVr54YpSTcbzitKr/i2xZavdi3upkhc2Ibc7ggPsGan/oiISliJ3kVnDbEQmzZYIJ0aEnbtB6SGkKWRF2sWaSGPnjwg+79dUYio
X-Gm-Message-State: AOJu0YxkhWMHoBjJJjpYMswIHxFwijeH9yQoR6grynBN/14fm9w1UV3y
	e8oXWNFoTYA9miA6hJVDYHv0+qPRQ4yypejVkKncTCKxVUvb6q6dj4Y5Iz8rcjE=
X-Google-Smtp-Source: AGHT+IEOpDQlIyw8Aycfedmlgpp+F24lz88wfvc9glLSMqh36nk1Web+GytWVLWvispjTRDLu4HMdQ==
X-Received: by 2002:a17:902:b28b:b0:1de:f91:3cf3 with SMTP id u11-20020a170902b28b00b001de0f913cf3mr6603627plr.55.1711404816419;
        Mon, 25 Mar 2024 15:13:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:dacf:b0:1df:fe67:5cfe with SMTP id
 q15-20020a170902dacf00b001dffe675cfels1237112plx.1.-pod-prod-05-us; Mon, 25
 Mar 2024 15:13:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX1LQ+lQZYZd2mAxpH1Jr1v9v1NXA1xE/WQ8Cgi/FSmsJFGjbHE4Q4Z0CW8UwtL1wy514Vc6JJgXVVZrufLpbJgNlWtOWQEgWR51+8j2bQb51qkNSI=
X-Received: by 2002:a17:902:ee46:b0:1dd:7da:e0a9 with SMTP id 6-20020a170902ee4600b001dd07dae0a9mr7945220plo.69.1711404815077;
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711404815; cv=none;
        d=google.com; s=arc-20160816;
        b=jgZUvlq2xxYZ2UbpIyIqldfxsnpV0gElh08tIk62cLVRmrLU7QOWet/Y+LJ4fJVxve
         ZCWNEaGDcKOUsX1yUdowB0pNiZZD0wj2b7pCWqgWF1Fpm0o55Kts5TmtCloWk54bngRP
         rdVZfZGATdI1EAE7HqPIztdvZmOqHJghXi8OU6qcMv5xU8gdHMga1GJe+DmPUfS8s/4Y
         xqlBB7/LmNPT6MdJwkx+GciMNpNAD1fZmWATXsWBw7wx2GeG1FetBYIMWDpw6A+IqzeR
         Ka1ztvBl9YRrPKwEHAv+7u0XNWoWLYeEG5ij+dwoqvlZvwtLVz9eRm+LNX+8FyTfzG9V
         DAdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=lY9FIntr0nkvHSL2c+KUE7nnc9/NyBweIhAGiFvlGMc=;
        fh=c8n3wwKuldAUDs2I27UvygQyZaDNwAJCSxxkjw3U9L0=;
        b=dCeAD3diymMoTEuuzkXnPbvVIr8YF8ntD6iwW2camsDhUntAD3kEb0uuIBgX4XpTFW
         Ywzh3VAi7NXkagmTeV0KDegnp8A75u8eBDOnMrz2iQ5J1OQv9WNHgz9nFIVas12XGVzf
         yIaKwzzP9tm+QP4QmYHqD/9Ah4ZPg+aXnCcvzCpIQ3dMJebVqXn9AXlJB3RtUbdYjPvH
         UgqYpIa3lK/AEah7Q9tY3xUEATNhTZlaKheckIWF90qZMPvlffSCynMNyPeg9RDmNw+I
         NnElbLnht/XmYE6gUAEUAekjlTl0pGVoSV4kyPjB47g+RCMick913YxU51xD+7fYXXTk
         TeCQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e10-20020a170902784a00b001dd692b17besor2863525pln.0.2024.03.25.15.13.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 25 Mar 2024 15:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXqUMo9huTAmV3684wq3ePBZv1bc2V3Img/psuqtp8WsM8WpcpwRsT1Abwaf3QgBiSXCGE3pmnQXbyQTZwRZOKxY37MUjk2CSDp08Qk+R5GoWKfJDA=
X-Received: by 2002:a17:903:26c9:b0:1e0:27c8:5c7e with SMTP id jg9-20020a17090326c900b001e027c85c7emr7288051plb.25.1711404814659;
        Mon, 25 Mar 2024 15:13:34 -0700 (PDT)
Received: from ?IPV6:2620:0:1000:8411:262:e41e:a4dd:81c6? ([2620:0:1000:8411:262:e41e:a4dd:81c6])
        by smtp.gmail.com with ESMTPSA id v17-20020a170902d09100b001dcc18e1c10sm5273962plv.174.2024.03.25.15.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:13:34 -0700 (PDT)
Message-ID: <47028fba-7fb0-4eda-81a2-ccf439cfec6a@acm.org>
Date: Mon, 25 Mar 2024 15:13:29 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 07/23] scsi: add a dma_alignment field to
 the host and host template
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Sathya Prakash <sathya.prakash@broadcom.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 "Juergen E. Fischer" <fischer@norbit.de>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 John Garry <john.g.garry@oracle.com>, Jason Yan <yanaijie@huawei.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 Chandrakanth patil <chandrakanth.patil@broadcom.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>, Nilesh Javali <njavali@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-block@vger.kernel.org,
 linux-ide@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, megaraidlinux.pdl@broadcom.com,
 mpi3mr-linuxdrv.pdl@broadcom.com, linux-samsung-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <20240324235448.2039074-1-hch@lst.de>
 <20240324235448.2039074-8-hch@lst.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20240324235448.2039074-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=acm.org
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

On 3/24/24 16:54, Christoph Hellwig wrote:
> Get drivers out of the business of having to call the block layer
> dma alignment limits helpers themselves.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/47028fba-7fb0-4eda-81a2-ccf439cfec6a%40acm.org.
