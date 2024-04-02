Return-Path: <usb-storage+bncBDUNBGN3R4KRB64FWCYAMGQE2DBL4GQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B823895435
	for <lists+usb-storage@lfdr.de>; Tue,  2 Apr 2024 15:07:10 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-29c7932c5f5sf4028766a91.1
        for <lists+usb-storage@lfdr.de>; Tue, 02 Apr 2024 06:07:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712063228; cv=pass;
        d=google.com; s=arc-20160816;
        b=0bat6CKnPcNZK5/kAp9Xjxx3renWenm+RWsEzVV0AUBHF8hv90qkKZ34Ga+Ph7o7U8
         /7ZwzfWInJ0+g0vJQUyMBqmiOMgUHgaPRcV04di6NyV0126wBaJoorfaQwbQ94BoSsEw
         0OKp1wVKaNobBiZF/PE/j8iN4s5PXjx3aHF/Kfm92mgIk67AtfZWJkX0DwRz8fdA8bBQ
         PLPwkIJSoNaq/p3lXH2lhvNjY/nThKDJ4sFIv5tOK749eNcosVaB6qVd81BykvJmQX6b
         jaUakX+HMW8yQqg7o+AUzA+M6yrMAcAWMStQFjah6ZC71nl1y1fTYYOwf0jOFN46sVgD
         w9IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Hk0fQ1srfRdftCJn1xJrJIrSlKNwT0boWj5vxTQM+WQ=;
        fh=9RCXxBwhyahAMVPKum4UCNA+zzvg3d3tSITkEBjSSwA=;
        b=l1S8zw09Ja3KPJesydxYkXzX6MTOLetN/+o9yXVHD9L9NhFBFLPfX7vzguHPVwhhoT
         ro0PU9HJEjmj7Yi74nzN6fSmEG3wc3zIkDdICbgmz115AI3o1/S1eIGO4CFSIHm1THcy
         ymq9JYqZaMU1B6/X07qOUEfSBV9+DnanEw2pC1lQlHBHEpZXlaDdS2j85lpez7tTBCIN
         pIGdvqbBZQm/TWHOiDV3RhJs/eImTE4uUUtdoFxqOr2MRt72khcfTWt01LogzSfuTo53
         sLXID5/IOPhdxYAiMSQKF5/ckoVa6oVUhqZouLNP3r2JJlVfqFlgMpja8WW4WwKyZm7+
         +QpQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KWKR7Ayw;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1712063228; x=1712668028; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hk0fQ1srfRdftCJn1xJrJIrSlKNwT0boWj5vxTQM+WQ=;
        b=GtnNqRhjuE9FX0k+SmMHH/GC2tuv3V3HmpW20XfIfxndAx0IKSpYkEccFmR62kCnFk
         kHdAgfaKeo8WOS8V8YNSS6Vf8eRnibHbj6niBnKlJgyPCQdaHgrktdILazAZFt8KVqTo
         d6giDaSNUOGVSKU2EUPxg7o4oHWdG1eW+Zxsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712063228; x=1712668028;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hk0fQ1srfRdftCJn1xJrJIrSlKNwT0boWj5vxTQM+WQ=;
        b=MfkrKmL0KB1Z0+1XKQYxJWon3W64gZovDENfxUUSgxi1zB7DuWloCRYQ6q5uu7u17d
         54JXiAPafUS22l5rnP5qIEcf0GdyXoVMQJykzNh3gpVMtVlFx1Fqn+CZpVWPNg+AR8xT
         OIeC+EDto7ZaQIOdW1yuz5UruaerTdvBTn1Z6/1273tpKMfvfem6UIjSf8yHXUS5fRAJ
         xejJcA/OBQv+GVc7WCvjJzLZK7nV2zqzFk8c3PTT0GmGlAb8YigaxKSX6myki7z8v0bF
         BdhzfuR/rJQKNm2v0/iMdPEqJRadniyh6WvfX8AgfKAcVdbNW5RZ9A+UUvtbmGE+6oR8
         KZAw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUGO+Mq2T4Fl8NrL7w0Rhld4b09PErOyvVOorqAUPetzzSxI/ExKkmNUoY+7LiLykD6ci+ghOiDjGIITtTKteyLwtQRJ1XS/Guh
X-Gm-Message-State: AOJu0YwReLHc0OJzX4Yq2sTvYlCA/MuSKCOCe0yP9hI/E90oZTjXfC5S
	UXqiG/4g2JBX5p63D8XpXyf9GRzojB/Lnb9bcMLUZCwxx8c4eufPfX72AIuWNzk=
X-Google-Smtp-Source: AGHT+IF30sRReD/YKUSQtzU8KEkLMPdnLlnjZmjpTzZFywd/uoRKkfN2N89hBQikcN8lHM4c6q75LQ==
X-Received: by 2002:a17:90b:33ce:b0:2a0:569f:fa92 with SMTP id lk14-20020a17090b33ce00b002a0569ffa92mr17946259pjb.0.1712063228377;
        Tue, 02 Apr 2024 06:07:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:d805:b0:2a0:8523:bb1e with SMTP id
 a5-20020a17090ad80500b002a08523bb1els3414097pjv.1.-pod-prod-00-us-canary;
 Tue, 02 Apr 2024 06:07:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWqFvNn55HrhWd1UVjI2wZKdhy+ysoJMAiHhAT8jKIokRLRM+kVvHbnPq4ID+EYMvO/YKLZL1GkVwNJP1xDzZI0nL9huzX8CbHBNrDZgtbo/qzdVNY=
X-Received: by 2002:a05:6a20:3c91:b0:1a3:a64e:6050 with SMTP id b17-20020a056a203c9100b001a3a64e6050mr18985920pzj.30.1712063226624;
        Tue, 02 Apr 2024 06:07:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712063226; cv=none;
        d=google.com; s=arc-20160816;
        b=IyQOS6aQTKtqaVTYUtm5butOPfEIjY8olZdKAW0SkKSJp/abzapuNoHUJ1MHTlJMYX
         tWeULjgKzeOhw6ADgDg/4BrN2mQXtGuuoWqcFdCIgtZHKZyDCpebIvLiFDddKj3ou5kI
         V2y6WYPOIe6yV4uVZxHFCLHUQzMGzTghqWGZZwqDf9GFoMxs++QMrj9OGuHayNx01LyC
         rZ+HhPdsfxTMqiyUkMp0jR1+KM2oQo9oaXLtQMv7Js19nXgB3UOk/Go14v7dzStnP8Ec
         7rI/DRfGWhEpLk9ZT5UJdmAxmwB5v8gTvSU2wFoZGtv81MosS0cfZZjQD4vkNngfScpq
         OfuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=b4mNhGxzA9LjEehWNVRQAxLvg0/AqdN3hCnsH/xgLFY=;
        fh=q8hCIvNb5vCUXXKMpVAwbkkPDpj7PtrvAVG6ascHy78=;
        b=Qxcakenr+Y2rReJ8XF8JMMhFveAGUtHXlNPblFRXOhM3sskNe54avlneKAzkHywusV
         Qi12Rr55KRHWSdAAdXkIpZf3tUXJ5/+R+buNdAhxZM9DCyDQJtPSED187he+J34X9BHy
         tttEQdGjyQTnq4vjix1Bxz9mEWrTNQ3qKhgIb+vCzwhEDN/tw14iOO+5tbGToB6peIlF
         nVV5HjCO2ELP+EXO3dPJEu6SkKR0K7gQEt5wwpyuP6pPbgnMEmwGrqR51pbuufxB9wUv
         1hFnzUwKYJIcwlnpRqViyQM59J6f66riU0mgSVX03wgfxo3nL8TwvsZ321iihnyB1tqZ
         eblw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KWKR7Ayw;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by mx.google.com with ESMTPS id o25-20020a635a19000000b005dcc036c679si8915723pgb.677.2024.04.02.06.07.06
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 06:07:06 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [2001:4bb8:199:60a5:c70:4a89:bc61:2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrdqj-0000000BFIy-3GLA;
	Tue, 02 Apr 2024 13:06:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH 01/23] block: add a helper to cancel atomic
 queue limit updates
Date: Tue,  2 Apr 2024 15:06:23 +0200
Message-Id: <20240402130645.653507-2-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402130645.653507-1-hch@lst.de>
References: <20240402130645.653507-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=KWKR7Ayw;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+db5ae43edc5588e6f7b7+7527+infradead.org+hch@bombadil.srs.infradead.org
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

Drivers might have to perform complex actions to determine queue limits,
and those might fail.  Add a helper to cancel a queue limit update
that can be called in those cases.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/blkdev.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index c3e8f7cf96be9e..ded7f66dc4b964 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -892,6 +892,19 @@ int queue_limits_commit_update(struct request_queue *q,
 		struct queue_limits *lim);
 int queue_limits_set(struct request_queue *q, struct queue_limits *lim);
 
+/**
+ * queue_limits_cancel_update - cancel an atomic update of queue limits
+ * @q:		queue to update
+ *
+ * This functions cancels an atomic update of the queue limits started by
+ * queue_limits_start_update() and should be used when an error occurs after
+ * starting update.
+ */
+static inline void queue_limits_cancel_update(struct request_queue *q)
+{
+	mutex_unlock(&q->limits_lock);
+}
+
 /*
  * Access functions for manipulating queue properties
  */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240402130645.653507-2-hch%40lst.de.
