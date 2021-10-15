Return-Path: <usb-storage+bncBDGIV3UHVAGBB56SU2FQMGQEVOWUF3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D09042F7EB
	for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 18:16:56 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id k5-20020a7bc3050000b02901e081f69d80sf803761wmj.8
        for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 09:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634314616; cv=pass;
        d=google.com; s=arc-20160816;
        b=gQwiTu/bYnFgAiojS/q/Ig8DBVMT9WFdfzkXcRv/8VI096RHPxT9eTn4Hvztmy4rX1
         5IrEYG/L/uWwjDBlf6B5miB1tNss6JbVZMUTa3Kfwqj5DUmA61EQFtF/7GOGLd5XIdzF
         fr2lGfe4u54YmoSFVxg7EDWrbVxtFNUKsp4Vl1ZHkkS6bUdE3QaJp6V/oMqUZlgA0EUg
         fESJDVAt5ELZsZeJ0zGj/u6jSQRuoTqgINtslAS4ZBh7Q/3FTEL3ra4RFdj2L4Kiu8pL
         euxbc5B57eIDbGjWbU0vNt8VKTm++1fKybFZlLw8Q3Tnes9E+XBc5tr0104ttfd2HR24
         /Dtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JdxoBEgKQwg+/XqRBqPqQ8rxNZYod25FgLs1W96/Bhw=;
        b=UBmlbTNhD7fY/lTDYt5t5d/3Ywa2O198BOD3Yv1g6ga6dc9QnZ+SRkmZqwjI6kfO85
         lj+7P6e17j4ntoEEfmMlEDqTtayFuWkM+/HeBxqnYRhKwr6rBKN5ov9ZiX/elqdjJV29
         NXxKHuWIf7/BcJnAlu714PS/iUPiBU4ragE/63PkL5hsA/rf3mBm71sPB571b3pQC6l9
         8AX4aEMAcLJ0A1hcJPtB7DfZ+eqWdgMGB4YTcC+wy09WFoKrSLZXlUyQlnkrEartHFXJ
         M1kzyyjLLFPgwl+KEq9LaPWj4kYqxuhuPnZWlL0AmVi/4LaL2IU/SP7Kj/VuCbQXbEof
         h0AA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=kVqjNhvN;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=TsfTdm4e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JdxoBEgKQwg+/XqRBqPqQ8rxNZYod25FgLs1W96/Bhw=;
        b=eseoxQjXr1SDxOmfsSt2FWkVSDgxyq+sekicR5k5JQ64t68wE4wAFEma9RnyZuJgiQ
         QwSq9EAA1CNHx/nMxmZHqWXe3Slkuc9q1dA8p9ITEGN9wSiChiE3X3Rx6DUy7cPsmj3i
         NRIrjr9qdUOaSXM0sp9mrQN99DmOGBFoZNOYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JdxoBEgKQwg+/XqRBqPqQ8rxNZYod25FgLs1W96/Bhw=;
        b=KaRrpDdRwXHl/sNqf7EI/66IiItqO5cq0XA/j07GxVrAE9RJzNCUVtMrsUq3wkCyZU
         bqQEChnxTsRv7UfKDgw0TBj2O7LVG9OVis7ZB2H79qTmsxTZlWqwf4zvkMuiWmCoZYyj
         6GIQO9wrw+bnBQtm1I4b68jvsydT0Xv0kXn2bgAPbT6XHlrzzluwT4ocPXtQ1Iqd6MkL
         xJfqx/qbBJ8GnyTouXWoSuB0AQE6tfERktW5MpyICh/cVn3i/8hgDUjwUxJFcR6NIhhm
         ps4sOCQcmTHaAKbodxHwEzwJ19z6vlEG8VF7JihMheF77s3z8qC7Dgr2Nn8f9IT8LpYD
         3b8g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530fI7TRKQhmzvPaanQrhEa2Hgwm4GVDBVcRHkEQxzbpe9w3pwy2
	rZV3LM7FQJbyv/8XBwSdjtc5Yw==
X-Google-Smtp-Source: ABdhPJxnSg3dcAlG2PAXyD2OfMjGqiSu+bop5Q1i+QVVqkCRNd7Z8CorBIdo2rWMAEtI0Z0Kraqh8w==
X-Received: by 2002:adf:aa96:: with SMTP id h22mr15574771wrc.405.1634314615965;
        Fri, 15 Oct 2021 09:16:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:8b92:: with SMTP id o18ls167875wra.0.gmail; Fri, 15 Oct
 2021 09:16:55 -0700 (PDT)
X-Received: by 2002:a5d:6d8f:: with SMTP id l15mr15649447wrs.350.1634314615002;
        Fri, 15 Oct 2021 09:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634314614; cv=none;
        d=google.com; s=arc-20160816;
        b=BFVEo1Bt4KKHRuJ5c1KGNdVw+CLgzE4WIeHlae5F4MTlRw/meFraa0ahxce9pBnN+r
         NX7F4GsKwtyPKvupOcizAgZ1Yt6uqGVwsXL6A02aSadb1spOOwW6HUn4ffMdrAqje4zf
         WeRZm3ooTpC4Ts5P4mX/l+FSce3kf7UNPw4mO5pDAYYlBnF8xkzKBmiLL+kV6baMACcZ
         1y1ceMqfi/wJxiiEUz2AmnKzX+agNT2gaqMaA8FYCnSx/vI7mgHtdqp+TRY/rTFWPQz0
         kIoH1RIBqfjoqIIbFQ4Wikw/mdIbeLouJyRLjvbDexVj02CpqpM7nrgji038UbVA7oYT
         rZtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:dkim-signature:date;
        bh=oqu1oJeEHUxhy202sz9OoMP/FwVFN/ikHYyAlVt7IQc=;
        b=oh5MRurfDZlbZ5KcSdnRLI+5TYeEY8mYhBlbbRWfWzgp9r5YDOH0gRcAEc2u6zQK6o
         hEcoUxMNkFvt7gx0gSne8jShpBmXMA7oWJQi5WYCftQW1iEayHAhoNjDxGZttzXue8Lf
         tRA5wlhkpsrOnuQKQ8gor5PMFKLn1Xs84OSvwsNUJV5jDIhxB7QEL8uXaOvIeBU+Elkp
         +UU0Cv/AtJuBkcjt5t7HdRmD7n3aC9Uq6EMMJpBDfgMIDqc0j31lm/7DoyOe7+8qKg4S
         PpIyykjNEM6ZqUCwj2Hnq8X4oROj/RIGqbqTgzAWuHjgk+d4ERgCu+xdILAPIoQMaZN7
         /haw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=kVqjNhvN;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=TsfTdm4e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by mx.google.com with ESMTPS id n2si21025200wme.179.2021.10.15.09.16.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 09:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Date: Fri, 15 Oct 2021 18:16:53 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Christoph Hellwig <hch@infradead.org>
Cc: linux-block@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, Jens Axboe <axboe@kernel.dk>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] Re: [RFC PATCH 3/3] scsi, usb: storage: Complete the
 blk-request directly.
Message-ID: <20211015161653.muq37x6mkeru6lxc@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-4-bigeasy@linutronix.de>
 <YWmmn4MpTSGHRVOU@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YWmmn4MpTSGHRVOU@infradead.org>
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=kVqjNhvN;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=TsfTdm4e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On 2021-10-15 09:04:47 [-0700], Christoph Hellwig wrote:
> Bart has been working on removing the ->scsi_done indirection, so this
> will need to find a way to interact with that

Okay. So I just wait until it is there. Is this v5.15/16 material?

Sebastian

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211015161653.muq37x6mkeru6lxc%40linutronix.de.
