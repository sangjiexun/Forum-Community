package com.domain;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "t_topic")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Topic extends BaseDomain {
    /*
        精华帖子
     */
    public static final int DIGEST_TOPIC=1;
    /*
        普通帖子
     */
    public static final int NOT_DIGEST_TOPIC=0;


    @Id
    @Column(name = "topic_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int topicId;
    @Column(name = "topic_title")
    private String topicTitle;
    @Column(name = "board_id")
    private int boardId;
    @Column(name = "create_time")
    private String createTime;
    @Column(name = "last_post")
    private Date lastPost;
    @Column(name = "topic_views")
    private int views;
    @Column(name = "topic_replies")
    private int replies;
    @Column(name = "digset")
    private int digest=NOT_DIGEST_TOPIC;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Transient//标示不在数据库表的列中
    private MainPost mainPost=new MainPost();

    public int getTopicId() {
        return topicId;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public String getTopicTitle() {
        return topicTitle;
    }

    public void setTopicTitle(String topicTitle) {
        this.topicTitle = topicTitle;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Date getLastPost() {
        return lastPost;
    }

    public void setLastPost(Date lastPost) {
        this.lastPost = lastPost;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public int getReplies() {
        return replies;
    }

    public void setReplies(int replies) {
        this.replies = replies;
    }

    public int getDigest() {
        return digest;
    }

    public void setDigest(int digest) {
        this.digest = digest;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getBoardId() {
        return boardId;
    }

    public void setBoardId(int boardId) {
        this.boardId = boardId;
    }
}
